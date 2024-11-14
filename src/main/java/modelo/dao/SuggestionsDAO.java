/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.dto.Suggestions;
import conexion.ConectaBD;

/**
 *
 * @author ztomz
 */
public class SuggestionsDAO {
    private Connection cnx;

    public SuggestionsDAO() {
        cnx = new ConectaBD().getConnection();
    }
    
    public String insert(Suggestions s) {
        String resp = "";
        String cadSQL = "INSERT INTO Sugerencias (Nombre, Correo, Asunto, Contenido) VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps = cnx.prepareStatement(cadSQL)) {
            ps.setString(1, s.getNombre());
            ps.setString(2, s.getCorreo());
            ps.setString(3, s.getAsunto());
            ps.setString(4, s.getContenido());
            ps.executeUpdate();
        } catch (SQLException ex) {
            resp = ex.getMessage();
        }
        return resp;
    }
    
    public Suggestions get(int idx) {
        Suggestions s = null;
        PreparedStatement ps;
        ResultSet rs;
        String cadSQL = "SELECT * FROM sugerencias where idsugerencia=?";
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            rs = ps.executeQuery();
            if (rs.next()){
                s = new Suggestions();
                s.setIdsugerencia(rs.getInt("idsugerencia"));
                s.setAsunto(rs.getString("asunto"));
                s.setContenido(rs.getString("sugerencia"));
                
            }
        } catch (SQLException ex) {
            
        }
        return s;
    }
    
}
