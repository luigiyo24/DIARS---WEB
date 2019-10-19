/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.*;
import ConexionBD.Conexion;
import clases.persona;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luigi
 */
public class daoPersona {
    
    Conexion conexion;
    
    public daoPersona(){
        conexion = new Conexion();
    }
    
    public String insertTrabajador(String Id,
    String Nombre,
    String Apellidop,
    String Apellidom,
    String Correo,
    Long Telefono,
    Long Dni,
    String FechaNac,
    Integer Estado){
        String rptaRegistroTrabajador = null;
        try {
            Connection accesoDB = conexion.getMysql();
            CallableStatement cs = accesoDB.prepareCall("{call sp_insertTrabajador(?,?,?,?,?,?,?,?,?,?)}");
            cs.setString(1, Id);
            cs.setString(2, Nombre);
            cs.setString(3, Apellidop);
            cs.setString(4, Apellidom);
            cs.setString(5, Correo);
            cs.setLong(6, Telefono);
            cs.setLong(7, Dni);
            cs.setString(8, FechaNac);
            cs.setInt(9, Estado);
            
            int numFAfectadas = cs.executeUpdate();
            
            if(numFAfectadas>0){
                rptaRegistroTrabajador = "Registro exitoso.";
            }      
        } catch (Exception e) {
        }
        return rptaRegistroTrabajador;
    }
    
    public ArrayList<persona> listPersona(){
        ArrayList listaTrabajador = new ArrayList();
        persona trabajador;
        try {
            Connection acceDB = conexion.getMysql();
            PreparedStatement ps;
        
            ps = acceDB.prepareStatement("select * from persona");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                trabajador = new persona();
                trabajador.setId(rs.getString(1));
                trabajador.setNombre(rs.getString(2));
                trabajador.setApellidop(rs.getString(3));
                trabajador.setApellidom(rs.getString(4));
                trabajador.setCorreo(rs.getString(5));
                trabajador.setTelefono(rs.getLong(6));
                trabajador.setDni(rs.getLong(7));
                trabajador.setFechaNac(rs.getString(8));
                trabajador.setEstado(rs.getInt(9));
                listaTrabajador.add(trabajador);
            }
            
            acceDB.close();
            acceDB=null;
            rs.close();
            rs=null;
        } catch (SQLException ex) {
            Logger.getLogger(daoPersona.class.getName()).log(Level.SEVERE, null, ex);
            
        }
            

        
        return listaTrabajador;
    }
}
