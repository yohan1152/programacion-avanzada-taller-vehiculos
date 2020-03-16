package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import modelos.Conductor;
import modelos.TipoConductor;

/**
 *
 * @author Yohan Puerta
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
    
    //Método Listar Tipo de Conductores
    public static List listTipoConductores(){
        ArrayList<TipoConductor> listTipoConductor = new ArrayList<>();
        try{
            Connection cone = conexionLib.conectarnosDB();
            String sql = "SELECT * FROM tipo_conductor;";
            PreparedStatement ps = cone.prepareStatement(sql);
            ResultSet rs;
            rs = ps.executeQuery();
            
            while (rs.next()) {
                TipoConductor tipoCond = new TipoConductor();
                tipoCond.setId_tc(rs.getInt("id_tc"));
                tipoCond.setNombre(rs.getString("nombre"));
               
                listTipoConductor.add(tipoCond);
            }
            return listTipoConductor;
            
        }catch(SQLException ex){
            return listTipoConductor = null;
        } 
    }
}
