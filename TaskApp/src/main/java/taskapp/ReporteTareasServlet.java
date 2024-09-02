package taskapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taskapp.dao.TareaDAO;

/**
 * Servlet para generar un reporte de tareas por estado.
 */
@WebServlet("/reporteTareas")
public class ReporteTareasServlet extends HttpServlet {

    // DAO para realizar operaciones relacionadas con tareas
    private TareaDAO tareaDAO;

    /**
     * Inicializa el servlet y configura el TareaDAO.
     * @throws ServletException Si ocurre un error durante la inicialización.
     */
    @Override
    public void init() throws ServletException {
        tareaDAO = new TareaDAO();
    }

    /**
     * Maneja las solicitudes GET y proporciona los datos necesarios para el reporte de tareas.
     * @param request La solicitud HTTP.
     * @param response La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error al enviar la respuesta.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Contar el número de tareas por estado
        int pendientes = tareaDAO.contarTareasPorEstado("Pendiente");
        int enProgreso = tareaDAO.contarTareasPorEstado("En Progreso");
        int completadas = tareaDAO.contarTareasPorEstado("Completada");

        // Establece los atributos de solicitud para que estén disponibles en la JSP
        request.setAttribute("pendientes", pendientes);
        request.setAttribute("enProgreso", enProgreso);
        request.setAttribute("completadas", completadas);

        // Redirige la solicitud a la página de reportes para mostrar los datos
        request.getRequestDispatcher("reportes.jsp").forward(request, response);
    }
}
