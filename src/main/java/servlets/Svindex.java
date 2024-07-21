package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet para manejar la redirección basada en el rol del usuario
 * @Heider Mauricio Bedoya
 * 2721519 ADSO
 */
@WebServlet("/index")
public class Svindex extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String role = request.getParameter("role");

        if (role == null) {
            response.sendRedirect("01index.jsp"); // Redirigir a la página principal si no se selecciona un rol
        } else {
            switch (role) {
                case "Administrador":
                    response.sendRedirect("03ingreso_empleados.jsp");
                    break;
                case "Empleado":
                    response.sendRedirect("03ingreso_empleados.jsp");
                    break;
                case "Clientes":
                    response.sendRedirect("02ingreso_clientes.jsp");
                    break;
                default:
                    response.sendRedirect("01index.jsp");
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Validar credenciales en la base de datos
        try (Connection con = conexionbd.getConnection()) {
            String query = "SELECT * FROM usuarios WHERE username = ? AND password = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, username);
            pst.setString(2, password);
            // Ejecutar la consulta y manejar el resultado
            
            // Dependiendo del resultado, redirigir a la página correspondiente
            response.sendRedirect("03ingreso_empleados.jsp"); // Esta es una redirección de ejemplo

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirigir a una página de error en caso de fallo
        }
    }
}
