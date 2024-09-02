<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Actualizar Tarea - Gestión de Tareas</title>
  <!-- Enlaces a las hojas de estilo de Bootstrap y personalizadas -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css">
</head>
<body>
  <!-- Barra de navegación -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/dashboard.jsp">Gestión de Tareas</a>
  </nav>

  <div class="container mt-5">
    <h2>Actualizar Tarea</h2>
    
    <!-- Formulario para actualizar una tarea existente -->
    <form action="${pageContext.request.contextPath}/actualizarTareaServlet" method="POST">
      
      <!-- Campo oculto para el ID de la tarea -->
      <input type="hidden" name="id" value="${tarea.id}">
      
      <!-- Campo para el título de la tarea -->
      <div class="form-group">
        <label for="titulo">Título</label>
        <input type="text" class="form-control" id="titulo" name="titulo" value="${tarea.titulo}" required>
      </div>
      
      <!-- Campo para la descripción de la tarea -->
      <div class="form-group">
        <label for="descripcion">Descripción</label>
        <textarea class="form-control" id="descripcion" name="descripcion" rows="4" required>${tarea.descripcion}</textarea>
      </div>
      
      <!-- Campo para seleccionar el estado de la tarea -->
      <div class="form-group">
        <label for="estado">Estado</label>
        <select class="form-control" id="estado" name="estado" required>
          <option value="pendiente" ${tarea.estado == 'pendiente' ? 'selected' : ''}>Pendiente</option>
          <option value="en_progreso" ${tarea.estado == 'en_progreso' ? 'selected' : ''}>En Progreso</option>
          <option value="completada" ${tarea.estado == 'completada' ? 'selected' : ''}>Completada</option>
        </select>
      </div>
      
      <!-- Campo para seleccionar a quién se asigna la tarea -->
      <div class="form-group">
        <label for="asignadoA">Asignado a</label>
        <select class="form-control" id="asignadoA" name="asignadoA" required>
          <option value="1" ${tarea.asignadoA == 1 ? 'selected' : ''}>Juan Pérez</option>
          <option value="2" ${tarea.asignadoA == 2 ? 'selected' : ''}>María Gómez</option>
          <!-- Nota: Los usuarios deberían cargarse dinámicamente desde la base de datos -->
        </select>
      </div>
      
      <!-- Campo para la fecha de vencimiento de la tarea -->
      <div class="form-group">
        <label for="fechaVencimiento">Fecha de Vencimiento</label>
        <input type="date" class="form-control" id="fechaVencimiento" name="fechaVencimiento" value="${tarea.fechaVencimiento}" required>
      </div>
      
      <!-- Botones para enviar el formulario o cancelar -->
      <button type="submit" class="btn btn-success">Actualizar Tarea</button>
      <a href="${pageContext.request.contextPath}/dashboard.jsp" class="btn btn-secondary">Cancelar</a>
      
    </form>
  </div>

  <!-- Enlaces a las bibliotecas JavaScript de Bootstrap -->
  <script src="${pageContext.request.contextPath}/js/jquery-3.5.1.slim.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</body>
</html>
