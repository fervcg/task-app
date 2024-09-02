<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Perfil de Usuario</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <!-- Enlace a la página principal del dashboard -->
        <a class="navbar-brand" href="dashboard.html">Gestión de Tareas</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <!-- Enlace a la página de inicio -->
                <li class="nav-item">
                    <a class="nav-link" href="dashboard.html">Inicio</a>
                </li>
                <!-- Enlace para crear una nueva tarea -->
                <li class="nav-item">
                    <a class="nav-link" href="crearTarea.jsp">Crear Tarea</a>
                </li>
                <!-- Enlace para ver las tareas -->
                <li class="nav-item">
                    <a class="nav-link" href="verTareas.jsp">Ver Tareas</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h2>Perfil de Usuario</h2>
        <!-- Formulario para actualizar el perfil del usuario -->
        <form action="actualizarPerfilServlet" method="post">
            <!-- Campo para el nombre de usuario -->
            <div class="form-group">
                <label for="nombreUsuario">Nombre:</label>
                <input type="text" class="form-control" id="nombreUsuario" name="nombreUsuario" value="${usuario.nombre}" required>
            </div>
            <!-- Campo para el email del usuario -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" value="${usuario.email}" required>
            </div>
            <!-- Campo para la contraseña del usuario -->
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <!-- Botón para enviar el formulario -->
            <button type="submit" class="btn btn-primary">Actualizar Perfil</button>
        </form>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <p>&copy; 2024 Gestión de Tareas</p>
    </footer>

    <!-- Bootstrap JS y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
