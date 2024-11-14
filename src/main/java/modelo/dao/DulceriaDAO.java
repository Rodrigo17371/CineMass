
package modelo.dao;

import conexion.ConectaBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.CategoriaItem;
import modelo.dto.itemDulceria;


public class DulceriaDAO {
    
    private Connection getCnx(){
        return new ConectaBD().getConnection();
    }

    public List<itemDulceria> FindAll() {
       List<itemDulceria> items = new ArrayList<>();
        //Query a ejecutar
        String query = "SELECT i.CodItem,i.Nombre,i.Descripcion, i.Precio, "
                + "c.CodCategoria,c.Nombre as NombreCategoria FROM "
                + "itemdulceria i INNER JOIN categoria c "
                + "ON (i.CodCategoria = c.CodCategoria) WHERE i.Stock>0;";
       
        try( Connection conn = getCnx();
             Statement st = conn.createStatement()){
            
            //Ejecuta la busqueda
            st.execute(query);
            try(ResultSet rs = st.getResultSet()){
                while(rs.next()){
                    //Obtenemos los proveedores y los agregamos a la lista
                    items.add(this.getitemDulceriaFromDB(rs));
                }
            }
        } catch (Exception e) {
            return null;
        }
        return items; 
    }


    private itemDulceria getitemDulceriaFromDB(ResultSet rs) throws SQLException {
        return new itemDulceria(rs.getInt("CodItem"),
                new CategoriaItem(rs.getInt("CodCategoria"), rs.getString("NombreCategoria")), 
                rs.getString("Nombre"), 
                rs.getString("Descripcion"), 
                rs.getString("Precio"));
    }
    
    
}
