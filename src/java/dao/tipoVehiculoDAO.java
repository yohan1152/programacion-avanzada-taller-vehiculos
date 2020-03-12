/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelos.TipoVehiculo;

/**
 *
 * @author 503
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
}
