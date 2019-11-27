/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import ConexionBD.Conexion;
import clases.empleado;
import clases.usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author mono
 */
public class daousuarios {
    private List<usuario>ven;
    public daousuarios() {
        
        ven =getUsua();
    
        
    }
    private List<usuario> getUsua() {
        List<usuario> lista = new ArrayList();
        String sql = "select u.idusuario,u.usuario,u.contraseña,u.estado,u.sesion,c.cargo from usuario u inner join empleado e on u.idempleado = e.idempleado inner join cargo c on e.idcargo= c.idcargo";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                usuario e = new usuario(rs.getString("idusuario"), rs.getString("usuario"), rs.getString("contraseña"), rs.getInt("estado"), rs.getString("idempleado"),rs.getString("cargo"));
                System.out.println(e.getIdUsuario() + " " + e.getUsuario() + " " + e.getContraseña() + " " + e.getEstado() + " " + e.getIdEmpleado()+" "+e.getCargo());
                lista.add(e);
            }
            rs.close();

            rs = null;
            c.close();
            c = null;
        } catch (SQLException ex) {
            Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
            } catch (SQLException ex1) {
                Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return lista;
    }
    
    public int tamaño(){
        return ven.size();
    }
    public usuario buscar(String user,String pass){
        for(int i=0;i<tamaño();i++){
            if(ven.get(i).getUsuario().equals(user) && ven.get(i).getContraseña().equals(pass)){
                return ven.get(i);
            }
        }
        return null;
    } 
    
    public void Sesion(usuario e, String activo) {
        String sql = "UPDATE usuario set sesion=? where idUsuario=? and usuario=?";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            PreparedStatement pst = c.prepareCall(sql);
            if (activo.equals("Iniciar")) {
                pst.setInt(1, 2);
                pst.setString(2, e.getIdUsuario());
                pst.setString(3, e.getUsuario());
                System.out.println("sesion        inicio             funciona ");
            } else {
                pst.setInt(1, 1);
                pst.setString(2, e.getIdUsuario());
                pst.setString(3, e.getUsuario());
                System.out.println("sesion         Cerrar            funciona ");
            }
            int rs = pst.executeUpdate();
            c.close();
            c = null;
        } catch (SQLException ex) {
            Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
                System.out.println("sesion           no          funciona ");
            } catch (SQLException ex1) {
                Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex1);
                System.out.println("sesion           no          funciona ");

            }
        }
    }
    
    public String insertUsuario(String Usuario, String Contraseña, empleado emp) {
        String respuestaRegistro = null;
        Connection accesoDB;
        try {
            accesoDB = new Conexion().getMysql();
            CallableStatement cs = accesoDB.prepareCall("{call sp_insertUsuario(fn_idusuario(),?,?,?)}");
            
            cs.setString(1, Usuario);
            cs.setString(2, Contraseña);
            cs.setString(3, emp.getId());
            
            int numFAfectadas = cs.executeUpdate();
            if(numFAfectadas>0){
                respuestaRegistro = "Registro Exitoso";
            }
        } catch (Exception e) {
        }

        return respuestaRegistro;
    }
    
    public void cargar_tabla(DefaultTableModel dtmtable,JTable jm) {
        
        if (tamaño()==0) {
            JOptionPane.showMessageDialog(null,"Lista sin elementos!!!", "Validar", 2);
        } else {
            dtmtable.setRowCount(0);//Limpia las filas del JTable
            for (usuario usu:ven) {
                Object vec[] = new Object[4];
                vec[0] = usu.getIdUsuario();
                vec[1] = usu.getUsuario();
                
                if(usu.getEstado()==1)
                    vec[2] = "Activo";
                else
                    vec[2] = "Desactivo";
                
                vec[3] = usu.getIdEmpleado();
                //agregar al JTable
                dtmtable.addRow(vec);
            }
            jm.setModel(dtmtable);
        }
    }
    
    public void cargar_cabecera(JTable tbl) {
        DefaultTableModel dtmCabecera = new DefaultTableModel(){
            @Override
            public boolean isCellEditable(int i, int i1) {
                return false; //To change body of generated methods, choose Tools | Templates.
            }
        };        
        dtmCabecera.addColumn("IDUSUARIO");
        dtmCabecera.addColumn("USUARIO");
        
        dtmCabecera.addColumn("ESTADO");
        dtmCabecera.addColumn("IDEMPLEADO");
        tbl.setModel(dtmCabecera);
        
         cargar_tabla(dtmCabecera, tbl);
        
    }
    
    public int deleteUsuario(String idUsuario){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_deleteUsuario(?)}");
            cs.setString(1, idUsuario);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }
    
    public int editUsuario(String idUsuario, String Contraseña){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_editUsuario(?,?,?)}");
            cs.setString(1, idUsuario);
            cs.setString(2, Contraseña);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }
    
    
    
    public usuario usuActivo() {
        usuario e = new usuario();
        String sql = "select * from usuario where estado=?";
        Connection c = null;
        try {
            c = new Conexion().getMysql();;
            PreparedStatement pst = c.prepareCall(sql);
            pst.setInt(1, 2);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
//                e = new usuario(rs.getInt("idUsuario"), rs.getString("user"), rs.getString("clave"), rs.getInt("estado"), rs.getInt("empelado_idempelado"));
                e.setIdUsuario(rs.getString("idUsuario"));
                e.setUsuario(rs.getString("USUARIO"));
                e.setContraseña(rs.getString("CONTRASEÑA"));
                e.setEstado(rs.getInt("estado"));
                e.setIdEmpleado(rs.getString("IDEMPLEADO"));
            } else {
                e = new usuario();
                e.setEstado(1);
                return e;
            }

            rs.close();

            rs = null;
            c.close();
            c = null;

            System.out.println("funciono  dsadasdfasdfsdfsdafas");
            return e;
        } catch (SQLException ex) {
            Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
                System.out.println("noooooooooooooo funciono  dsadasdfasdfsdfsdafas");
                return e = null;
            } catch (SQLException ex1) {
                Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex1);
                System.out.println("asdfdsfsadfasdfsnoooooooooooooo funciono  dsadasdfasdfsdfsdafas");
                return e = null;
            }
        }

    }

}
