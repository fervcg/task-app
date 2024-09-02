package taskapp;

import com.techspot.model.Tarea;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taskapp.dao.TareaDAO;

/**
 * Servlet para manejar la creación de nuevas tareas.
 * Mapea la URL '/createTarea' y gestiona la solicitud POST para crear una tarea.
 */
@WebServlet("/createTarea")
public class CreateTareaServlet extends HttpServlet {
    
    // Objeto DAO para realizar operaciones en la base de datos
    private TareaDAO tareaDAO;

    /**
     * Inicializa el servlet y crea una instancia del DAO.
     */
    @Override
    public void init() throws ServletException {
        super.init();
        tareaDAO = new TareaDAO();
    }

    /**
     * Maneja las solicitudes POST para crear una nueva tarea.
     * @param request La solicitud HTTP.
     * @param response La respuesta HTTP.
     * @throws ServletException Si ocurre un error en la solicitud.
     * @throws IOException Si ocurre un error en la respuesta.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtiene los parámetros de la solicitud
        String descripcion = request.getParameter("descripcion");
        boolean completada = Boolean.parseBoolean(request.getParameter("completada"));

        // Crea una nueva tarea y establece sus atributos
        Tarea tarea = new Tarea();
        tarea.setDescripcion(descripcion);
        tarea.setCompletada(completada);

        // Utiliza el DAO para guardar la tarea en la base de datos
        tareaDAO.create(tarea);

        // Redirige a una página de éxito después de crear la tarea
        response.sendRedirect("success.jsp");
    }
}
