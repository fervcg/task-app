<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Tarea</title>

    <!-- Enlace a los estilos personalizados -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <!-- Encabezado con navegación -->
    <header>
        <h1>Editar Tarea</h1>
        <nav>
            <ul>
                <!-- Enlaces de navegación a otras páginas relevantes -->
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="crearTarea.jsp">Crear Tarea</a></li>
                <li><a href="verTareas.jsp">Ver Tareas</a></li>
                <li><a href="perfil.jsp">Perfil</a></li>
            </ul>
        </nav>
    </header>

    <!-- Contenido principal -->
    <main>
        <!-- Formulario para editar una tarea existente -->
        <form action="editarTareaServlet" method="post">
            <!-- Campo oculto para enviar el ID de la tarea que se está editando -->
            <input type="hidden" name="idTarea" value="${tarea.id}">
            
            <!-- Campo para editar el nombre de la tarea -->
            <label for="nombreTarea">Nombre de la Tarea:</label>
            <input type="text" id="nombreTarea" name="nombreTarea" value="${tarea.nombre}" required>
            
            <!-- Campo para editar la descripción de la tarea -->
            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" required>${tarea.descripcion}</textarea>
            
            <!-- Campo para editar a quién está asignada la tarea -->
            <label for="asignadoA">Asignado a:</label>
            <input type="text" id="asignadoA" name="asignadoA" value="${tarea.asignadoA}" required>
            
            <!-- Campo para editar la fecha de vencimiento de la tarea -->
            <label for="fechaVencimiento">Fecha de Vencimiento:</label>
            <input type="date" id="fechaVencimiento" name="fechaVencimiento" value="${tarea.fechaVencimiento}" required>
            
            <!-- Campo para editar el estado actual de la tarea -->
            <label for="estado">Estado:</label>
            <select id="estado" name="estado">
                <option value="Pendiente" ${tarea.estado == 'Pendiente' ? 'selected' : ''}>Pendiente</option>
                <option value="En Progreso" ${tarea.estado == 'En Progreso' ? 'selected' : ''}>En Progreso</option>
                <option value="Completada" ${tarea.estado == 'Completada' ? 'selected' : ''}>Completada</option>
            </select>
            
            <!-- Botón para enviar el formulario y actualizar la tarea -->
            <button type="submit">Actualizar Tarea</button>
        </form>
    </main>

    <!-- Pie de página -->
    <footer>
        <p>&copy; 2024 Gestión de Tareas</p>
    </footer>
</body>
</html>
