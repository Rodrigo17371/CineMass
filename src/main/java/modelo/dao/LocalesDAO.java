/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Locales;
import conexion.ConectaBD;

/**
 *
 * @author juand
 */
public class LocalesDAO {
    private Connection cnx;

    public LocalesDAO() {
        cnx = new ConectaBD().getConnection();
    }

    PreparedStatement ps;
    ResultSet rs;
    String cadSQL = "SELECT CodLocal, Nombre, Direccion FROM Locales;";

    public Locales get(int idx) {
        Locales l = null;

        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setInt(1, idx);
            rs = ps.executeQuery();
            if (rs.next()) {
                l = new Locales();
                l.setCodLocal(rs.getInt("CodLocal"));
                l.setNombre(rs.getString("Nombre"));
                l.setDireccion(rs.getString("Direccion"));
            }
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error en la consulta " + ex);
        }
        return l;
    }

    public List<Locales> getList() {
        List<Locales> lista = null;
        try {
            ps = cnx.prepareStatement(cadSQL);
            rs = ps.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                Locales l = new Locales(
                        rs.getInt("CodLocal"),
                        rs.getString("Nombre"),
                        rs.getString("Direccion"));
                lista.add(l);
            }
            rs.close();
        } catch (SQLException ex) {
            System.out.println("Error en la lista " + ex);
        }
        return lista;
    }
    
      public List<Locales> getLocales() {
        List<Locales> locales = new ArrayList<>();
        String lcs = "SELECT CodLocal, Nombre FROM Locales";

        try (PreparedStatement st = cnx.prepareStatement(lcs);
             ResultSet rt = st.executeQuery()) {

            while (rt.next()) {
                Locales local = new Locales();
                local.setCodLocal(rt.getInt("CodLocal"));
                local.setNombre(rt.getString("Nombre"));
                locales.add(local);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return locales;
    }
}
