
package ServLets;

import Services.ServiceDulceria;
import Services.ServiceLocales;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.dto.Locales;
import modelo.dto.itemDulceria;


@WebServlet(name = "Dulceria", urlPatterns = {"/Dulceria"})
public class SvDulceria extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ServiceDulceria servDulceria = new ServiceDulceria();
        ServiceLocales servLocales = new ServiceLocales();
        
        List<itemDulceria> itemsDulceria = servDulceria.FindAll();
        List<Locales> locales = servLocales.FindAll();
        
        request.setAttribute("itemsDulceria", itemsDulceria);
        request.setAttribute("locales", locales);
        
        response.setContentType("text/html;charset=UTF-8");
        getServletContext().getRequestDispatcher("/dulceria.jsp").include(request, response);
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession sesion = request.getSession();
        
        /*
        1. Recibimos los datos en JSON de cada item dulceria cuaya cant >0,
        obteniendo:
         - Nombre item
         - Precio Unitario
         - Cantidad
         - Subtotal(Precio Unitario*Cantidad) 
        */

        /*
        2. Procesamos los datos y lo guardamos en un objeto que tiene
         los datos Nombre,Precio,Cant y Subtotal
        */

        /*
        3. Cada objeto generado lo guardamos en un arreglo de objetos 
            [ 
            ItemDulceria_1[nom, precio_unit.,cant.,subtotal]
            ItemDulceria_2[nom, precio_unit.,cant.,subtotal]
                            ...
            ]
        
        */
        
        /*
        4. Ese arreglo de objetos lo guardamos en un atributo de la sesion http
           para accederlo desde el SvCompraDulceria
        
        */
 
        /*
        5. Luego, el frm dulceria.jsp se va al SvCompraDulceria que redirige a 
        compraDulceria.jsp donde se pintaran los datos de la compra con la info
        del HttpSession

        */
        
        
        Object[] DetalleCompra = null;
        sesion.setAttribute("DetalleCompra", DetalleCompra);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
