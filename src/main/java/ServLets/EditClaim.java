package ServLets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.AdmClaimsDAO;
import modelo.dto.Claims;

public class EditClaim extends HttpServlet {

    private AdmClaimsDAO admClaimsDAO;

    @Override
    public void init() {
        admClaimsDAO = new AdmClaimsDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            Claims claim = admClaimsDAO.getClaimById(id);
            request.setAttribute("claim", claim);
            request.getRequestDispatcher("editClaim.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error al obtener el reclamo", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String dni = request.getParameter("dni");
        String fecha = request.getParameter("fecha");
        String asunto = request.getParameter("asunto");
        String contenido = request.getParameter("contenido");

        Claims claim = new Claims();
        claim.setId_reclamos(id);
        claim.setNombre_cliente(nombre);
        claim.setCorreo_reclamo(correo);
        claim.setDni_reclamo(dni);
        claim.setFecha_reclamo(fecha);
        claim.setAsunto_reclamo(asunto);
        claim.setContenido_reclamo(contenido);

        try {
            admClaimsDAO.updateClaim(claim);
        } catch (SQLException e) {
            throw new ServletException("Error al actualizar el reclamo", e);
        }

        response.sendRedirect("SvAdmClaims?codLocal=" + claim.getCod_local());
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
