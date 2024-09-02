<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Dashboard - Gesti�n de Tareas</title>

  <!-- Enlace a Bootstrap CSS para el dise�o responsive y los estilos predeterminados -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- Enlace a los estilos personalizados -->
  <link rel="stylesheet" href="css/estilos.css">
</head>
<body>

  <!-- Barra de navegaci�n con enlaces a diferentes secciones -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Gesti�n de Tareas</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContenido" aria-controls="navbarContenido" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarContenido">
      <ul class="navbar-nav ml-auto">
        <!-- Enlace al perfil del usuario -->
        <li class="nav-item">
          <a class="nav-link" href="perfil.html">Perfil</a>
        </li>
        <!-- Enlace a la secci�n de reportes -->
        <li class="nav-item">
          <a class="nav-link" href="reportes.html">Reportes</a>
        </li>
        <!-- Enlace para cerrar sesi�n -->
        <li class="nav-item">
          <a class="nav-link" href="logout">Cerrar Sesi�n</a>
        </li>
      </ul>
    </div>
  </nav>

  <!-- Contenido principal: Lista de Tareas -->
  <div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
      <h2>Lista de Tareas</h2>
      <!-- Bot�n para crear una nueva tarea -->
      <a href="crear-tarea.html" class="btn btn-success">Crear Nueva Tarea</a>
    </div>

    <!-- Tabla que muestra la lista de tareas -->
    <table class="table table-striped">
      <thead class="thead-dark">
        <tr>
          <th>ID</th>
          <th>T�tulo</th>
          <th>Descripci�n</th>
          <th>Estado</th>
          <th>Asignado a</th>
          <th>Fecha de Vencimiento</th>
          <th>Acciones</th>
        </tr>
      </thead>
      <tbody>
        <!-- Las filas de tareas se generar�n din�micamente desde el servidor -->
        <tr>
          <td>1</td>
          <td>Dise�ar la base de datos</td>
          <td>Crear el modelo relacional para la aplicaci�n</td>
          <td><span class="badge badge-warning">En Progreso</span></td>
          <td>Juan P�rez</td>
          <td>2024-09-15</td>
          <td>
            <!-- Bot�n para editar la tarea -->
            <a href="editar-tarea.html?id=1" class="btn btn-primary btn-sm">Editar</a>
            <!-- Bot�n para eliminar la tarea -->
            <button class="btn btn-danger btn-sm">Eliminar</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Pie de p�gina -->
  <footer class="bg-dark text-white text-center py-3 mt-5">
    <p>&copy; 2024 Gesti�n de Tareas</p>
  </footer>

  <!-- Enlaces a Bootstrap JS y sus dependencias -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
