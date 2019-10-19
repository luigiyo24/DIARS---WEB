/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import ConexionBD.Conexion;
import clases.cliente;
import clases.comprobante_pago;
import clases.tipo_pago;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
/**
 *
 * @author johan07
 */
public class daoComTip {
    
        ArrayList<comprobante_pago> compro ;
        ArrayList<tipo_pago> tipo ;

    public daoComTip() {
        compro= (ArrayList)getComprobante();
        tipo=(ArrayList)getTipo();
    }
    
    private List<comprobante_pago> getComprobante() {
        List<comprobante_pago> lista = new ArrayList();
        String sql = "SELECT * from comprobante_pago";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                comprobante_pago e = new comprobante_pago(rs.getString("IDCOMPROBANTE"), rs.getString("NOMBRE"),rs.getInt("ESTADO"));
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
    
    private List<tipo_pago> getTipo() {
        List<tipo_pago> lista = new ArrayList();
        String sql = "SELECT * from tipo_pago";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                tipo_pago e = new tipo_pago(rs.getString("IDTIPO"), rs.getString("NOMBRE"));
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

    public void cargarMetodo(JComboBox jm){
        DefaultComboBoxModel dcmdepar = new DefaultComboBoxModel();
        dcmdepar.addElement("Selec. Metodo pago");
        for(tipo_pago tp:tipo)
        {
            dcmdepar.addElement(tp.getTipo_pago());
        }
        
        jm.setModel(dcmdepar);
    }
    
    public void cargarCompro(JComboBox jm)
    {
        DefaultComboBoxModel dcmdepar = new DefaultComboBoxModel();
        dcmdepar.addElement("Selec. Comprobante");
        for(comprobante_pago cp:compro)
        {
            dcmdepar.addElement(cp.getComprobante());
        }
        
        jm.setModel(dcmdepar);
    }
    
        

    
    
}
