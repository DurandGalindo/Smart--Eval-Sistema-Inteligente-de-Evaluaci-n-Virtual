// Variables globales
let currentUser = null
let courses = []
let templates = []
let questions = []
let exams = []
let currentStep = 1
const bootstrap = window.bootstrap // Declare the bootstrap variable

// Inicialización
document.addEventListener("DOMContentLoaded", () => {
  // Verificar autenticación
  const userData = sessionStorage.getItem("currentUser")
  const userRole = sessionStorage.getItem("userRole")

  if (!userData || userRole !== "docente") {
    window.location.href = "index.html"
    return
  }

  currentUser = JSON.parse(userData)

  // Mostrar información del usuario
  document.getElementById("teacherName").textContent = `${currentUser.nombre} ${currentUser.apellido}`
  document.getElementById("welcomeName").textContent = currentUser.nombre

  // Cargar datos iniciales
  loadInitialData()

  // Event listeners
  setupEventListeners()
})

async function loadInitialData() {
  try {
    // Cargar cursos
    const coursesResponse = await fetch("/api/cursos")
    courses = await coursesResponse.json()

    // Cargar plantillas
    const templatesResponse = await fetch("/api/plantillas")
    templates = await templatesResponse.json()

    // Cargar preguntas
    const questionsResponse = await fetch("/api/preguntas")
    questions = await questionsResponse.json()

    // Cargar exámenes del docente
    const examsResponse = await fetch(`/api/examenes/docente/${currentUser.idDocente}`)
    exams = await examsResponse.json()

    // Actualizar estadísticas
    updateStatistics()

    // Poblar selects
    populateSelects()
  } catch (error) {
    console.error("Error cargando datos:", error)
    showAlert("Error al cargar datos iniciales", "danger")
  }
}

function updateStatistics() {
  document.getElementById("totalCourses").textContent = courses.length
  document.getElementById("totalTemplates").textContent = templates.length
  document.getElementById("totalQuestions").textContent = questions.length
  document.getElementById("totalExams").textContent = exams.length
}

function populateSelects() {
  // Poblar select de cursos en plantilla
  const courseSelect = document.getElementById("templateCourse")
  courseSelect.innerHTML = '<option value="">Selecciona un curso</option>'
  courses.forEach((course) => {
    courseSelect.innerHTML += `<option value="${course.idCurso}">${course.nombre}</option>`
  })
}

function setupEventListeners() {
  // Form de curso
  document
    .getElementById("courseForm")
    .addEventListener("submit", createCourse)

  // Actualizar total de preguntas en plantilla
  ;["easyQuestions", "mediumQuestions", "hardQuestions"].forEach((id) => {
    document.getElementById(id).addEventListener("input", updateQuestionTotal)
  })
}

// Funciones de navegación
function showManageCourses() {
  loadCoursesList()
  new bootstrap.Modal(document.getElementById("coursesModal")).show()
}

function showCreateTemplate() {
  resetTemplateModal()
  new bootstrap.Modal(document.getElementById("templateModal")).show()
}

function showQuestionBank() {
  window.location.href = "question-bank.html"
}

function showGenerateExam() {
  window.location.href = "generate-exam.html"
}

// Gestión de cursos
async function createCourse(e) {
  e.preventDefault()

  const courseData = {
    idCurso: document.getElementById("courseId").value,
    nombre: document.getElementById("courseName").value,
  }

  try {
    const response = await fetch("/api/cursos", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(courseData),
    })

    if (response.ok) {
      showAlert("Curso creado exitosamente", "success")
      document.getElementById("courseForm").reset()
      loadInitialData()
      loadCoursesList()
    } else {
      showAlert("Error al crear el curso", "danger")
    }
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error de conexión", "danger")
  }
}

async function loadCoursesList() {
  const coursesList = document.getElementById("coursesList")
  coursesList.innerHTML = ""

  if (courses.length === 0) {
    coursesList.innerHTML = '<p class="text-muted">No hay cursos registrados</p>'
    return
  }

  courses.forEach((course) => {
    const courseCard = `
            <div class="card mb-2">
                <div class="card-body py-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${course.nombre}</strong>
                            <br><small class="text-muted">ID: ${course.idCurso}</small>
                        </div>
                        <button class="btn btn-sm btn-outline-danger" onclick="deleteCourse('${course.idCurso}')">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </div>
            </div>
        `
    coursesList.innerHTML += courseCard
  })
}

async function deleteCourse(courseId) {
  if (!confirm("¿Estás seguro de eliminar este curso?")) return

  try {
    const response = await fetch(`/api/cursos/${courseId}`, {
      method: "DELETE",
    })

    if (response.ok) {
      showAlert("Curso eliminado exitosamente", "success")
      loadInitialData()
      loadCoursesList()
    } else {
      showAlert("Error al eliminar el curso", "danger")
    }
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error de conexión", "danger")
  }
}

// Gestión de plantillas - Pasos
function resetTemplateModal() {
  currentStep = 1
  document.getElementById("templateBasicForm").reset()
  ;["easyQuestions", "mediumQuestions", "hardQuestions"].forEach((id) => {
    document.getElementById(id).value = ""
  })
  updateQuestionTotal()
  showStep(1)
}

function nextStep() {
  if (currentStep === 1) {
    // Validar paso 1
    const form = document.getElementById("templateBasicForm")
    if (!form.checkValidity()) {
      form.reportValidity()
      return
    }
    currentStep = 2
    showStep(2)
  } else if (currentStep === 2) {
    // Validar paso 2
    const easy = Number.parseInt(document.getElementById("easyQuestions").value) || 0
    const medium = Number.parseInt(document.getElementById("mediumQuestions").value) || 0
    const hard = Number.parseInt(document.getElementById("hardQuestions").value) || 0

    if (easy + medium + hard === 0) {
      showAlert("Debe especificar al menos una pregunta", "warning")
      return
    }

    currentStep = 3
    generateTemplateSummary()
    showStep(3)
  }
}

function previousStep() {
  if (currentStep > 1) {
    currentStep--
    showStep(currentStep)
  }
}

function showStep(step) {
  // Ocultar todos los pasos
  for (let i = 1; i <= 3; i++) {
    document.getElementById(`templateStep${i}`).style.display = "none"
    document.getElementById(`step${i}`).classList.remove("active", "completed")
  }

  // Mostrar paso actual
  document.getElementById(`templateStep${step}`).style.display = "block"
  document.getElementById(`step${step}`).classList.add("active")

  // Marcar pasos completados
  for (let i = 1; i < step; i++) {
    document.getElementById(`step${i}`).classList.add("completed")
  }

  // Controlar botones
  document.getElementById("prevStep").style.display = step > 1 ? "inline-block" : "none"
  document.getElementById("nextStep").style.display = step < 3 ? "inline-block" : "none"
  document.getElementById("createTemplate").style.display = step === 3 ? "inline-block" : "none"
}

function updateQuestionTotal() {
  const easy = Number.parseInt(document.getElementById("easyQuestions").value) || 0
  const medium = Number.parseInt(document.getElementById("mediumQuestions").value) || 0
  const hard = Number.parseInt(document.getElementById("hardQuestions").value) || 0

  document.getElementById("totalQuestions").textContent = easy + medium + hard
}

function generateTemplateSummary() {
  const templateId = document.getElementById("templateId").value
  const description = document.getElementById("templateDescription").value
  const courseId = document.getElementById("templateCourse").value
  const courseName = courses.find((c) => c.idCurso === courseId)?.nombre || ""
  const easy = Number.parseInt(document.getElementById("easyQuestions").value) || 0
  const medium = Number.parseInt(document.getElementById("mediumQuestions").value) || 0
  const hard = Number.parseInt(document.getElementById("hardQuestions").value) || 0

  const summary = `
        <div class="row">
            <div class="col-md-6">
                <p><strong>ID:</strong> ${templateId}</p>
                <p><strong>Curso:</strong> ${courseName}</p>
                <p><strong>Descripción:</strong> ${description}</p>
            </div>
            <div class="col-md-6">
                <p><strong>Preguntas Fáciles:</strong> ${easy}</p>
                <p><strong>Preguntas Intermedias:</strong> ${medium}</p>
                <p><strong>Preguntas Difíciles:</strong> ${hard}</p>
                <p><strong>Total:</strong> ${easy + medium + hard} preguntas</p>
            </div>
        </div>
    `

  document.getElementById("templateSummary").innerHTML = summary
}

async function createTemplate() {
  const templateData = {
    idPlantilla: document.getElementById("templateId").value,
    descripcionPlantilla: document.getElementById("templateDescription").value,
  }

  const detailData = {
    idDetallePlantilla: "DPLT" + Date.now().toString().substr(-4),
    idPlantilla: templateData.idPlantilla,
    idCurso: document.getElementById("templateCourse").value,
    cantidadFaciles: Number.parseInt(document.getElementById("easyQuestions").value) || 0,
    cantidadIntermedias: Number.parseInt(document.getElementById("mediumQuestions").value) || 0,
    cantidadDificiles: Number.parseInt(document.getElementById("hardQuestions").value) || 0,
  }

  try {
    // Crear plantilla
    const templateResponse = await fetch("/api/plantillas", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(templateData),
    })

    if (templateResponse.ok) {
      // Crear detalle de plantilla
      const detailResponse = await fetch("/api/detalle-plantillas", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(detailData),
      })

      if (detailResponse.ok) {
        showAlert("Plantilla creada exitosamente", "success")
        bootstrap.Modal.getInstance(document.getElementById("templateModal")).hide()
        loadInitialData()
      } else {
        showAlert("Error al crear el detalle de la plantilla", "danger")
      }
    } else {
      showAlert("Error al crear la plantilla", "danger")
    }
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error de conexión", "danger")
  }
}

function logout() {
  sessionStorage.clear()
  window.location.href = "index.html"
}

function showAlert(message, type) {
  const alertDiv = document.createElement("div")
  alertDiv.className = `alert alert-${type} alert-dismissible fade show position-fixed`
  alertDiv.style.top = "20px"
  alertDiv.style.right = "20px"
  alertDiv.style.zIndex = "9999"
  alertDiv.innerHTML = `
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `

  document.body.appendChild(alertDiv)

  setTimeout(() => {
    alertDiv.remove()
  }, 5000)
}
