
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelos.TipoConductor;

/**
 *
 * @author yohan.puerta
 */
public class tipoConductorDAO {
    
     //Método Insert
    public static boolean insertTc (TipoConductor tc){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO tipo_conductor (nombre) VALUES (?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setString(1, tc.getNombre());
            
            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
}
