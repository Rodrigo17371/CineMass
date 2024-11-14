package ServLets;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.AdmClaimsDAO;

public class DeleteClaim extends HttpServlet {

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
            admClaimsDAO.deleteClaim(id);
        } catch (SQLException e) {
            throw new ServletException("Error al eliminar el reclamo", e);
        }
        response.sendRedirect("SvAdmClaims?codLocal=" + request.getParameter("codLocal"));
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
