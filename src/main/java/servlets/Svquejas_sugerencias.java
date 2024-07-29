package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/quejas_sugerencias")
public class Svquejas_sugerencias extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        
        // Aquí puedes agregar la lógica para procesar el formulario
        // Por ejemplo, guardar los datos en una base de datos o enviar un correo electrónico
        
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("Gracias por enviar tu queja o sugerencia");
    }
}
