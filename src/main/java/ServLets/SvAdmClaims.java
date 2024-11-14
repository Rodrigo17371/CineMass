package ServLets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.AdmClaimsDAO;
import modelo.dto.Claims;

public class SvAdmClaims extends HttpServlet {

    private AdmClaimsDAO admClaimsDAO;

    @Override
    public void init() {
        admClaimsDAO = new AdmClaimsDAO();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int codLocal = Integer.parseInt(request.getParameter("codLocal"));
            List<Claims> claimsList = admClaimsDAO.getClaimsByLocal(codLocal);
            request.setAttribute("claimsList", claimsList);
            request.getRequestDispatcher("AdmClaims.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
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
