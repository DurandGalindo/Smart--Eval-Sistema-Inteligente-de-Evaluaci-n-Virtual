// Variables globales
let currentUser = null
let exams = []
let filteredExams = []
let currentFilter = "all"

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

  // Mostrar información del usuario
  document.getElementById("studentName").textContent = `${currentUser.nombre} ${currentUser.apellido}`
  document.getElementById("welcomeName").textContent = currentUser.nombre

  loadStudentExams()
})

async function loadStudentExams() {
  try {
    const response = await fetch(`/api/examenes/estudiante/${currentUser.idEstudiante}`)
    exams = await response.json()

    updateStatistics()
    updateProgressRing()
    filterExams(currentFilter)
    loadRecentGrades()
  } catch (error) {
    console.error("Error cargando exámenes:", error)
    showAlert("Error al cargar exámenes", "danger")
  }
}

function updateStatistics() {
  const totalExams = exams.length
  const pendingExams = exams.filter((e) => e.estado === "Pendiente").length
  const completedExams = exams.filter((e) => e.estado === "Terminado" || e.estado === "Calificado").length
  const gradedExams = exams.filter((e) => e.estado === "Calificado")
  const averageScore =
    gradedExams.length > 0
      ? Math.round(gradedExams.reduce((sum, exam) => sum + exam.puntajeFinal, 0) / gradedExams.length)
      : 0

  document.getElementById("totalExams").textContent = totalExams
  document.getElementById("pendingExams").textContent = pendingExams
  document.getElementById("completedExams").textContent = completedExams
  document.getElementById("averageScore").textContent = averageScore
}

function updateProgressRing() {
  const totalExams = exams.length
  const completedExams = exams.filter((e) => e.estado === "Terminado" || e.estado === "Calificado").length
  const percentage = totalExams > 0 ? Math.round((completedExams / totalExams) * 100) : 0

  const circle = document.getElementById("progressCircle")
  const circumference = 2 * Math.PI * 52 // r = 52
  const offset = circumference - (percentage / 100) * circumference

  circle.style.strokeDashoffset = offset
  document.getElementById("progressPercentage").textContent = `${percentage}%`
}

function filterExams(filter) {
  currentFilter = filter

  if (filter === "all") {
    filteredExams = [...exams]
  } else {
    filteredExams = exams.filter((exam) => exam.estado === filter)
  }

  displayExams()
}

function displayExams() {
  const examsList = document.getElementById("examsList")

  if (filteredExams.length === 0) {
    examsList.innerHTML = `
      <div class="empty-state">
        <i class="fas fa-clipboard-list"></i>
        <h5>No hay exámenes ${currentFilter === "all" ? "" : "con este estado"}</h5>
        <p class="text-muted">Los exámenes aparecerán aquí cuando sean asignados por tus profesores.</p>
      </div>
    `
    return
  }

  examsList.innerHTML = ""

  filteredExams.forEach((exam) => {
    const examCard = createExamCard(exam)
    examsList.innerHTML += examCard
  })
}

function createExamCard(exam) {
  const statusClass = getStatusClass(exam.estado)
  const statusText = getStatusText(exam.estado)
  const examDate = new Date(exam.fecha).toLocaleDateString("es-ES", {
    year: "numeric",
    month: "long",
    day: "numeric",
  })

  return `
    <div class="exam-card">
      <div class="row align-items-center">
        <div class="col-md-8">
          <div class="d-flex align-items-center mb-2">
            <span class="badge bg-primary me-2">${exam.idExamen}</span>
            <span class="status-badge status-${statusClass}">${statusText}</span>
          </div>
          <h6 class="mb-2">Examen - ${examDate}</h6>
          <p class="text-muted mb-2">
            <i class="fas fa-user-tie me-2"></i>Docente: ${exam.idDocente}
          </p>
          ${
            exam.estado === "Calificado"
              ? `<div class="d-flex align-items-center">
              <i class="fas fa-star text-warning me-2"></i>
              <strong>Calificación: ${exam.puntajeFinal}/20</strong>
              <span class="ms-2 badge ${getGradeBadgeClass(exam.puntajeFinal)}">${getGradeText(exam.puntajeFinal)}</span>
            </div>`
              : ""
          }
        </div>
        <div class="col-md-4 text-end">
          ${
            exam.estado === "Pendiente"
              ? `<button class="btn btn-take-exam" onclick="takeExam('${exam.idExamen}')">
              <i class="fas fa-play me-2"></i>Iniciar Examen
            </button>`
              : exam.estado === "Terminado"
                ? `<button class="btn btn-outline-info" disabled>
              <i class="fas fa-clock me-2"></i>En Revisión
            </button>`
			: `<button class="btn btn-outline-success" onclick="viewResults('${exam.idExamen}')">
			    <i class="fas fa-eye me-2"></i>Ver Resultados
			  </button>`
          }
        </div>
      </div>
    </div>
  `
}

function getStatusClass(status) {
  switch (status) {
    case "Pendiente":
      return "pending"
    case "Terminado":
      return "completed"
    case "Calificado":
      return "graded"
    default:
      return "pending"
  }
}

function getStatusText(status) {
  switch (status) {
    case "Pendiente":
      return "Pendiente"
    case "Terminado":
      return "Terminado"
    case "Calificado":
      return "Calificado"
    default:
      return status
  }
}

function getGradeBadgeClass(score) {
  if (score >= 16) return "bg-success"
  if (score >= 12) return "bg-warning"
  return "bg-danger"
}

function getGradeText(score) {
  if (score >= 16) return "Excelente"
  if (score >= 12) return "Bueno"
  if (score >= 8) return "Regular"
  return "Necesita Mejorar"
}

function loadRecentGrades() {
  const gradedExams = exams
    .filter((e) => e.estado === "Calificado")
    .sort((a, b) => new Date(b.fecha) - new Date(a.fecha))
    .slice(0, 5)

  const recentGrades = document.getElementById("recentGrades")

  if (gradedExams.length === 0) {
    recentGrades.innerHTML = '<p class="text-muted small">No hay calificaciones aún</p>'
    return
  }

  recentGrades.innerHTML = ""
  gradedExams.forEach((exam) => {
    const gradeItem = `
      <div class="d-flex justify-content-between align-items-center mb-2">
        <div>
          <small class="text-muted">${exam.idExamen}</small>
          <br>
          <small>${new Date(exam.fecha).toLocaleDateString()}</small>
        </div>
        <div class="text-end">
          <div class="h6 mb-0">${exam.puntajeFinal}/20</div>
          <small class="badge ${getGradeBadgeClass(exam.puntajeFinal)}">${getGradeText(exam.puntajeFinal)}</small>
        </div>
      </div>
    `
    recentGrades.innerHTML += gradeItem
  })
}

function takeExam(examId) {
  // Confirmar antes de iniciar el examen
  if (confirm("¿Estás listo para iniciar el examen? Una vez iniciado, deberás completarlo.")) {
    window.location.href = `exam-interface.html?examId=${examId}`
  }
}

function viewResults(examId) {
  window.location.href = `exam-results.html?examId=${examId}`
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
