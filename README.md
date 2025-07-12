# 🧠 SmartEval - Sistema Inteligente de Evaluación Virtual
Repositorio del proyecto final de la asignatura Diseño de Base de Datos - UNMSM (2025-I)
Facultad de Ingeniería de Sistemas e Informática
Equipo: Lirili SQL

## 📌 Descripción
SmartEval es una solución de base de datos empresarial orientada a la automatización de evaluaciones virtuales personalizadas para instituciones educativas. Fue desarrollada para el Centro Educativo Internacional EduFuture, con el fin de mejorar el proceso de evaluación mediante la generación de exámenes únicos por estudiante, calificación automática y retroalimentación inmediata.

Este sistema está construido en MySQL utilizando procedimientos almacenados (PL/SQL), triggers, y un diseño normalizado y escalable.

## 🧩 Características Principales
Banco de preguntas categorizado por curso, tipo y dificultad.

Plantillas configurables para la generación de exámenes.

Generación automática y aleatoria de exámenes únicos.

Calificación automatizada (selección, V/F) y retroalimentación inmediata.

Validaciones y reglas de negocio integradas mediante CHECK y TRIGGERS.

Scripts para carga masiva de datos de prueba.

## 📂 Estructura del Repositorio
```
📁 /scripts
   ├── create_schema.sql          # Creación de la base de datos y usuario
   ├── create_tables.sql          # Script para creación de tablas
   ├── create_fks.sql             # Llaves foráneas
   ├── create_checks_triggers.sql # Restricciones y triggers
   ├── insert_data.sql            # Datos de prueba
   └── procedures.sql             # Procedimientos almacenados

📁 /docs
   ├── Informe_Técnico.pdf
   ├── Informe_Ejecutivo.pdf
   └── Modelos_ER_BPMN.pdf (opcional)

📁 /app (opcional)
   ├── backend/                   # Spring Boot
   └── frontend/                  # HTML + JS

📄 README.md
```
## ⚙️ Tecnologías Utilizadas
- MySQL 9.3

- PL/SQL

- Bizagi Modeler – Diagramas BPMN

- Lucidchart – Modelado Entidad-Relación

- Spring Boot (Java) – Backend (opcional)

- HTML + CSS + JS – Frontend (opcional)

- Trello – Gestión ágil de tareas

- GitHub – Control de versiones

## 🎯 Objetivos del Proyecto
- Automatizar el proceso de generación y calificación de exámenes.

- Reducir la carga operativa docente mediante herramientas inteligentes.

- Asegurar la personalización de cada evaluación por estudiante.

- Brindar retroalimentación inmediata que fomente el aprendizaje activo.

## 🧠 Reglas de Negocio (Resumen)
- Las preguntas se clasifican por dificultad: Fácil, Intermedio y Difícil.

- Cada plantilla define la proporción de preguntas por nivel.

- Los exámenes se generan de forma única por estudiante.

- Las preguntas objetivas se califican automáticamente.

- Se penaliza la falta de respuesta con puntaje cero.

- Se genera retroalimentación detallada al estudiante.

## 📝 Cómo Ejecutar (Base de Datos)
### Crear el usuario administrador:
```
CREATE USER 'admin123'@'localhost' IDENTIFIED BY 'admin2005';
GRANT ALL PRIVILEGES ON DiseñoDeBaseDeDatos.* TO 'admin123'@'localhost';
FLUSH PRIVILEGES;
```

### Ejecutar en orden los scripts ubicados en /scripts:

- create_schema.sql

- create_tables.sql

- create_fks.sql

- create_checks_triggers.sql

- insert_data.sql

- procedures.sql

## 📈 Resultados Esperados
- Reducción del 80% en tiempo de calificación.

- Mayor control sobre la integridad académica.

- Ahorro en costos operativos.

- Escalabilidad para atender a más de 3,000 estudiantes por ciclo.

## 👨‍💻 Equipo de Desarrollo
- Josué Yamil Durand Galindo – Diseño físico & scripts

- Manuel Távara – Coordinador general

- Yuzo Díaz – Analista de requerimientos

- María Alejandra Carrasco – Modelado conceptual

- Luis Ronquillo – Modelado lógico

- Ana Cristina Rojas – Documentación técnica

## 📎 Documentación
Se encuentra disponible en la carpeta /docs:

## Informe Técnico y Ejecutivo

- Modelado ER y BPMN

- Estimaciones de costos y recomendaciones

## 📬 Contacto
Este proyecto ha sido desarrollado en el marco del curso de Diseño de Base de Datos - UNMSM 2025-I.
Para dudas o colaboración académica, puedes contactarnos mediante GitHub o correo institucional.

