/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConexionBD;

import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luigi
 */
public class Conexion {
    
    
    private final String url ="jdbc:mysql://localhost:3306/machis?useTimezone=true&serverTimezone=UTC&useSSL=false";
    private final String user="root";
    private final String password="database";
    
    public Connection getMysql(){
        Connection c = null;     
        try {
            DriverManager.registerDriver(new Driver());
            c = DriverManager.getConnection(url, user, password);
//            System.err.println("Conexion Exitosa");
        } catch (SQLException ex) {
//            System.err.println("Conexion Erronea");
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }      
        return c;
    }
    
//    public static void main(String[] args){
//        
//        Conexion con = new Conexion();
//        con.getMysql();
//    }
    
}
