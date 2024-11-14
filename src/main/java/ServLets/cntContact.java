package ServLets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.ContactDAO;
import modelo.dto.Contact;

public class cntContact extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");
            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String telefono = request.getParameter("telefono");
            String mensaje = request.getParameter("mensaje");

            Contact c = new Contact();
            c.setNombre(nombre);
            c.setCorreo(correo);
            c.setTelefono(telefono);
            c.setMensaje(mensaje);

            String resp = new ContactDAO().insert(c);

            if (resp.isEmpty()) {
                response.getWriter().write("Mensaje enviado con éxito.");
            } else {
                response.getWriter().write("Error al enviar el mensaje: " + resp);
            }
        }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
