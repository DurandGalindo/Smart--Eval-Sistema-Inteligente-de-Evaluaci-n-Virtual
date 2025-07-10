// Variables globales
let currentUser = null
let currentStep = 1
let templates = []
let students = []
let questions = []
let courses = []
let selectedTemplate = null
const selectedStudents = []
let generatedQuestions = []

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
  document.getElementById("teacherName").textContent = `${currentUser.nombre} ${currentUser.apellido}`

  // Cargar datos iniciales
  loadInitialData()
})

async function loadInitialData() {
  try {
    // Cargar plantillas
    const templatesResponse = await fetch("/api/plantillas")
    templates = await templatesResponse.json()

    // Cargar estudiantes
    const studentsResponse = await fetch("/api/estudiantes")
    students = await studentsResponse.json()

    // Cargar preguntas
    const questionsResponse = await fetch("/api/preguntas")
    questions = await questionsResponse.json()

    // Cargar cursos
    const coursesResponse = await fetch("/api/cursos")
    courses = await coursesResponse.json()

    // Mostrar plantillas
    displayTemplates()
  } catch (error) {
    console.error("Error cargando datos:", error)
    showAlert("Error al cargar datos iniciales", "danger")
  }
}

async function displayTemplates() {
  const templatesList = document.getElementById("templatesList")
  templatesList.innerHTML = ""

  if (templates.length === 0) {
    templatesList.innerHTML = `
            <div class="col-12">
                <div class="text-center py-5">
                    <i class="fas fa-clipboard-list fa-3x text-muted mb-3"></i>
                    <h5 class="text-muted">No hay plantillas disponibles</h5>
                    <p class="text-muted">Crea una plantilla primero en el dashboard</p>
                </div>
            </div>
        `
    return
  }

  for (const template of templates) {
    try {
      // Obtener detalles de la plantilla
      const detailsResponse = await fetch(`/api/detalle-plantillas/plantilla/${template.idPlantilla}`)
      const details = await detailsResponse.json()

      let detailsHtml = ""
      if (details.length > 0) {
        const detail = details[0]
        const course = courses.find((c) => c.idCurso === detail.idCurso)
        const courseName = course ? course.nombre : "Sin curso"
        const totalQuestions = detail.cantidadFaciles + detail.cantidadIntermedias + detail.cantidadDificiles

        detailsHtml = `
                    <small class="text-muted d-block">Curso: ${courseName}</small>
                    <small class="text-muted d-block">Total preguntas: ${totalQuestions}</small>
                    <small class="text-muted">Fáciles: ${detail.cantidadFaciles} | Intermedias: ${detail.cantidadIntermedias} | Difíciles: ${detail.cantidadDificiles}</small>
                `
      }

      const templateCard = `
                <div class="col-md-6 col-lg-4 mb-3">
                    <div class="card h-100 template-card" onclick="selectTemplate('${template.idPlantilla}')">
                        <div class="card-body">
                            <h6 class="card-title">${template.idPlantilla}</h6>
                            <p class="card-text">${template.descripcionPlantilla}</p>
                            ${detailsHtml}
                        </div>
                    </div>
                </div>
            `
      templatesList.innerHTML += templateCard
    } catch (error) {
      console.error("Error cargando detalles de plantilla:", error)
    }
  }
}

function selectTemplate(templateId) {
  // Remover selección anterior
  document.querySelectorAll(".template-card").forEach((card) => {
    card.classList.remove("border-primary", "bg-light")
  })

  // Seleccionar nueva plantilla
  event.currentTarget.classList.add("border-primary", "bg-light")
  selectedTemplate = templates.find((t) => t.idPlantilla === templateId)

  // Habilitar botón siguiente
  document.getElementById("nextStep").disabled = false
}

function displayStudents() {
  const studentsList = document.getElementById("studentsList")
  studentsList.innerHTML = ""

  students.forEach((student) => {
    const isSelected = selectedStudents.includes(student.idEstudiante)
    const studentCard = `
            <div class="col-md-6 col-lg-4 mb-3">
                <div class="card student-card ${isSelected ? "selected" : ""}" onclick="toggleStudent('${student.idEstudiante}')">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start">
                            <div>
                                <h6 class="card-title">${student.nombre} ${student.apellido}</h6>
                                <small class="text-muted">${student.correo}</small>
                                <br><small class="text-muted">ID: ${student.idEstudiante}</small>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" ${isSelected ? "checked" : ""} onchange="event.stopPropagation()">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        `
    studentsList.innerHTML += studentCard
  })

  updateSelectedCount()
}

function toggleStudent(studentId) {
  const index = selectedStudents.indexOf(studentId)
  if (index > -1) {
    selectedStudents.splice(index, 1)
  } else {
    selectedStudents.push(studentId)
  }

  displayStudents()
}

function filterStudents() {
  const searchText = document.getElementById("studentSearch").value.toLowerCase()
  const studentCards = document.querySelectorAll(".student-card")

  studentCards.forEach((card) => {
    const text = card.textContent.toLowerCase()
    card.closest(".col-md-6").style.display = text.includes(searchText) ? "block" : "none"
  })
}

function updateSelectedCount() {
  document.getElementById("selectedCount").textContent = selectedStudents.length
}

async function generateExamSummary() {
  if (!selectedTemplate) return

  try {
    // Obtener detalles de la plantilla
    const detailsResponse = await fetch(`/api/detalle-plantillas/plantilla/${selectedTemplate.idPlantilla}`)
    const details = await detailsResponse.json()

    if (details.length === 0) return

    const detail = details[0]
    const course = courses.find((c) => c.idCurso === detail.idCurso)
    const courseName = course ? course.nombre : "Sin curso"

    // Generar preguntas para el examen
    await generateQuestionsForExam(detail)

    const selectedStudentNames = selectedStudents
      .map((id) => {
        const student = students.find((s) => s.idEstudiante === id)
        return student ? `${student.nombre} ${student.apellido}` : id
      })
      .join(", ")

    const summaryHtml = `
            <div class="row">
                <div class="col-md-6">
                    <h6>Información del Examen</h6>
                    <p><strong>ID:</strong> ${document.getElementById("examId").value}</p>
                    <p><strong>Fecha:</strong> ${document.getElementById("examDate").value}</p>
                    <p><strong>Plantilla:</strong> ${selectedTemplate.descripcionPlantilla}</p>
                    <p><strong>Curso:</strong> ${courseName}</p>
                </div>
                <div class="col-md-6">
                    <h6>Distribución de Preguntas</h6>
                    <p><strong>Fáciles:</strong> ${detail.cantidadFaciles}</p>
                    <p><strong>Intermedias:</strong> ${detail.cantidadIntermedias}</p>
                    <p><strong>Difíciles:</strong> ${detail.cantidadDificiles}</p>
                    <p><strong>Total:</strong> ${generatedQuestions.length} preguntas</p>
                </div>
            </div>
            <div class="mt-3">
                <h6>Estudiantes Seleccionados (${selectedStudents.length})</h6>
                <p class="text-muted">${selectedStudentNames}</p>
            </div>
        `

    document.getElementById("examSummary").innerHTML = summaryHtml

    // Mostrar preview de preguntas
    displayQuestionsPreview()
  } catch (error) {
    console.error("Error generando resumen:", error)
    showAlert("Error al generar el resumen del examen", "danger")
  }
}

async function generateQuestionsForExam(templateDetail) {
  try {
    // Filtrar preguntas por curso
    const courseQuestions = questions.filter((q) => q.idCurso === templateDetail.idCurso)

    // Obtener dificultades
    const difficultiesResponse = await fetch("/api/dificultades")
    const difficulties = await difficultiesResponse.json()

    // Separar preguntas por dificultad
    const easyQuestions = []
    const mediumQuestions = []
    const hardQuestions = []

    courseQuestions.forEach((question) => {
      const difficulty = difficulties.find((d) => d.idDificultad === question.idDificultad)
      if (difficulty) {
        const diffName = difficulty.descripcionDificultad.toLowerCase()
        if (diffName.includes("fácil") || diffName.includes("facil")) {
          easyQuestions.push(question)
        } else if (diffName.includes("intermedio") || diffName.includes("intermedia")) {
          mediumQuestions.push(question)
        } else if (diffName.includes("difícil") || diffName.includes("dificil")) {
          hardQuestions.push(question)
        }
      }
    })

    // Seleccionar preguntas aleatoriamente
    generatedQuestions = []

    // Seleccionar preguntas fáciles
    const selectedEasy = getRandomQuestions(easyQuestions, templateDetail.cantidadFaciles)
    generatedQuestions.push(...selectedEasy)

    // Seleccionar preguntas intermedias
    const selectedMedium = getRandomQuestions(mediumQuestions, templateDetail.cantidadIntermedias)
    generatedQuestions.push(...selectedMedium)

    // Seleccionar preguntas difíciles
    const selectedHard = getRandomQuestions(hardQuestions, templateDetail.cantidadDificiles)
    generatedQuestions.push(...selectedHard)

    // Mezclar preguntas
    generatedQuestions = shuffleArray(generatedQuestions)
  } catch (error) {
    console.error("Error generando preguntas:", error)
    throw error
  }
}

function getRandomQuestions(questionArray, count) {
  const shuffled = shuffleArray([...questionArray])
  return shuffled.slice(0, Math.min(count, shuffled.length))
}

function shuffleArray(array) {
  const shuffled = [...array]
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
  }
  return shuffled
}

function displayQuestionsPreview() {
  const questionsPreview = document.getElementById("questionsPreview")

  if (generatedQuestions.length === 0) {
    questionsPreview.innerHTML = `
            <div class="alert alert-warning">
                <i class="fas fa-exclamation-triangle me-2"></i>
                No se pudieron generar suficientes preguntas con la plantilla seleccionada.
            </div>
        `
    return
  }

  let previewHtml = `<h6>Vista Previa de Preguntas (${generatedQuestions.length})</h6>`

  generatedQuestions.forEach((question, index) => {
    previewHtml += `
            <div class="question-preview">
                <strong>Pregunta ${index + 1}:</strong> ${question.enunciado}
                <br><small class="text-muted">Tipo: ${question.tipoPregunta} | Puntaje: ${question.puntajeMaximo} pts</small>
            </div>
        `
  })

  questionsPreview.innerHTML = previewHtml
}

// Navegación entre pasos
function nextStep() {
  if (currentStep === 1) {
    if (!selectedTemplate) {
      showAlert("Selecciona una plantilla para continuar", "warning")
      return
    }

    // Llenar información de la plantilla seleccionada
    document.getElementById("selectedTemplate").value = selectedTemplate.descripcionPlantilla

    currentStep = 2
    showStep(2)
  } else if (currentStep === 2) {
    const form = document.getElementById("examDetailsForm")
    if (!form.checkValidity()) {
      form.reportValidity()
      return
    }

    displayStudents()
    currentStep = 3
    showStep(3)
  } else if (currentStep === 3) {
    if (selectedStudents.length === 0) {
      showAlert("Selecciona al menos un estudiante", "warning")
      return
    }

    generateExamSummary()
    currentStep = 4
    showStep(4)
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
  for (let i = 1; i <= 4; i++) {
    document.getElementById(`examStep${i}`).style.display = "none"
    document.getElementById(`step${i}`).classList.remove("active", "completed")
  }

  // Mostrar paso actual
  document.getElementById(`examStep${step}`).style.display = "block"
  document.getElementById(`step${step}`).classList.add("active")

  // Marcar pasos completados
  for (let i = 1; i < step; i++) {
    document.getElementById(`step${i}`).classList.add("completed")
  }

  // Controlar botones
  document.getElementById("prevStep").style.display = step > 1 ? "inline-block" : "none"
  document.getElementById("nextStep").style.display = step < 4 ? "inline-block" : "none"
  document.getElementById("generateExam").style.display = step === 4 ? "inline-block" : "none"
}

async function generateExam() {
  if (generatedQuestions.length === 0) {
    showAlert("No hay preguntas disponibles para generar el examen", "danger")
    return
  }

  try {
    const examId = document.getElementById("examId").value
    const examDate = document.getElementById("examDate").value

    // Crear exámenes para cada estudiante
    for (const studentId of selectedStudents) {
      const examData = {
        idExamen: examId,
        idEstudiante: studentId,
        idPlantilla: selectedTemplate.idPlantilla,
        idDocente: currentUser.idDocente,
        fecha: examDate,
        puntajeFinal: 0,
        estado: "Pendiente",
      }

      // Crear examen
      const examResponse = await fetch("/api/examenes", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(examData),
      })

      if (examResponse.ok) {
        // Asociar preguntas al examen
        for (const question of generatedQuestions) {
          const questionExamData = {
            idExamen: examData.idExamen,
            idPregunta: question.idPregunta,
          }

          await fetch("/api/pregunta-examen", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(questionExamData),
          })
        }
      }
    }

    showAlert("Exámenes generados exitosamente", "success")

    // Redirigir al dashboard después de un momento
    setTimeout(() => {
      window.location.href = "teacher-dashboard.html"
    }, 2000)
  } catch (error) {
    console.error("Error generando exámenes:", error)
    showAlert("Error al generar los exámenes", "danger")
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
