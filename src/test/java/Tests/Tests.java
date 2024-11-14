
package Tests;

import Services.ServiceDulceria;
import Services.ServiceLocales;
/*import conexion.ConectaBD;*/
import java.sql.Connection;
import java.util.List;
import modelo.dto.Locales;
import modelo.dto.itemDulceria;
import org.junit.jupiter.api.Test;


public class Tests {

   /*@Test
    public void testConnection() {
        Connection cnx = new ConectaBD().getConnection();
        if(cnx != null){
            System.out.println("Connection: OK");
        }else{
            System.out.println("Connection: ERROR");
            
        }
    }

    @Test
    public void testDulceria() {
        ServiceDulceria servDulceria = new ServiceDulceria();
         List<itemDulceria> itemsDulceria = servDulceria.FindAll();
         itemsDulceria.forEach(System.out::println);
    
    }
    
    @Test
    public void testLocales() {
        ServiceLocales servLocales = new ServiceLocales();
         List<Locales> itemsDulceria = servLocales.FindAll();
         itemsDulceria.forEach(System.out::println);
    
    }*/
    
}
