package ServLets;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import modelo.dto.Customer;
import modelo.dao.CustomerDAO;
import com.google.gson.Gson;

public class CustomerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    CustomerDAO customerDAO = new CustomerDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("register".equals(action)) {
            // Crear un nuevo cliente
            Customer nuevoCliente = new Customer();
            nuevoCliente.setNombre(request.getParameter("nombre"));
            nuevoCliente.setApepaterno(request.getParameter("apepaterno"));
            nuevoCliente.setApematerno(request.getParameter("apematerno"));
            nuevoCliente.setDni(request.getParameter("dni"));
            nuevoCliente.setFechanacimiento(request.getParameter("fechanacimiento"));
            nuevoCliente.setUsuario(request.getParameter("usuario"));
            nuevoCliente.setCorreo(request.getParameter("correo"));
            nuevoCliente.setContraseña(request.getParameter("contrasena"));

            boolean registrado = customerDAO.agregarCliente(nuevoCliente);
            if (registrado) {
                response.getWriter().write("Cliente registrado exitosamente");
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Error al registrar el cliente");
            }
        } else if ("update".equals(action)) {
            // Editar cliente existente
            int codCliente = Integer.parseInt(request.getParameter("codcliente"));
            Customer clienteExistente = customerDAO.mostrarClientes().stream()
                    .filter(c -> c.getCodcliente() == codCliente)
                    .findFirst()
                    .orElse(null);

            if (clienteExistente != null) {
                clienteExistente.setNombre(request.getParameter("nombre"));
                clienteExistente.setApepaterno(request.getParameter("apepaterno"));
                clienteExistente.setApematerno(request.getParameter("apematerno"));
                clienteExistente.setDni(request.getParameter("dni"));
                clienteExistente.setFechanacimiento(request.getParameter("fechanacimiento"));
                clienteExistente.setUsuario(request.getParameter("usuario"));
                clienteExistente.setCorreo(request.getParameter("correo"));
                clienteExistente.setContraseña(request.getParameter("contrasena"));

                boolean actualizado = customerDAO.actualizarCliente(clienteExistente);
                if (actualizado) {
                    response.getWriter().write("Cliente actualizado exitosamente");
                } else {
                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                    response.getWriter().write("Error al actualizar el cliente");
                }
            }
        } else if ("delete".equals(action)) {
            // Eliminar cliente
            int codCliente = Integer.parseInt(request.getParameter("codcliente"));
            boolean eliminado = customerDAO.eliminarCliente(codCliente);

            if (eliminado) {
                response.getWriter().write("Cliente eliminado exitosamente");
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.getWriter().write("Error al eliminar el cliente");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("getCustomer".equals(action)) {
            int codCliente = Integer.parseInt(request.getParameter("codcliente"));
            Customer cliente = customerDAO.mostrarClientes().stream()
                    .filter(c -> c.getCodcliente() == codCliente)
                    .findFirst()
                    .orElse(null);

            if (cliente != null) {
                response.setContentType("application/json");
                Gson gson = new Gson();
                response.getWriter().write(gson.toJson(cliente));
            } else {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                response.getWriter().write("Cliente no encontrado");
            }
        }
    }
}
