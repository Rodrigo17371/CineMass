package ServLets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.SuggestionsDAO;
import modelo.dto.Suggestions;

public class cntSuggestions extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain");

        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String asunto = request.getParameter("asunto");
        String sugerencia = request.getParameter("sugerencia");

        Suggestions s = new Suggestions();
        s.setNombre(nombre);
        s.setCorreo(correo);
        s.setAsunto(asunto);
        s.setContenido(sugerencia);

        String resp = new SuggestionsDAO().insert(s);

        if (resp.isEmpty()) {
            response.getWriter().write("Sugerencia enviada con éxito!");
        } else {
            response.getWriter().write("Error al enviar la sugerencia: " + resp);
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
