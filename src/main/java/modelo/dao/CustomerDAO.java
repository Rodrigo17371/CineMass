package modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.dto.Customer;
import conexion.ConectaBD;
import java.sql.Date;
import java.util.ArrayList;

public class CustomerDAO {
    private Connection cnx;

    public CustomerDAO() {
        cnx = new ConectaBD().getConnection();
    }
    
    public boolean insert(Customer cst) {
        boolean success = false;
        PreparedStatement ps;
        String cadSQL = "INSERT INTO cliente (nombres, apepaterno, apematerno, dni, fechanacimiento, usuario, correo, contraseña) VALUES(?,?,?,?,?,?,?,?)";
        
        try {
            ps = cnx.prepareStatement(cadSQL);
            ps.setString(1, cst.getNombre());
            ps.setString(2, cst.getApepaterno());
            ps.setString(3, cst.getApematerno());
            ps.setString(4, cst.getDni());
            ps.setString(5, cst.getFechanacimiento());
            ps.setString(6, cst.getUsuario());
            ps.setString(7, cst.getCorreo());
            ps.setString(8, cst.getContraseña());
            ps.executeUpdate();
            success = true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return success;
    }
    
    public Customer authenticate(String correo, String contrasena) {
        Customer cst = null;
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT * FROM cliente WHERE correo = ? AND contraseña = ?";

        try {
            ps = cnx.prepareStatement(sql);
            ps.setString(1, correo);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();

            if (rs.next()) {
                cst = new Customer();
                cst.setCodcliente(rs.getInt("codcliente"));
                cst.setNombre(rs.getString("nombres"));
                cst.setApepaterno(rs.getString("apepaterno"));
                cst.setApematerno(rs.getString("apematerno"));
                cst.setDni(rs.getString("dni"));
                cst.setFechanacimiento(rs.getString("fechanacimiento"));
                cst.setUsuario(rs.getString("usuario"));
                cst.setCorreo(rs.getString("correo"));
                cst.setContraseña(rs.getString("contraseña"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cst;
    }

    public ArrayList<Customer> mostrarClientes() {
        ArrayList<Customer> lista = new ArrayList<>();
        String sql = "SELECT * FROM Cliente";

        try (Connection cnx = new ConectaBD().getConnection();
             PreparedStatement pst = cnx.prepareStatement(sql);
             ResultSet rs = pst.executeQuery()) {

            while (rs.next()) {
                Customer c = new Customer();
                c.setCodcliente(rs.getInt("CodCliente"));
                c.setNombre(rs.getString("Nombres"));
                c.setApepaterno(rs.getString("ApePaterno"));
                c.setApematerno(rs.getString("ApeMaterno"));
                c.setDni(rs.getString("DNI"));
                c.setUsuario(rs.getString("Usuario"));
                c.setCorreo(rs.getString("Correo"));
                c.setFechanacimiento(rs.getString("FechaNacimiento"));
                c.setContraseña(rs.getString("Contraseña"));
                lista.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }

    public boolean agregarCliente(Customer c) {
        String sql = "INSERT INTO Cliente (Nombres, ApePaterno, ApeMaterno, DNI, FechaNacimiento, Usuario, Correo, Contraseña) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection cnx = new ConectaBD().getConnection();
             PreparedStatement pst = cnx.prepareStatement(sql)) {

            pst.setString(1, c.getNombre());
            pst.setString(2, c.getApepaterno());
            pst.setString(3, c.getApematerno());
            pst.setString(4, c.getDni());
            pst.setDate(5, Date.valueOf(c.getFechanacimiento()));
            pst.setString(6, c.getUsuario());
            pst.setString(7, c.getCorreo());
            pst.setString(8, c.getContraseña());

            return pst.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean actualizarCliente(Customer c) {
        String sql = "UPDATE Cliente SET Nombres=?, ApePaterno=?, ApeMaterno=?, DNI=?, FechaNacimiento=?, Usuario=?, Correo=?, Contraseña=? WHERE CodCliente=?";
        try (Connection cnx = new ConectaBD().getConnection();
             PreparedStatement pst = cnx.prepareStatement(sql)) {

            pst.setString(1, c.getNombre());
            pst.setString(2, c.getApepaterno());
            pst.setString(3, c.getApematerno());
            pst.setString(4, c.getDni());
            pst.setDate(5, Date.valueOf(c.getFechanacimiento()));
            pst.setString(6, c.getUsuario());
            pst.setString(7, c.getCorreo());
            pst.setString(8, c.getContraseña());
            pst.setInt(9, c.getCodcliente());

            return pst.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminarCliente(int codCliente) {
        String sql = "DELETE FROM Cliente WHERE CodCliente=?";
        try (Connection cnx = new ConectaBD().getConnection();
             PreparedStatement pst = cnx.prepareStatement(sql)) {
            pst.setInt(1, codCliente);
            return pst.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
