<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Tareas</title>

    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

    <!-- Encabezado principal -->
    <header>
        <h1>Lista de Tareas</h1>
    </header>

    <!-- Navegación principal -->
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a></li>
            <li><a href="${pageContext.request.contextPath}/crearTarea.jsp">Crear Nueva Tarea</a></li>
        </ul>
    </nav>

    <!-- Contenido principal -->
    <main>
        <table>
            <thead>
                <tr>
                    <!-- Cabecera de la tabla -->
                    <th>ID</th>
                    <th>Título</th>
                    <th>Descripción</th>
                    <th>Estado</th>
                    <th>Usuario Asignado</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iteración sobre la lista de tareas para generar filas dinámicas -->
                <c:forEach var="tarea" items="${tareas}">
                    <tr>
                        <td>${tarea.id}</td>
                        <td>${tarea.titulo}</td>
                        <td>${tarea.descripcion}</td>
                        <td>${tarea.estado}</td>
                        <td>${tarea.usuarioAsignado}</td>
                        <td>
                            <!-- Enlaces para editar o eliminar la tarea -->
                            <a href="${pageContext.request.contextPath}/actualizarTarea.jsp?id=${tarea.id}">Editar</a> |
                            <a href="${pageContext.request.contextPath}/eliminarTareaServlet?id=${tarea.id}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>

    <!-- Pie de página -->
    <footer>
        <p>&copy; 2024 Aplicación de Gestión de Tareas</p>
    </footer>

</body>
</html>
