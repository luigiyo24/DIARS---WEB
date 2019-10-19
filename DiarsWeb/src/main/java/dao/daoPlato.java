/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import ConexionBD.Conexion;
import clases.CategoriaPlato;
import clases.Plato;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Luigi
 */
public class daoPlato {

    Conexion conexion;
    ArrayList<CategoriaPlato> cap;
    ArrayList<Plato> Plat;
    daoCategoriaPlato dcp = new daoCategoriaPlato();

    public daoPlato() {
        cap = dcp.listCategoriaPlato();

    }

    public String insertPlato(String Plato, double Precio, int Estado, String IdCategoriaPlato) {
        String respuestaRegistro = null;
        Connection accesoDB;
        try {
            accesoDB = new Conexion().getMysql();
            CallableStatement cs = accesoDB.prepareCall("{call sp_insertPlato(fn_idPlato(),?,?,?,?)}");
            cs.setString(1, Plato);
            cs.setDouble(2, Precio);
            cs.setInt(3, Estado);
            cs.setString(4, IdCategoriaPlato);

            int numFAfectadas = cs.executeUpdate();
            if (numFAfectadas > 0) {
                respuestaRegistro = "Registro Exitoso";
            }
            cs.close();

            cs = null;
            accesoDB.close();
            accesoDB = null;
        } catch (Exception e) {
        }

        return respuestaRegistro;
    }

    public ArrayList<Plato> listPlato(String idCate) {

        ArrayList listaPlato = new ArrayList();
        String Sql;
        Connection c;
        if (idCate == null) {
            Sql = "select * from plato;";
        } else {
            for (CategoriaPlato cp : cap) {
                if (cp.getNombreCategoria().equals(idCate)) {
                    idCate = cp.getIdCategoriaPlato();
                    break;
                }

            }
            Sql = "SELECT * FROM plato where IDCATEGORIA_PLATO='" + idCate + "';";

        }

        try {
            c = new Conexion().getMysql();
            ResultSet rs;
            PreparedStatement pst = c.prepareCall(Sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Plato p = new Plato(rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getString(5));
                listaPlato.add(p);
            }
        } catch (Exception e) {
            System.out.println("no ingreso gg");

        }
        return listaPlato;
    }

    public void cargar_tabla_plato(DefaultTableModel dtmtable, JTable jm, String idCate) {

        Plat = listPlato(idCate);
        dtmtable.setRowCount(0);//Limpia las filas del JTable
        Plat.stream().map((p) -> {
            Object vec[] = new Object[5];
            vec[0] = p.getIdPlato();
            vec[1] = p.getPlato();
            vec[2] = p.getPrecio();
            if (p.getEstado()==1) {
                vec[3] = "ACTIVO";
            } else {
                vec[3] = "DESACTIVADO";
            }
            vec[4] = p.getIdCategoriaPlato();
            return vec;
        }).forEachOrdered((vec) -> {
            //agregar al JTable
            dtmtable.addRow(vec);
        });
        jm.setModel(dtmtable);
    }

    public int editPlato(String IdPlato, String Plato, double Precio, int Estado, String IdCategoriaPlato) {
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_editPLato(?,?,?,?,?)}");
            cs.setString(1, IdPlato);
            cs.setString(2, Plato);
            cs.setDouble(3, Precio);
            cs.setInt(4, Estado);
            cs.setString(5, IdCategoriaPlato);

            numFA = cs.executeUpdate();

            cs.close();

            cs = null;
            c.close();
            c = null;

        } catch (Exception e) {
        }
        return numFA;
    }

    public int deletePlato(String IdPlato){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_deletePlato(?)}");
            cs.setString(1, IdPlato);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }

}
