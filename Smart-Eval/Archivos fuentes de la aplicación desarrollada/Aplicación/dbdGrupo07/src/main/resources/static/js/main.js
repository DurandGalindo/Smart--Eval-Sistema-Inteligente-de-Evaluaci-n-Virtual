// Variables globales
let courses = []
let students = []
let teachers = []
let templates = []
let difficulties = []
const bootstrap = window.bootstrap // Declare the bootstrap variable

// Cargar datos iniciales
document.addEventListener("DOMContentLoaded", () => {
  loadInitialData()
})

async function loadInitialData() {
  try {
    // Cargar cursos
    const coursesResponse = await fetch("/api/cursos")
    courses = await coursesResponse.json()

    // Cargar estudiantes
    const studentsResponse = await fetch("/api/estudiantes")
    students = await studentsResponse.json()

    // Cargar docentes
    const teachersResponse = await fetch("/api/docentes")
    teachers = await teachersResponse.json()

    // Cargar plantillas
    const templatesResponse = await fetch("/api/plantillas")
    templates = await templatesResponse.json()

    // Cargar dificultades
    const difficultiesResponse = await fetch("/api/dificultades")
    difficulties = await difficultiesResponse.json()

    populateSelects()
  } catch (error) {
    console.error("Error cargando datos iniciales:", error)
    showAlert("Error al cargar datos iniciales", "danger")
  }
}

function populateSelects() {
  // Poblar select de cursos
  const courseSelect = document.getElementById("templateCourse")
  courseSelect.innerHTML = '<option value="">Selecciona un curso</option>'
  courses.forEach((course) => {
    courseSelect.innerHTML += `<option value="${course.idCurso}">${course.nombre}</option>`
  })

  // Poblar select de estudiantes
  const studentSelect = document.getElementById("examStudent")
  studentSelect.innerHTML = '<option value="">Selecciona un estudiante</option>'
  students.forEach((student) => {
    studentSelect.innerHTML += `<option value="${student.idEstudiante}">${student.nombre} ${student.apellido}</option>`
  })

  // Poblar select de docentes
  const teacherSelect = document.getElementById("examTeacher")
  teacherSelect.innerHTML = '<option value="">Selecciona un docente</option>'
  teachers.forEach((teacher) => {
    teacherSelect.innerHTML += `<option value="${teacher.idDocente}">${teacher.nombre} ${teacher.apellido}</option>`
  })

  // Poblar select de plantillas
  const templateSelect = document.getElementById("examTemplate")
  templateSelect.innerHTML = '<option value="">Selecciona una plantilla</option>'
  templates.forEach((template) => {
    templateSelect.innerHTML += `<option value="${template.idPlantilla}">${template.descripcionPlantilla}</option>`
  })
}

// Funciones para mostrar modales
function showCreateTemplate() {
  const modal = new bootstrap.Modal(document.getElementById("createTemplateModal"))
  modal.show()
}

function showGenerateExam() {
  const modal = new bootstrap.Modal(document.getElementById("generateExamModal"))
  modal.show()
}

function showManageQuestions() {
  window.location.href = "questions.html"
}

function showResults() {
  window.location.href = "results.html"
}

// Crear plantilla
async function createTemplate() {
  const templateData = {
    idPlantilla: document.getElementById("templateId").value,
    descripcionPlantilla: document.getElementById("templateDescription").value,
  }

  const detailData = {
    idDetallePlantilla: "DPLT" + Math.random().toString().substr(2, 4),
    idPlantilla: templateData.idPlantilla,
    idCurso: document.getElementById("templateCourse").value,
    cantidadFaciles: Number.parseInt(document.getElementById("easyQuestions").value),
    cantidadIntermedias: Number.parseInt(document.getElementById("mediumQuestions").value),
    cantidadDificiles: Number.parseInt(document.getElementById("hardQuestions").value),
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
        bootstrap.Modal.getInstance(document.getElementById("createTemplateModal")).hide()
        document.getElementById("templateForm").reset()
        loadInitialData() // Recargar datos
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

// Generar examen
async function generateExam() {
  const examData = {
    idExamen: document.getElementById("examId").value,
    idEstudiante: document.getElementById("examStudent").value,
    idPlantilla: document.getElementById("examTemplate").value,
    idDocente: document.getElementById("examTeacher").value,
    fecha: document.getElementById("examDate").value,
    puntajeFinal: 0,
    estado: "Pendiente",
  }

  try {
    const response = await fetch("/api/examenes", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(examData),
    })

    if (response.ok) {
      showAlert("Examen generado exitosamente", "success")
      bootstrap.Modal.getInstance(document.getElementById("generateExamModal")).hide()
      document.getElementById("examForm").reset()
    } else {
      showAlert("Error al generar el examen", "danger")
    }
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error de conexión", "danger")
  }
}

// Cargar exámenes del estudiante
async function loadStudentExams() {
  const studentId = document.getElementById("studentId").value

  if (!studentId) {
    showAlert("Por favor ingresa tu ID de estudiante", "warning")
    return
  }

  try {
    const response = await fetch(`/api/examenes/estudiante/${studentId}`)
    const exams = await response.json()

    const examsList = document.getElementById("examsList")
    examsList.innerHTML = ""

    if (exams.length === 0) {
      examsList.innerHTML = '<p class="text-muted">No tienes exámenes asignados.</p>'
    } else {
      exams.forEach((exam) => {
        const examCard = `
                    <div class="card mb-2">
                        <div class="card-body">
                            <h6 class="card-title">Examen: ${exam.idExamen}</h6>
                            <p class="card-text">
                                <small class="text-muted">Fecha: ${exam.fecha}</small><br>
                                <span class="badge bg-${getStatusColor(exam.estado)}">${exam.estado}</span>
                            </p>
                            ${
                              exam.estado === "Pendiente"
                                ? `<button class="btn btn-sm btn-primary" onclick="takeExam('${exam.idExamen}')">
                                    <i class="fas fa-play me-1"></i>Iniciar Examen
                                </button>`
                                : `<span class="text-success">Puntaje: ${exam.puntajeFinal}/20</span>`
                            }
                        </div>
                    </div>
                `
        examsList.innerHTML += examCard
      })
    }

    document.getElementById("studentExams").style.display = "block"
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error al cargar exámenes", "danger")
  }
}

function getStatusColor(status) {
  switch (status) {
    case "Pendiente":
      return "warning"
    case "Terminado":
      return "info"
    case "Calificado":
      return "success"
    default:
      return "secondary"
  }
}

function takeExam(examId) {
  window.location.href = `exam.html?id=${examId}`
}

// Función para mostrar alertas
function showAlert(message, type) {
  const alertDiv = document.createElement("div")
  alertDiv.className = `alert alert-${type} alert-dismissible fade show`
  alertDiv.innerHTML = `
        ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `

  document.body.insertBefore(alertDiv, document.body.firstChild)

  setTimeout(() => {
    alertDiv.remove()
  }, 5000)
}
