<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reporte de Tareas</title>
    <!-- Cargar Chart.js desde CDN para gráficos -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <!-- Bootstrap CSS para diseño y estilo -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <!-- Navbar de navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <!-- Enlace a la página del dashboard -->
        <a class="navbar-brand" href="dashboard.jsp">Gestión de Tareas</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <!-- Enlace al perfil del usuario -->
                <li class="nav-item">
                    <a class="nav-link" href="perfil.jsp">Perfil</a>
                </li>
                <!-- Enlace para crear una nueva tarea -->
                <li class="nav-item">
                    <a class="nav-link" href="crearTarea.jsp">Crear Tarea</a>
                </li>
                <!-- Enlace para ver las tareas -->
                <li class="nav-item">
                    <a class="nav-link" href="verTareas.jsp">Ver Tareas</a>
                </li>
                <!-- Enlace para cerrar sesión -->
                <li class="nav-item">
                    <a class="nav-link" href="logout">Cerrar Sesión</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Contenedor principal para el reporte de tareas -->
    <div class="container mt-5">
        <h2>Reporte de Tareas</h2>
        <!-- Canvas para mostrar el gráfico de tareas -->
        <canvas id="tareasChart" class="mt-4"></canvas>
    </div>

    <!-- Script para configurar y renderizar el gráfico -->
    <script>
        // Obtener los datos de tareas desde el backend
        const pendientes = <%= request.getAttribute("pendientes") %>;
        const enProgreso = <%= request.getAttribute("enProgreso") %>;
        const completadas = <%= request.getAttribute("completadas") %>;

        // Configurar el gráfico usando Chart.js
        const ctx = document.getElementById('tareasChart').getContext('2d');
        const tareasChart = new Chart(ctx, {
            type: 'pie', // Tipo de gráfico
            data: {
                labels: ['Pendiente', 'En Progreso', 'Completada'], // Etiquetas para cada segmento
                datasets: [{
                    data: [pendientes, enProgreso, completadas], // Datos del gráfico
                    backgroundColor: ['#FF6384', '#36A2EB', '#4BC0C0'] // Colores para cada segmento
                }]
            },
            options: {
                responsive: true // Hacer el gráfico responsive
            }
        });
    </script>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3 mt-5">
        <p>&copy; 2024 Gestión de Tareas</p>
    </footer>

    <!-- Bootstrap JS y dependencias -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
