package taskapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Clase utilitaria para gestionar la conexión a la base de datos.
 * Proporciona un método para obtener una conexión a la base de datos SQL Server.
 */
public class DatabaseHelper {

    // URL de conexión a la base de datos
    private static final String jdbcURL = "jdbc:sqlserver://localhost:1433;databaseName=taskapp";

    // Nombre de usuario para la base de datos
    private static final String jdbcUsername = "sqlUsuario";

    // Contraseña para la base de datos
    private static final String jdbcPassword = "1234";

    /**
     * Obtiene una conexión a la base de datos utilizando los parámetros especificados.
     * @return Una conexión a la base de datos.
     * @throws SQLException Si ocurre un error al conectar con la base de datos.
     */
    public static Connection getConnection() throws SQLException {
        // Devuelve una conexión a la base de datos utilizando los detalles proporcionados
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }
}
