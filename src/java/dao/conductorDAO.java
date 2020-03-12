
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelos.Conductor;

/**
 *
 * @author yohan.puerta
 */
public class conductorDAO {
     //Método Insert
    public static boolean insertConductor (Conductor c){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO conductor (nombre,tipo_licencia,id_vehiculo,id_tipo_conductor) VALUES (?,?,?,?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getTipo_licencia());
            ps.setString(3, c.getId_vehiculo());
            ps.setInt(4, c.getId_conductor());
            
            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
}
