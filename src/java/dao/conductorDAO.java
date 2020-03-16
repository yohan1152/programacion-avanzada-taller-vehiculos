
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.Conductor;
import modelos.Vehiculo;

/**
 *
 * @author Yohan Puerta
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
    
    //Método Listar Conductores
    public static List listConductores(){
        ArrayList<Conductor> listConductor = new ArrayList<>();
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "SELECT * FROM conductor;";
            PreparedStatement ps = cone.prepareStatement(sql);
            ResultSet rs;
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Conductor cond = new Conductor();
                cond.setId_conductor(rs.getInt("id_conductor"));
                cond.setNombre(rs.getString("nombre"));
               
                listConductor.add(cond);
            }
            return listConductor;
            
        }catch(SQLException ex){
            return listConductor = null;
        } 
    }
}
