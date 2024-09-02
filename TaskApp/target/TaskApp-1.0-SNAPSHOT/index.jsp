<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Tareas</title>

    <!-- Bootstrap CSS para un diseño responsivo y moderno -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

    <!-- Encabezado principal -->
    <header>
        <h1>Gestión de Tareas</h1>
    </header>
    
    <!-- Navegación principal -->
    <nav>
        <ul>
            <!-- Enlaces para crear y ver tareas -->
            <li><a href="${pageContext.request.contextPath}/crearTarea.jsp">Crear Nueva Tarea</a></li>
            <li><a href="${pageContext.request.contextPath}/listarTareas.jsp">Ver Tareas</a></li>
        </ul>
    </nav>

    <!-- Contenido principal -->
    <main>
        <h2>Bienvenido a la Aplicación de Gestión de Tareas</h2>
        <p>Utiliza los enlaces de arriba para gestionar tus tareas.</p>
    </main>
    
    <!-- Pie de página -->
    <footer>
        <p>&copy; Desarrollado por Fernanda Campos Guerrero (2024)</p>
    </footer>

</body>
</html>
