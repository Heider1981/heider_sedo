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
@WebServlet("/actualizar")
public class Svingresar_actualizar_productos extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = conexionbd.getConnection();
        
        String tipoProducto = request.getParameter("tipoProducto");
        String idProducto = request.getParameter("idProducto");
        String nombreProducto = request.getParameter("nombreProducto");
        String precioProducto = request.getParameter("precioProducto");
        
        // For simplicity, printing the received data to the console
        System.out.println("Tipo de producto: " + tipoProducto);
        System.out.println("Ingrese id Producto: " + idProducto);
        System.out.println("nombre del producto: " + nombreProducto);
        System.out.println("precio del producto: " + precioProducto);
        
        // Forward to a confirmation page or handle the registration logic
        request.getRequestDispatcher("confirmacion.jsp").forward(request, response);
        
        if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                  }
        }
    }
}
