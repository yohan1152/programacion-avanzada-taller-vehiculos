
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelos.Vehiculo;

/**
 *
 * @author yohan.puerta
 */
public class vehiculoDAO {
     //Método Insert
    public static boolean insertVehiculo (Vehiculo v){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO vehiculo (placa,marca,modelo,matricula,ano,id_tv) VALUES (?,?,?,?,?,?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setString(1, v.getPlaca());
            ps.setString(2, v.getMarca());
            ps.setString(3, v.getModelo());
            ps.setString(4, v.getMatricula());
            ps.setInt(5, v.getAno());
            ps.setInt(6, v.getId_tv());
            
            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
}
