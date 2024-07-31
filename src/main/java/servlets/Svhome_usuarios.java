package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class Svhome_usuarios extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String role = request.getParameter("role");
        if (role == null) {
            response.sendRedirect("index.jsp");
            return;
        }

        switch (role) {
            case "Inicio":
                // Lógica para la página de Inicio
                response.sendRedirect("06home_usuarios.jsp");
                break;
            case "Productos":
                // Lógica para la página de Productos
                response.sendRedirect("08modulo_productos_carrito.jsp");
                break;
            case "Carrito de Compras":
                // Lógica para la página de Carrito de Compras
                response.sendRedirect("08modulo_productos_carrito.jsp");
                break;
            case "Sugerencias":
                // Lógica para la página de Sugerencias
                response.sendRedirect("09quejas_sugerencias.jsp");
                break;
            default:
                // Redirige a una página de error o a una página por defecto
                response.sendRedirect("error.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
