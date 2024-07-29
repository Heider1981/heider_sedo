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
 * @Heider Mauricio Bedoya
 * 2721519 ADSO
 */
@WebServlet("/login")
/*El servlet está mapeado a la URL /login mediante la anotación @WebServlet("/login"). Esto significa que este 
servlet responderá a las peticiones que lleguen a esa URL específica.*/
        
      public class Svingresoclientes extends HttpServlet {

    private static final String USUARIO_VALIDO = "16461219";
    private static final String CLAVE_VALIDA = "1234";

    @Override
    /*doGet: En este caso, cuando se realiza una solicitud GET a /iniciar, el servlet simplemente redirige al usuario
    a la página raíz del contexto de la aplicación (response.sendRedirect("")). Esto indica que no se permite el acceso 
    directo mediante GET y se espera que el usuario interactúe usando POST para enviar datos de usuario y contraseña*/
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("");        
    }

    @Override
    /*Este método maneja las solicitudes POST, que generalmente se utilizan para enviar datos de formulario. */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = conexionbd.getConnection();
        /*Obtiene una conexión a la base de datos utilizando una clase conexionbd.getConnection(), 
        definida en otro lugar del código.*/
       
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        /*Recupera los parámetros usuario y clave del objeto HttpServletRequest.*/

        if (USUARIO_VALIDO.equals(usuario) && CLAVE_VALIDA.equals(clave)) {
            request.getRequestDispatcher("06home_usuarios.jsp").forward(request, response);
             /*Compara el usuario y la clave ingresados con valores estáticos definidos en el servlet 
            (USUARIO_VALIDO y CLAVE_VALIDA).
            Si las credenciales son válidas, redirige al usuario a la página 06home_usuarios.jsp usando
            request.getRequestDispatcher().forward().*/
        } else {
            request.setAttribute("error", "usuario o clave incorrectos");
            request.setAttribute ("errorExist", true);
            request.getRequestDispatcher("error.jsp").forward(request, response);
            /*Si las credenciales no son válidas, establece un atributo de solicitud (error) para indicar 
            que hubo un error de inicio de sesión y redirige al usuario a una página de error (error.jsp).*/
        }
        if (con != null) {
            /*Se maneja la excepción SQLException en caso de que ocurra un error al cerrar la conexión a la 
            base de datos, imprimiendo la traza del error en la consola.*/
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                  }
        }
    }
}

