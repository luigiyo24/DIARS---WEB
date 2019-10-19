/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import ConexionBD.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Luigi
 */
public class Acceso {
    
    public Acceso(){
    }
    
    public String validar(String usuario, String password){
        String sql = "	select u.USUARIO,u.CONTRASEÑA,e.IDEMPLEADO,pe.NOMBRE_RS,pe.APELLIDOP,c.CARGO from usuario as u\n" +
                    "    inner join empleado as e on u.IDEMPLEADO=e.IDEMPLEADO\n" +
                    "	inner join persona as pe on e.IDPERSONA=pe.IDPERSONA\n" +
                    "	inner join cargo as c on c.IDCARGO = e.IDCARGO \n" +
                    "    where USUARIO='"+ usuario +"' and CONTRASEÑA='"+ password +"';";
        String cargo="";
        Connection c;
        try{
            ResultSet rs = null;
            c = new Conexion().getMysql();
            PreparedStatement ps = c.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cargo = rs.getString(6);
            }
            c.close();
            rs.close();
            return cargo;
        }catch(SQLException e){
            e.printStackTrace();
            return cargo;
        }
    }
    
//    public static void main(String[] args){
//        Acceso a = new Acceso();
//        
//        String cadena = a.validar("admin", "admin");
//        System.out.println(cadena);
//    }
}
