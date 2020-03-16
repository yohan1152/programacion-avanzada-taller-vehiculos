package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Yohan Puerta
 */
public class conexionLib {
    
    public static Connection conectarnosDB(){
        try{
            //Datos de la conexion
            String dbDriver = "com.mysql.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            //Datos de la DB
            String dbName = "taller_cesde";
            String dbUser = "root";
            String dbPassword = "";
            
            Class.forName(dbDriver);
            Connection conex = DriverManager.getConnection(dbURL + dbName, dbUser, dbPassword);        
            return conex;
            
        }catch(ClassNotFoundException | SQLException ex){
            return null;
        }
    } 
}
