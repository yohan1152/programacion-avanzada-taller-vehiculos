package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelos.Contrato;

/**
 *
 * @author Yohan Puerta
 */
public class contratoDAO {
    //Método Insert
    public static boolean insertContrato (Contrato cto){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO contrato (id_conductor,id_vehiculo) VALUES (?,?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setInt(1, cto.getId_conductor());
            ps.setString(2, cto.getId_vehiculo());

            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
}
