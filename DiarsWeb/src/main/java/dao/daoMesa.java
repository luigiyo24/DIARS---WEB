/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import ConexionBD.Conexion;
import clases.Mesa;
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
 * @author johan07
 */
public class daoMesa {

    Conexion conexion;
    private ArrayList<Mesa> me;

    public daoMesa() {

        me = (ArrayList) getMesaColor();
        conexion = new Conexion();
    }

    private List<Mesa> getMesaColor() {
        List<Mesa> mes = new ArrayList();
        String Sql = "select * from mesa";
        Connection c = null;

        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst;
            pst = c.prepareCall(Sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                Mesa e = new Mesa(rs.getString("IDMESA"), rs.getString("NOMBRE"), rs.getInt("ESTADO"), rs.getInt("COLOR"));
                mes.add(e);
            }
            rs.close();
            rs = null;
            pst.close();
            pst = null;
            c.close();
            c = null;
        } catch (SQLException ex) {
            Logger.getLogger(daoMesa.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
            } catch (SQLException ex1) {
                Logger.getLogger(daousuarios.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return mes;
    }

    public void cargar_tabla(DefaultTableModel dtmtable, JTable jm) {
        String a = "DELIVERY";
        boolean bus;

        if (tamaño() == 0) {
            JOptionPane.showMessageDialog(null, "Lista sin elementos!!!", "Validar", 2);
        } else {
            dtmtable.setRowCount(0);//Limpia las filas del JTable
            for (Mesa m : me) {
                Object vec[] = new Object[2];
                bus = m.getMesa().contains(a);
                if (!bus) {
                    System.out.println("palabra encontrada");
                    vec[0] = m.getMesa();
                    vec[1] = m.getColor();
                    //agregar al JTable
                    dtmtable.addRow(vec);
                } else
                    System.out.println("palabra no encontrada");

            }
            jm.setModel(dtmtable);
        }

    }

    public void cargar_cabecera(JTable tbl) {
        DefaultTableModel dtmCabecera = new DefaultTableModel();
        dtmCabecera.addColumn("MESA");
        dtmCabecera.addColumn("COLOR");
        tbl.setModel(dtmCabecera);
        cargar_tabla(dtmCabecera, tbl);

    }
    
    public String get_idMesa(String nombre){
        for(Mesa m:me){
            if(nombre.equals(m.getMesa()))
            {
                return m.getIdmesa();
                
            }
        }
        return null;
    }

    public int tamaño() {
        return me.size();
    }

    public ArrayList<Mesa> listMesa() {
        ArrayList listaMesa = new ArrayList();
        Mesa mesa;
        try {
            Connection acceDB = conexion.getMysql();
            PreparedStatement ps = acceDB.prepareStatement("select * from mesa");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                mesa = new Mesa();
                mesa.setIdmesa(rs.getString(1));
                mesa.setMesa(rs.getString(2));
                mesa.setEstado(rs.getInt(3));
                mesa.setColor(rs.getInt(4));
                listaMesa.add(mesa);
            }
        } catch (Exception e) {
        }
        return listaMesa;
    }
    
    public String insertMesa(String Nombre,int estado,int color){
        String respuestaRegistro = null;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_insertMesa(fn_idMesa(),?,?,?)}");
            
            cs.setString(1, Nombre);
            cs.setInt(2, estado);
            cs.setInt(3, color);
            
            int numFAfectadas = cs.executeUpdate();
            if(numFAfectadas>0){
                respuestaRegistro = "Registro Exitoso";
            }
        } catch (Exception e) {
        }
        
        return respuestaRegistro;
    }
    
    public int editMesa(String IdMesa,String Nombre){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_editMesa(?,?)}");
            cs.setString(1, IdMesa);
            cs.setString(2, Nombre);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }
    
    public int deleteMesa(String IdMesa){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_deleteMesa(?)}");
            cs.setString(1, IdMesa);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }

}
