// Variables globales
let currentUser = null
let questions = []
let courses = []
let difficulties = []
let currentQuestion = null
let optionCounter = 0
const bootstrap = window.bootstrap

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
    // Cargar cursos
    const coursesResponse = await fetch("/api/cursos")
    courses = await coursesResponse.json()

    // Cargar dificultades
    const difficultiesResponse = await fetch("/api/dificultades")
    difficulties = await difficultiesResponse.json()

    // Cargar preguntas
    const questionsResponse = await fetch("/api/preguntas")
    questions = await questionsResponse.json()

    // Poblar filtros y selects
    populateFilters()
    populateSelects()

    // Mostrar preguntas
    displayQuestions(questions)
  } catch (error) {
    console.error("Error cargando datos:", error)
    showAlert("Error al cargar datos iniciales", "danger")
  }
}

function populateFilters() {
  // Poblar filtro de cursos
  const filterCourse = document.getElementById("filterCourse")
  filterCourse.innerHTML = '<option value="">Todos los cursos</option>'
  courses.forEach((course) => {
    filterCourse.innerHTML += `<option value="${course.idCurso}">${course.nombre}</option>`
  })

  // Poblar filtro de dificultades
  const filterDifficulty = document.getElementById("filterDifficulty")
  filterDifficulty.innerHTML = '<option value="">Todas las dificultades</option>'
  difficulties.forEach((difficulty) => {
    filterDifficulty.innerHTML += `<option value="${difficulty.idDificultad}">${difficulty.descripcionDificultad}</option>`
  })
}

function populateSelects() {
  // Poblar select de cursos en modal
  const questionCourse = document.getElementById("questionCourse")
  questionCourse.innerHTML = '<option value="">Selecciona un curso</option>'
  courses.forEach((course) => {
    questionCourse.innerHTML += `<option value="${course.idCurso}">${course.nombre}</option>`
  })

  // Poblar select de dificultades en modal
  const questionDifficulty = document.getElementById("questionDifficulty")
  questionDifficulty.innerHTML = '<option value="">Selecciona dificultad</option>'
  difficulties.forEach((difficulty) => {
    questionDifficulty.innerHTML += `<option value="${difficulty.idDificultad}">${difficulty.descripcionDificultad}</option>`
  })
}

function displayQuestions(questionsToShow) {
  const questionsList = document.getElementById("questionsList")
  questionsList.innerHTML = ""

  if (questionsToShow.length === 0) {
    questionsList.innerHTML = `
      <div class="col-12">
        <div class="text-center py-5">
          <i class="fas fa-question-circle fa-3x text-muted mb-3"></i>
          <h5 class="text-muted">No hay preguntas disponibles</h5>
          <p class="text-muted">Crea tu primera pregunta para comenzar</p>
        </div>
      </div>
    `
    return
  }

  questionsToShow.forEach((question) => {
    const courseName = courses.find((c) => c.idCurso === question.idCurso)?.nombre || "Sin curso"
    const difficultyName =
      difficulties.find((d) => d.idDificultad === question.idDificultad)?.descripcionDificultad || "Sin dificultad"

    const difficultyClass = getDifficultyClass(difficultyName)
    const typeIcon = getTypeIcon(question.tipoPregunta)

    const questionCard = `
      <div class="col-md-6 col-lg-4 mb-3">
        <div class="card question-card h-100">
          <div class="card-body">
            <div class="d-flex justify-content-between align-items-start mb-2">
              <span class="badge ${difficultyClass} difficulty-badge">${difficultyName}</span>
              <div class="dropdown">
                <button class="btn btn-sm btn-outline-secondary" type="button" data-bs-toggle="dropdown">
                  <i class="fas fa-ellipsis-v"></i>
                </button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#" onclick="viewQuestion('${question.idPregunta}')">
                    <i class="fas fa-eye me-2"></i>Ver Detalles
                  </a></li>
                  <li><a class="dropdown-item" href="#" onclick="editQuestion('${question.idPregunta}')">
                    <i class="fas fa-edit me-2"></i>Editar
                  </a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item text-danger" href="#" onclick="deleteQuestion('${question.idPregunta}')">
                    <i class="fas fa-trash me-2"></i>Eliminar
                  </a></li>
                </ul>
              </div>
            </div>
            <h6 class="card-title">
              <i class="${typeIcon} me-2"></i>${question.tipoPregunta}
            </h6>
            <p class="card-text text-truncate" title="${question.enunciado}">
              ${question.enunciado}
            </p>
            <div class="mt-auto">
              <small class="text-muted d-block">Curso: ${courseName}</small>
              <small class="text-muted">Puntaje: ${question.puntajeMaximo} pts</small>
            </div>
          </div>
        </div>
      </div>
    `
    questionsList.innerHTML += questionCard
  })
}

function getDifficultyClass(difficulty) {
  switch (difficulty.toLowerCase()) {
    case "fácil":
    case "facil":
      return "bg-success"
    case "intermedio":
    case "intermedia":
      return "bg-warning"
    case "difícil":
    case "dificil":
      return "bg-danger"
    default:
      return "bg-secondary"
  }
}

function getTypeIcon(type) {
  switch (type) {
    case "VF":
      return "fas fa-check-circle"
    case "SELECCION":
      return "fas fa-list-ul"
    case "RELLENAR":
      return "fas fa-edit"
    default:
      return "fas fa-question"
  }
}

function filterQuestions() {
  const courseFilter = document.getElementById("filterCourse").value
  const difficultyFilter = document.getElementById("filterDifficulty").value
  const typeFilter = document.getElementById("filterType").value
  const searchText = document.getElementById("searchText").value.toLowerCase()

  const filteredQuestions = questions.filter((question) => {
    const matchesCourse = !courseFilter || question.idCurso === courseFilter
    const matchesDifficulty = !difficultyFilter || question.idDificultad === difficultyFilter
    const matchesType = !typeFilter || question.tipoPregunta === typeFilter
    const matchesSearch = !searchText || question.enunciado.toLowerCase().includes(searchText)

    return matchesCourse && matchesDifficulty && matchesType && matchesSearch
  })

  displayQuestions(filteredQuestions)
}

function showCreateQuestion() {
  currentQuestion = null
  document.getElementById("questionModalTitle").textContent = "Nueva Pregunta"
  document.getElementById("questionForm").reset()
  document.getElementById("optionsSection").style.display = "none"
  document.getElementById("optionsList").innerHTML = ""
  optionCounter = 0
  new bootstrap.Modal(document.getElementById("questionModal")).show()
}

function handleTypeChange() {
  const type = document.getElementById("questionType").value
  const optionsSection = document.getElementById("optionsSection")

  if (type === "VF" || type === "SELECCION") {
    optionsSection.style.display = "block"
    document.getElementById("optionsList").innerHTML = ""
    optionCounter = 0

    if (type === "VF") {
      // Agregar opciones predefinidas para V/F
      addOption("Verdadero", false)
      addOption("Falso", false)
    }
  } else {
    optionsSection.style.display = "none"
  }
}

function addOption(text = "", isCorrect = false) {
  optionCounter++
  const optionId = `option_${optionCounter}`

  const optionHtml = `
    <div class="option-item" id="${optionId}">
      <div class="row g-2 align-items-center">
        <div class="col">
          <input type="text" class="form-control" placeholder="Texto de la opción" value="${text}" required>
        </div>
        <div class="col-auto">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="correctOption" ${isCorrect ? "checked" : ""}>
            <label class="form-check-label">Correcta</label>
          </div>
        </div>
        <div class="col-auto">
          <button type="button" class="btn btn-sm btn-outline-danger" onclick="removeOption('${optionId}')">
            <i class="fas fa-trash"></i>
          </button>
        </div>
      </div>
    </div>
  `

  document.getElementById("optionsList").innerHTML += optionHtml
}

function removeOption(optionId) {
  document.getElementById(optionId).remove()
}

async function saveQuestion() {
  const form = document.getElementById("questionForm")
  if (!form.checkValidity()) {
    form.reportValidity()
    return
  }

  const questionData = {
    idPregunta: document.getElementById("questionId").value,
    idCurso: document.getElementById("questionCourse").value,
    idDificultad: document.getElementById("questionDifficulty").value,
    enunciado: document.getElementById("questionText").value,
    tipoPregunta: document.getElementById("questionType").value,
    puntajeMaximo: Number.parseInt(document.getElementById("questionScore").value),
  }

  try {
    // Guardar pregunta
    const method = currentQuestion ? "PUT" : "POST"
    const url = currentQuestion ? `/api/preguntas/${currentQuestion.idPregunta}` : "/api/preguntas"

    const response = await fetch(url, {
      method: method,
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(questionData),
    })

    if (response.ok) {
      // Guardar opciones si es necesario
      if (questionData.tipoPregunta === "VF" || questionData.tipoPregunta === "SELECCION") {
        await saveOptions(questionData.idPregunta)
      }

      showAlert("Pregunta guardada exitosamente", "success")
      bootstrap.Modal.getInstance(document.getElementById("questionModal")).hide()
      loadInitialData()
    } else {
      showAlert("Error al guardar la pregunta", "danger")
    }
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error de conexión", "danger")
  }
}

async function saveOptions(questionId) {
  const optionElements = document.querySelectorAll(".option-item")

  for (let i = 0; i < optionElements.length; i++) {
    const optionElement = optionElements[i]
    const textInput = optionElement.querySelector("input[type='text']")
    const correctRadio = optionElement.querySelector("input[type='radio']")

    const optionData = {
      idOpcionRespuesta: `OPC${Date.now()}${i}`.substr(0, 8),
      idPregunta: questionId,
      textoOpcion: textInput.value,
      esCorrecta: correctRadio.checked,
    }

    await fetch("/api/opciones-respuesta", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(optionData),
    })
  }
}

async function viewQuestion(questionId) {
  try {
    const question = questions.find((q) => q.idPregunta === questionId)
    if (!question) return

    const courseName = courses.find((c) => c.idCurso === question.idCurso)?.nombre || "Sin curso"
    const difficultyName =
      difficulties.find((d) => d.idDificultad === question.idDificultad)?.descripcionDificultad || "Sin dificultad"

    // Cargar opciones si es necesario
    let optionsHtml = ""
    if (question.tipoPregunta === "VF" || question.tipoPregunta === "SELECCION") {
      const optionsResponse = await fetch(`/api/opciones-respuesta/pregunta/${questionId}`)
      const options = await optionsResponse.json()

      optionsHtml = `
        <h6 class="mt-3">Opciones de Respuesta:</h6>
        <div class="list-group">
          ${options
            .map(
              (option) => `
            <div class="list-group-item ${option.esCorrecta ? "list-group-item-success" : ""}">
              ${option.textoOpcion}
              ${option.esCorrecta ? '<i class="fas fa-check text-success float-end"></i>' : ""}
            </div>
          `,
            )
            .join("")}
        </div>
      `
    }

    const detailsHtml = `
      <div class="row">
        <div class="col-md-6">
          <p><strong>ID:</strong> ${question.idPregunta}</p>
          <p><strong>Curso:</strong> ${courseName}</p>
          <p><strong>Dificultad:</strong> ${difficultyName}</p>
        </div>
        <div class="col-md-6">
          <p><strong>Tipo:</strong> ${question.tipoPregunta}</p>
          <p><strong>Puntaje:</strong> ${question.puntajeMaximo} pts</p>
        </div>
      </div>
      <div class="mt-3">
        <h6>Enunciado:</h6>
        <p class="border p-3 rounded">${question.enunciado}</p>
      </div>
      ${optionsHtml}
    `

    document.getElementById("questionDetails").innerHTML = detailsHtml
    currentQuestion = question
    new bootstrap.Modal(document.getElementById("viewQuestionModal")).show()
  } catch (error) {
    console.error("Error:", error)
    showAlert("Error al cargar detalles de la pregunta", "danger")
  }
}

function editCurrentQuestion() {
  bootstrap.Modal.getInstance(document.getElementById("viewQuestionModal")).hide()
  editQuestion(currentQuestion.idPregunta)
}

async function editQuestion(questionId) {
  const question = questions.find((q) => q.idPregunta === questionId)
  if (!question) return

  currentQuestion = question
  document.getElementById("questionModalTitle").textContent = "Editar Pregunta"

  // Llenar formulario
  document.getElementById("questionId").value = question.idPregunta
  document.getElementById("questionCourse").value = question.idCurso
  document.getElementById("questionDifficulty").value = question.idDificultad
  document.getElementById("questionType").value = question.tipoPregunta
  document.getElementById("questionText").value = question.enunciado
  document.getElementById("questionScore").value = question.puntajeMaximo

  // Manejar opciones
  handleTypeChange()

  if (question.tipoPregunta === "VF" || question.tipoPregunta === "SELECCION") {
    try {
      const optionsResponse = await fetch(`/api/opciones-respuesta/pregunta/${questionId}`)
      const options = await optionsResponse.json()

      document.getElementById("optionsList").innerHTML = ""
      optionCounter = 0

      options.forEach((option) => {
        addOption(option.textoOpcion, option.esCorrecta)
      })
    } catch (error) {
      console.error("Error cargando opciones:", error)
    }
  }

  new bootstrap.Modal(document.getElementById("questionModal")).show()
}

async function deleteQuestion(questionId) {
  if (!confirm("¿Estás seguro de eliminar esta pregunta?")) return

  try {
    const response = await fetch(`/api/preguntas/${questionId}`, {
      method: "DELETE",
    })

    if (response.ok) {
      showAlert("Pregunta eliminada exitosamente", "success")
      loadInitialData()
    } else {
      showAlert("Error al eliminar la pregunta", "danger")
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
