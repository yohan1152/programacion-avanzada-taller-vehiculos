package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.Vehiculo;

/**
 *
 * @author Yohan Puerta
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
    
    //Método Listar Vehículos
    public static List listVehiculos(){
        ArrayList<Vehiculo> listVehiculo = new ArrayList<>();
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "SELECT * FROM vehiculo;";
            PreparedStatement ps = cone.prepareStatement(sql);
            ResultSet rs;
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Vehiculo v = new Vehiculo();
                v.setPlaca(rs.getString("placa"));
                v.setMarca(rs.getString("marca"));
                v.setModelo(rs.getString("modelo"));
                v.setMatricula(rs.getString("matricula"));
                v.setAno(rs.getInt("ano"));
                v.setId_tv(rs.getInt("id_tv"));
                listVehiculo.add(v);
            }
            return listVehiculo;
            
        }catch(SQLException ex){
            return listVehiculo = null;
        } 
    }
}
