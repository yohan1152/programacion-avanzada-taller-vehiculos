package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.Ruta;
import modelos.Vehiculo;

/**
 *
 * @author Yohan Puerta
 */
public class rutaDAO {
    
    //Método Insert
    public static boolean insertRuta (Ruta r){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO ruta (estacion,id_vehiculo) VALUES (?,?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setString(1, r.getEstacion());
            ps.setString(2, r.getId_vehiculo());
            
            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
   
}
