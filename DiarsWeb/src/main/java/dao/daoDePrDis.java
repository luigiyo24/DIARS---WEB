/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import ConexionBD.Conexion;
import clases.departamento;
import clases.distrito;
import clases.provincia;
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
public class daoDePrDis {
    private ArrayList<departamento>der;
    private ArrayList<provincia>pro;
    private ArrayList<distrito>dis;
    public daoDePrDis() {
        der=(ArrayList)getdeparta();
        pro=(ArrayList)getprovin();
        dis=(ArrayList)getdistri();
    }
    
    private List<departamento> getdeparta() {
        List<departamento> lista = new ArrayList();
        String sql = "select * from departamento";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                departamento e = new departamento(rs.getString("IDDEPARTAMENTO"), rs.getString("DEPARTAMENTO"));
                System.out.println(e.getIddepartamento()+ " " + e.getDepartamento());
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
    
    
    private List<provincia> getprovin() {
        List<provincia> lista = new ArrayList();
        String sql = "select * from provincia";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                provincia e = new provincia(rs.getString("IDPROVINCIA"), rs.getString("PROVINCIA"),rs.getString("IDDEPARTAMENTO"));
                System.out.println(e.getIdprovincia()+ " " + e.getProvincia()+" " + e.getIddepartamento());
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
    
    public List<distrito> getdistri() {
        List<distrito> lista = new ArrayList();
        String sql = "select * from distrito";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                distrito e = new distrito(rs.getString("IDDISTRITO"), rs.getString("DISTRITO"),rs.getString("IDPROVINCIA"));
                System.out.println(e.getIddistrito()+ " " + e.getDistrito()+" " + e.getIdprovincia());
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
    
    public void cargarDepartame(JComboBox jm)
    {
        DefaultComboBoxModel dcmdepar = new DefaultComboBoxModel();
        dcmdepar.addElement("Selec. Departamento");
        for(departamento de:der)
        {
            dcmdepar.addElement(de.getDepartamento());
        }
        
        jm.setModel(dcmdepar);
    }
    
    public void cargarProvi(JComboBox jm,String depar)
    {
        
        DefaultComboBoxModel dcmdepar = new DefaultComboBoxModel();
        dcmdepar.addElement("Selec. Provincia");
        for(departamento de:der)
        {
            if(de.getDepartamento().equals(depar))
            {
                for(provincia pr:pro)
                {
                    if(de.getIddepartamento().equals(pr.getIddepartamento()))
                    {
                        dcmdepar.addElement(pr.getProvincia());
                    }
                }
            }
        }
        
        jm.setModel(dcmdepar);
    }
    
    public void cargarDistri(JComboBox jm,String provi)
    {
        
        DefaultComboBoxModel dcmdepar = new DefaultComboBoxModel();
        dcmdepar.addElement("Selec. Distrito");
        for(provincia pr:pro)
        {
            if(pr.getProvincia().equals(provi))
            {
                for(distrito dr:dis)
                {
                    if(pr.getIdprovincia().equals(dr.getIdprovincia()))
                    {
                        dcmdepar.addElement(dr.getDistrito());
                    }
                }
            }
        }
        
        jm.setModel(dcmdepar);
    }
    
    
}