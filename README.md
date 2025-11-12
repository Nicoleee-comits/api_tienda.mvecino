# api_tienda.mvecino
API para el sistema web de control de inventario y ventas

# Unidad Educativa Bernabé de Larraul – Fe y Alegría  
## Proyecto Integrador MyCamp 2025  
### “Tienda Mi Vecino”

---

### Equipo de Desarrollo

| Rol | Nombre |
|-----|---------|
| Desarrolladora Backend | Nicole Montenegro |
| Desarrolladora Frontend | Liceth |
| Desarrolladora Frontend | Belinda Sarmiento |
| Encargado de Base de Datos | Maik |
| Scrum Master | Yireth Calle |

---

## Descripción General del Proyecto

El proyecto **“Tienda Mi Vecino”** tiene como propósito diseñar e implementar una aplicación web completa para la gestión de una tienda de abarrotes.  
El sistema permite **registrar, consultar y administrar productos, usuarios y ventas**, de manera rápida y organizada, combinando tres componentes principales:

1. **Frontend:** desarrollado en Angular, encargado de la interfaz gráfica y la interacción con el usuario.  
2. **Backend:** desarrollado en Node.js con Express, encargado de la lógica del sistema y la comunicación con la base de datos.  
3. **Base de datos:** implementada en PostgreSQL, donde se almacenan de forma segura todos los datos relacionados con el negocio.

El trabajo se desarrolló bajo la metodología **Scrum**, con reuniones semanales, definición de roles y seguimiento de tareas para asegurar una correcta integración entre las distintas partes del sistema.

---

## Objetivos del Proyecto

- Desarrollar una aplicación web funcional y modular para la gestión de ventas en una tienda.  
- Integrar tecnologías de frontend, backend y base de datos en un mismo entorno de trabajo.  
- Aplicar metodologías ágiles de trabajo colaborativo (Scrum).  
- Diseñar una arquitectura escalable, mantenible y segura.  
- Fortalecer las habilidades de desarrollo individual y en equipo.

---

## Tecnologías Utilizadas

| Componente | Tecnología |
|-------------|-------------|
| Lenguaje principal | JavaScript |
| Entorno de ejecución | Node.js |
| Framework backend | Express.js |
| ORM / Conector BD | Sequelize |
| Base de datos | PostgreSQL |
| Framework frontend | Angular |
| Control de versiones | Git y GitHub |
| Dependencias adicionales | dotenv, pg, pg-hstore, nodemon |

---

## Funcionalidades Generales

- Registro y autenticación de usuarios.  
- Gestión de productos (creación, edición, eliminación y consulta).  
- Registro y consulta de ventas con su detalle correspondiente.  
- Conexión entre la interfaz (frontend) y la base de datos a través del API REST.  
- Manejo seguro de información mediante variables de entorno (.env).  
- Respaldo completo de la base de datos mediante un archivo `.sql`.  

---

## Estructura General del Proyecto

Tienda_Mi_Vecino/
│
├── frontend/ → Aplicación desarrollada en Angular
│ ├── src/
│ │ ├── app/
│ │ ├── assets/
│ │ └── environments/
│ ├── angular.json
│ └── package.json
│
├── backend/ → API REST desarrollada en Node.js y Express
│ ├── src/
│ │ ├── controllers/ → Lógica de negocio (CRUD)
│ │ ├── routes/ → Rutas y endpoints
│ │ ├── models/ → Modelos y relaciones (Sequelize)
│ │ └── app.js / index.js → Servidor principal
│ ├── config/ → Configuración de Sequelize
│ ├── backups/ → Copia de seguridad de la base de datos
│ ├── .env → Variables de entorno
│ ├── package.json → Dependencias del backend
│ └── README.md → Documentación técnica
│
├── database/ → Scripts SQL y respaldo general
│ └── backup_tienda.sql
│
└── README.md → Documentación general del proyecto

yaml
Copiar

---

## Instrucciones de Instalación y Ejecución

### Requisitos Previos
- Node.js instalado (versión 18 o superior).  
- PostgreSQL instalado y configurado.  
- Angular CLI instalado globalmente.  
- Acceso al archivo `backup_tienda.sql`.

### Pasos para ejecutar el proyecto completo

1. Clonar el repositorio desde GitHub:
   ```bash
   git clone https://github.com/Nicoleee-comits/api_tienda.mvecino.git
Entrar al directorio del backend:

bash
Copiar código
cd backend
npm install
Configurar el archivo .env con los datos de conexión a la base de datos:

bash
Copiar código
DATABASE_URL=postgres://postgres:tu_contraseña@localhost:5432/gestion_usuarios_db
PORT=3000
Restaurar la base de datos:

bash
Copiar código
psql -U postgres -d gestion_usuarios_db -f database/backup_tienda.sql
Ejecutar el servidor backend:

bash
Copiar código
npm run dev
En otra terminal, iniciar el frontend:

bash
Copiar código
cd frontend
npm install
ng serve
Acceder al sistema desde el navegador:

arduino
Copiar código
http://localhost:4200
Roles y Responsabilidades
Nicole Montenegro (Backend Developer): desarrollo de la API REST con Node.js, Express y PostgreSQL. Configuración de modelos, controladores, rutas y conexión con la base de datos.

Liceth (Frontend Developer): diseño de la interfaz de usuario, integración de formularios y consumo de los endpoints del backend.

Belinda Sarmiento (Frontend Developer): estructura de componentes en Angular, diseño responsivo y comunicación con la API.

Maik (Database Developer): diseño del modelo relacional, creación de tablas, normalización y respaldo de la base de datos en PostgreSQL.

Yireth Calle (Scrum Master): planificación y organización del equipo, gestión de tareas y supervisión del cumplimiento de los sprints.

Conclusión
El proyecto “Tienda Mi Vecino” representa un ejemplo integral de desarrollo web, donde se logró combinar efectivamente las tres capas fundamentales: frontend, backend y base de datos.
A través del trabajo en equipo y el uso de metodologías ágiles, se construyó una aplicación funcional, modular y escalable, que cumple con los principios de la ingeniería de software moderna.