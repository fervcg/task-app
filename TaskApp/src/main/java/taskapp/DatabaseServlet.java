package taskapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet para probar la conexión con la base de datos utilizando un DataSource.
 */
public class DatabaseServlet extends HttpServlet {

    // DataSource para obtener conexiones a la base de datos
    private DataSource dataSource;

    /**
     * Inicializa el servlet y configura el DataSource.
     * @throws ServletException Si ocurre un error durante la configuración del DataSource.
     */
    @Override
    public void init() throws ServletException {
        try {
            // Obtiene el contexto inicial de JNDI
            Context initContext = new InitialContext();
            // Obtiene el contexto de entorno
            Context envContext = (Context) initContext.lookup("java:/comp/env");
            // Busca y asigna el DataSource desde el contexto JNDI
            dataSource = (DataSource) envContext.lookup("jdbc/TaskAppDB");
        } catch (NamingException e) {
            // Lanza una excepción si el DataSource no se encuentra
            throw new ServletException("DataSource not found", e);
        }
    }

    /**
     * Maneja las solicitudes GET y verifica la conexión a la base de datos.
     * @param request La solicitud HTTP.
     * @param response La respuesta HTTP.
     * @throws ServletException Si ocurre un error durante el procesamiento de la solicitud.
     * @throws IOException Si ocurre un error al escribir la respuesta.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Establece el tipo de contenido de la respuesta
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            try (Connection connection = dataSource.getConnection()) {
                // Imprime un mensaje si la conexión es exitosa
                out.println("<h1>Conexión exitosa a la base de datos</h1>");
            } catch (SQLException e) {
                // Imprime un mensaje de error si ocurre una excepción SQL
                out.println("<h1>Error al conectar a la base de datos: " + e.getMessage() + "</h1>");
            }
        }
    }

    /**
     * Devuelve una breve descripción del servlet.
     * @return La descripción del servlet.
     */
    @Override
    public String getServletInfo() {
        return "Database Connection Servlet";
    }
}
