package servlets;

import conexion.conexionbd;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 *
 * @Heider Mauricio Bedoya
 * 2721519 ADSO
 */
@WebServlet("/login")
        
      public class Svingresoclientes extends HttpServlet {

    private static final String USUARIO_VALIDO = "16461219";
    private static final String CLAVE_VALIDA = "1234";

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = conexionbd.getConnection();
       
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");

        if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) {
            request.getRequestDispatcher("06home_usuarios.jsp").forward(request, response);

        } else {
            request.setAttribute("error", "usuario o clave incorrectos");
            request.setAttribute ("errorExist", true);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                  }
        }
    }
}

