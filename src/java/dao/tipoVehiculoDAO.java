package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.TipoConductor;
import modelos.TipoVehiculo;

/**
 *
 * @author Yohan Puerta
 */
public class tipoVehiculoDAO {
    
    //Método Insert
    public static boolean insertTv (TipoVehiculo tv){
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "INSERT INTO tipo_vehiculo (nombre_tv) VALUES (?)";
            PreparedStatement ps = cone.prepareStatement(sql);
            ps.setString(1, tv.getNomTv());
            
            return ps.executeUpdate() > 0;
            
        }catch(SQLException ex){
            return false;
        }        
    }
    
    //Método Listar Tipo de Vehículo
    public static List listTipoVehiculos(){
        ArrayList<TipoVehiculo> listTipoVehiculo = new ArrayList<>();
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "SELECT * FROM tipo_vehiculo;";
            PreparedStatement ps = cone.prepareStatement(sql);
            ResultSet rs;
            rs = ps.executeQuery();
            
            while (rs.next()) {
                TipoVehiculo tipoVehiculo = new TipoVehiculo();
                tipoVehiculo.setIdTv(rs.getInt("id_tv"));
                tipoVehiculo.setNomTv(rs.getString("nombre_tv"));
               
                listTipoVehiculo.add(tipoVehiculo);
            }
            return listTipoVehiculo;
            
        }catch(SQLException ex){
            return listTipoVehiculo = null;
        } 
    }
}
