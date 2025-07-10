// Variables globales
let currentUser = null
let currentExam = null
let examQuestions = []
let currentQuestionIndex = 0
const answers = {}
let timeRemaining = 7200 // 2 horas en segundos
let timerInterval = null
let examStartTime = null
const bootstrap = window.bootstrap // Declare the bootstrap variable

// Inicialización
document.addEventListener("DOMContentLoaded", () => {
  // Verificar autenticación
  const userData = sessionStorage.getItem("currentUser")
  const userRole = sessionStorage.getItem("userRole")

  if (!userData || userRole !== "estudiante") {
    window.location.href = "index.html"
    return
  }

  currentUser = JSON.parse(userData)

  // Obtener ID del examen de la URL
  const urlParams = new URLSearchParams(window.location.search)
  const examId = urlParams.get("examId")

  if (!examId) {
    showAlert("ID de examen no válido", "danger")
    setTimeout(() => {
      window.location.href = "student-dashboard.html"
    }, 2000)
    return
  }

  // Configurar prevención de trampas
  setupCheatPrevention()

  // Cargar examen
  loadExam(examId)
})

async function loadExam(examId) {
  try {
    // Cargar información del examen
    const examResponse = await fetch(`/api/examenes/${examId}`)
    currentExam = await examResponse.json()

    if (currentExam.estado !== "Pendiente") {
      showAlert("Este examen ya no está disponible", "warning")
      setTimeout(() => {
        window.location.href = "student-dashboard.html"
      }, 2000)
      return
    }

    // Cargar preguntas del examen
    const questionsResponse = await fetch(`/api/pregunta-examen/examen/${examId}`)
    const examQuestionIds = await questionsResponse.json()

    // Cargar detalles de cada pregunta
    examQuestions = []
    for (const questionId of examQuestionIds) {
      const questionResponse = await fetch(`/api/preguntas/${questionId.idPregunta}`)
      const question = await questionResponse.json()

      // Cargar opciones si es necesario
      if (question.tipoPregunta === "VF" || question.tipoPregunta === "SELECCION") {
        const optionsResponse = await fetch(`/api/opciones-respuesta/pregunta/${question.idPregunta}`)
        question.opciones = await optionsResponse.json()
      }

      examQuestions.push(question)
    }

    // Mezclar preguntas
    examQuestions = shuffleArray(examQuestions)

    // Inicializar interfaz
    initializeExamInterface()

    // Iniciar timer
    examStartTime = new Date()
    startTimer()

    // Entrar en modo pantalla completa
    enterFullscreen()
  } catch (error) {
    console.error("Error cargando examen:", error)
    showAlert("Error al cargar el examen", "danger")
  }
}

function initializeExamInterface() {
  // Configurar información del examen
  document.getElementById("examTitle").textContent = `Examen - ${currentExam.idExamen}`
  document.getElementById("studentInfo").textContent = `${currentUser.nombre} ${currentUser.apellido}`
  document.getElementById("totalQuestions").textContent = examQuestions.length

  // Generar navegación de preguntas
  generateQuestionNavigation()

  // Mostrar primera pregunta
  showQuestion(0)

  // Inicializar respuestas
  examQuestions.forEach((question, index) => {
    answers[question.idPregunta] = null
  })

  updateProgress()
}

function generateQuestionNavigation() {
  const navigation = document.getElementById("questionNavigation")
  navigation.innerHTML = ""

  examQuestions.forEach((question, index) => {
    const btn = document.createElement("button")
    btn.className = "question-nav-btn"
    btn.textContent = index + 1
    btn.onclick = () => showQuestion(index)
    btn.id = `nav-btn-${index}`
    navigation.appendChild(btn)
  })
}

function showQuestion(index) {
  if (index < 0 || index >= examQuestions.length) return

  currentQuestionIndex = index
  const question = examQuestions[index]

  // Actualizar información de pregunta actual
  document.getElementById("currentQuestionNum").textContent = index + 1

  // Generar HTML de la pregunta
  const questionHtml = `
        <div class="question-card card">
            <div class="card-body">
                <div class="d-flex align-items-center mb-3">
                    <div class="question-number me-3">${index + 1}</div>
                    <div>
                        <h6 class="mb-1">Pregunta ${index + 1}</h6>
                        <small class="text-muted">Tipo: ${getQuestionTypeText(question.tipoPregunta)} | Puntaje: ${question.puntajeMaximo} pts</small>
                    </div>
                </div>
                <div class="question-content">
                    <p class="fs-5 mb-4">${question.enunciado}</p>
                    ${generateAnswerOptions(question)}
                </div>
            </div>
        </div>
    `

  document.getElementById("questionsContainer").innerHTML = questionHtml

  // Actualizar navegación
  updateQuestionNavigation()

  // Restaurar respuesta si existe
  restoreAnswer(question)
}

function generateAnswerOptions(question) {
  const currentAnswer = answers[question.idPregunta]

  switch (question.tipoPregunta) {
    case "VF":
      return `
                <div class="options-container">
                    <div class="option-item ${currentAnswer === "Verdadero" ? "selected" : ""}" onclick="selectOption('${question.idPregunta}', 'Verdadero')">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="question_${question.idPregunta}" value="Verdadero" ${currentAnswer === "Verdadero" ? "checked" : ""}>
                            <label class="form-check-label">
                                <i class="fas fa-check-circle text-success me-2"></i>Verdadero
                            </label>
                        </div>
                    </div>
                    <div class="option-item ${currentAnswer === "Falso" ? "selected" : ""}" onclick="selectOption('${question.idPregunta}', 'Falso')">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="question_${question.idPregunta}" value="Falso" ${currentAnswer === "Falso" ? "checked" : ""}>
                            <label class="form-check-label">
                                <i class="fas fa-times-circle text-danger me-2"></i>Falso
                            </label>
                        </div>
                    </div>
                </div>
            `

    case "SELECCION":
      return `
                <div class="options-container">
                    ${question.opciones
                      .map(
                        (option) => `
                        <div class="option-item ${currentAnswer === option.textoOpcion ? "selected" : ""}" onclick="selectOption('${question.idPregunta}', '${option.textoOpcion}')">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="question_${question.idPregunta}" value="${option.textoOpcion}" ${currentAnswer === option.textoOpcion ? "checked" : ""}>
                                <label class="form-check-label">
                                    ${option.textoOpcion}
                                </label>
                            </div>
                        </div>
                    `,
                      )
                      .join("")}
                </div>
            `

    case "RELLENAR":
      return `
                <div class="mb-3">
                    <textarea class="form-control" rows="4" placeholder="Escribe tu respuesta aquí..." 
                              onchange="selectOption('${question.idPregunta}', this.value)">${currentAnswer || ""}</textarea>
                </div>
            `

    default:
      return '<p class="text-muted">Tipo de pregunta no reconocido</p>'
  }
}

function selectOption(questionId, answer) {
  answers[questionId] = answer
  updateProgress()
  updateQuestionNavigation()
}

function restoreAnswer(question) {
  const answer = answers[question.idPregunta]
  if (!answer) return

  if (question.tipoPregunta === "RELLENAR") {
    const textarea = document.querySelector("textarea")
    if (textarea) textarea.value = answer
  }
}

function getQuestionTypeText(type) {
  switch (type) {
    case "VF":
      return "Verdadero/Falso"
    case "SELECCION":
      return "Selección Múltiple"
    case "RELLENAR":
      return "Respuesta Abierta"
    default:
      return type
  }
}

function updateQuestionNavigation() {
  examQuestions.forEach((question, index) => {
    const btn = document.getElementById(`nav-btn-${index}`)
    if (btn) {
      btn.classList.remove("current", "answered")

      if (index === currentQuestionIndex) {
        btn.classList.add("current")
      }

      if (answers[question.idPregunta] !== null && answers[question.idPregunta] !== "") {
        btn.classList.add("answered")
      }
    }
  })
}

function updateProgress() {
  const answeredQuestions = Object.values(answers).filter((answer) => answer !== null && answer !== "").length
  const totalQuestions = examQuestions.length
  const percentage = (answeredQuestions / totalQuestions) * 100

  document.getElementById("progressBar").style.width = `${percentage}%`
  document.getElementById("answeredCount").textContent = answeredQuestions
  document.getElementById("pendingCount").textContent = totalQuestions - answeredQuestions
}

function nextQuestion() {
  if (currentQuestionIndex < examQuestions.length - 1) {
    showQuestion(currentQuestionIndex + 1)
  }
}

function previousQuestion() {
  if (currentQuestionIndex > 0) {
    showQuestion(currentQuestionIndex - 1)
  }
}

function startTimer() {
  timerInterval = setInterval(() => {
    timeRemaining--
    updateTimerDisplay()

    if (timeRemaining <= 0) {
      clearInterval(timerInterval)
      autoSubmitExam()
    }
  }, 1000)
}

function updateTimerDisplay() {
  const hours = Math.floor(timeRemaining / 3600)
  const minutes = Math.floor((timeRemaining % 3600) / 60)
  const seconds = timeRemaining % 60

  const timeString = `${hours.toString().padStart(2, "0")}:${minutes.toString().padStart(2, "0")}:${seconds.toString().padStart(2, "0")}`

  const timerElement = document.getElementById("timer")
  timerElement.textContent = timeString

  // Cambiar color según tiempo restante
  timerElement.classList.remove("warning", "danger")
  if (timeRemaining <= 300) {
    // 5 minutos
    timerElement.classList.add("danger")
  } else if (timeRemaining <= 900) {
    // 15 minutos
    timerElement.classList.add("warning")
  }
}

function showSubmitConfirmation() {
  const answeredQuestions = Object.values(answers).filter((answer) => answer !== null && answer !== "").length
  const totalQuestions = examQuestions.length

  const summaryHtml = `
        <div class="row text-center">
            <div class="col-4">
                <h4 class="text-success">${answeredQuestions}</h4>
                <small>Respondidas</small>
            </div>
            <div class="col-4">
                <h4 class="text-warning">${totalQuestions - answeredQuestions}</h4>
                <small>Sin responder</small>
            </div>
            <div class="col-4">
                <h4 class="text-primary">${totalQuestions}</h4>
                <small>Total</small>
            </div>
        </div>
    `

  document.getElementById("submitSummary").innerHTML = summaryHtml
  new bootstrap.Modal(document.getElementById("submitModal")).show()
}

async function submitExam() {
  try {
    // Cerrar modal
  bootstrap.Modal.getInstance(document.getElementById("submitModal")).hide()

    // Mostrar loading
    showAlert("Enviando examen...", "info")

    // Guardar respuestas
    for (const [questionId, answer] of Object.entries(answers)) {
      if (answer !== null && answer !== "") {
        const responseData = {
          idRespuestaEstudiante: `RESP${Date.now()}${Math.random().toString(36).substr(2, 4)}`.substr(0, 8),
          idExamen: currentExam.idExamen,
          idPregunta: questionId,
          respuesta: answer,
          correcta: false, // Se evaluará en el backend
          puntajeObtenido: 0, // Se calculará en el backend
        }

        await fetch("/api/respuestas-estudiante", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(responseData),
        })
      }
    }

    // Actualizar estado del examen
    const examUpdateData = {
      ...currentExam,
      estado: "Terminado",
    }

    await fetch(`/api/examenes/${currentExam.idExamen}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(examUpdateData),
    })

    // Limpiar timer
    if (timerInterval) {
      clearInterval(timerInterval)
    }

    // Salir de pantalla completa
    exitFullscreen()

    showAlert("Examen enviado exitosamente", "success")

    // Redirigir al dashboard
    setTimeout(() => {
      window.location.href = "student-dashboard.html"
    }, 2000)
  } catch (error) {
    console.error("Error enviando examen:", error)
    showAlert("Error al enviar el examen", "danger")
  }
}

function autoSubmitExam() {
  showAlert("Tiempo agotado. Enviando examen automáticamente...", "warning")
  setTimeout(submitExam, 2000)
}

// Funciones de prevención de trampas
function setupCheatPrevention() {
  // Deshabilitar clic derecho
  document.addEventListener("contextmenu", (e) => e.preventDefault())

  // Deshabilitar teclas de desarrollador
  document.addEventListener("keydown", (e) => {
    if (
      e.key === "F12" ||
      (e.ctrlKey && e.shiftKey && e.key === "I") ||
      (e.ctrlKey && e.shiftKey && e.key === "C") ||
      (e.ctrlKey && e.key === "u")
    ) {
      e.preventDefault()
      showAlert("Acción no permitida durante el examen", "warning")
    }
  })

  // Detectar cambio de pestaña/ventana
  document.addEventListener("visibilitychange", () => {
    if (document.hidden) {
      showAlert("¡Atención! No cambies de pestaña durante el examen", "warning")
    }
  })

  // Detectar salida de pantalla completa
  document.addEventListener("fullscreenchange", () => {
    if (!document.fullscreenElement) {
      document.getElementById("fullscreenOverlay").style.display = "flex"
    }
  })
}

function enterFullscreen() {
  if (document.documentElement.requestFullscreen) {
    document.documentElement.requestFullscreen()
  }
}

function exitFullscreen() {
  if (document.exitFullscreen) {
    document.exitFullscreen()
  }
}

function returnToExam() {
  document.getElementById("fullscreenOverlay").style.display = "none"
  enterFullscreen()
}

function shuffleArray(array) {
  const shuffled = [...array]
  for (let i = shuffled.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
  }
  return shuffled
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

// Prevenir salida accidental
window.addEventListener("beforeunload", (e) => {
  if (currentExam && currentExam.estado === "Pendiente") {
    e.preventDefault()
    e.returnValue = ""
  }
})
