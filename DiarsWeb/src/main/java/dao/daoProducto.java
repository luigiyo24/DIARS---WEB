package dao;

import ConexionBD.Conexion;
import clases.producto;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class daoProducto {

    ArrayList<producto> pro ;
    public daoProducto() {
        
    }
    
    public List<producto> getProducto(){
        List<producto> lista = new ArrayList();
        String sql = "select * from producto";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                producto p = new producto(rs.getString(1),rs.getString(2),rs.getFloat(3),rs.getFloat(4),rs.getInt(5));
                lista.add(p);
                
            }
            rs.close();

            rs = null;
            c.close();
            c = null;
        } catch (SQLException ex) {
            Logger.getLogger(daoProducto.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
            } catch (SQLException ex1) {
                Logger.getLogger(daoProducto.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return lista;
    }
    
    public void cargar_tabla_producto(DefaultTableModel dtmtable,JTable jm) {
        
            pro=(ArrayList)getProducto();
            dtmtable.setRowCount(0);//Limpia las filas del JTable
            pro.stream().map((p) -> {
                Object vec[] = new Object[5];
                vec[0] = p.getIdproducto();
                vec[1] = p.getProducto();
                vec[2] = p.getStock_min();
                vec[3] = p.getStock_max();
                if(p.getEstado()==1)
                {
                    vec[4]="ACTIVO";
                }else
                    vec[4]="DESACTIVADO";
             
            return vec;
        }).forEachOrdered((vec) -> {
            //agregar al JTable
            dtmtable.addRow(vec);
        });
            jm.setModel(dtmtable);
    }

    public int insertar_producto(producto p)
    {
        int i;
        Connection c = null;
        String sql="insert into producto values(fn_idproducto(),?,?,?,?)";
        try {
            c= new Conexion().getMysql();
            PreparedStatement ps = c.prepareStatement(sql);
            
            ps.setString(1,p.getProducto().toUpperCase());
            ps.setFloat(2,p.getStock_min());
            ps.setFloat(3,p.getStock_max());
            ps.setInt(4,p.getEstado());
            
            int rs = ps.executeUpdate();
            
            c.close();
            c=null;
            ps.close();
            ps= null;
            i=1;
        } catch (SQLException ex) {
            Logger.getLogger(daoProducto.class.getName()).log(Level.SEVERE, null, ex);
            i=0;
        }
        return i;
    }
    
    
    public int modificar_producto(producto p)
    {
        int i;
        Connection c = null;
        String sql="UPDATE producto SET PRODUCTO=?,STOCK_MIN = ?, STOCK_ACTU = ?, ESTADO = ? WHERE (IDPRODUCTOS = ?)";
        try {
            c= new Conexion().getMysql();
            PreparedStatement ps = c.prepareStatement(sql);
            
            ps.setString(1,p.getProducto().toUpperCase());
            ps.setFloat(2,p.getStock_min());
            ps.setFloat(3,p.getStock_max());
            ps.setInt(4,p.getEstado());
            ps.setString(5,p.getIdproducto().toUpperCase());

            int rs = ps.executeUpdate();
            
            c.close();
            c=null;
            ps.close();
            ps= null;
            i=1;
        } catch (SQLException ex) {
            Logger.getLogger(daoProducto.class.getName()).log(Level.SEVERE, null, ex);
            i=0;
        }
        return i;
    }
}
