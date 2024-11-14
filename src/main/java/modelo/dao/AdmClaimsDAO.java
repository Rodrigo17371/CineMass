package modelo.dao;

import conexion.ConectaBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelo.dto.Claims;

public class AdmClaimsDAO {
    private Connection connection;

    public AdmClaimsDAO() {
        ConectaBD conectaBD = new ConectaBD();
        this.connection = conectaBD.getConnection();
    }

    public Claims getClaimById(int id) throws SQLException {
        Claims claim = null;
        String query = "SELECT * FROM Reclamos WHERE CodReclamo = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    claim = new Claims();
                    claim.setId_reclamos(rs.getInt("CodReclamo"));
                    claim.setNombre_cliente(rs.getString("NombreCli"));
                    claim.setCorreo_reclamo(rs.getString("CorreoReclamo"));
                    claim.setDni_reclamo(rs.getString("dniReclamo"));
                    claim.setFecha_reclamo(rs.getDate("fechaReclamo").toString());
                    claim.setAsunto_reclamo(rs.getString("AsuntoReclamo"));
                    claim.setContenido_reclamo(rs.getString("ContenidoReclamo"));
                    claim.setCod_local(rs.getInt("CodLocal"));
                }
            }
        }
        return claim;
    }

    public void updateClaim(Claims claim) throws SQLException {
        String query = "UPDATE Reclamos SET NombreCli = ?, CorreoReclamo = ?, dniReclamo = ?, fechaReclamo = ?, AsuntoReclamo = ?, ContenidoReclamo = ? WHERE CodReclamo = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setString(1, claim.getNombre_cliente());
            ps.setString(2, claim.getCorreo_reclamo());
            ps.setString(3, claim.getDni_reclamo());
            ps.setDate(4, java.sql.Date.valueOf(claim.getFecha_reclamo()));
            ps.setString(5, claim.getAsunto_reclamo());
            ps.setString(6, claim.getContenido_reclamo());
            ps.setInt(7, claim.getId_reclamos());
            ps.executeUpdate();
        }
    }

    public void deleteClaim(int id) throws SQLException {
        String query = "DELETE FROM Reclamos WHERE CodReclamo = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }

    public List<Claims> getClaimsByLocal(int codLocal) throws SQLException {
        List<Claims> claimsList = new ArrayList<>();
        String query = "SELECT * FROM Reclamos WHERE CodLocal = ?";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, codLocal);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Claims claim = new Claims();
                    claim.setId_reclamos(rs.getInt("CodReclamo"));
                    claim.setNombre_cliente(rs.getString("NombreCli"));
                    claim.setCorreo_reclamo(rs.getString("CorreoReclamo"));
                    claim.setDni_reclamo(rs.getString("dniReclamo"));
                    claim.setFecha_reclamo(rs.getDate("fechaReclamo").toString());
                    claim.setAsunto_reclamo(rs.getString("AsuntoReclamo"));
                    claim.setContenido_reclamo(rs.getString("ContenidoReclamo"));
                    claim.setCod_local(rs.getInt("CodLocal"));
                    claimsList.add(claim);
                }
            }
        }
        return claimsList;
    }
}
