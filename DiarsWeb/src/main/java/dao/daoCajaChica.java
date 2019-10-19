/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import ConexionBD.Conexion;
//import Frames.frmCerrarCaja;
import clases.caja_chica;
import clases.empleado;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author johan07
 */
public class daoCajaChica {

    public daoCajaChica() {
    }

    public void abrir_caja(String nombre, Double aper) {
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_abrir_caja(?,?)}");

            cs.setString(1, nombre);
            cs.setDouble(2, aper);

            int numFAfectadas = cs.executeUpdate();
            if (numFAfectadas > 0) {
                System.out.println("Registro Exitoso");
            }
            c.close();
            c = null;
            cs.close();
            cs = null;
        } catch (Exception e) {
            System.out.println("Registro no Exitoso");

        }
    }

    public void cerrar_caja(String nombre, Double aper) {
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_cerrar_caja()}");
            int numFAfectadas = cs.executeUpdate();
            if (numFAfectadas > 0) {
                System.out.println("cerrar caja Exitoso");
            }
            c.close();
            c = null;
            cs.close();
            cs = null;
        } catch (Exception e) {
            System.out.println("cerrar caja no Exitoso");

        }
    }

    public  caja_chica  getCaja_chica(caja_chica cc) {
        String sql = "select c.IDCAJA,c.VENTA_TOTAL,c.APERTURA,c.TARJETAS,c.EFECTIVO,c.FECHA_INICIO,c.FECHA_FIN,c.ESTADO, concat(p.NOMBRE_RS,' ',p.APELLIDOP,' ',p.APELLIDOM) from caja_chica as c\n" +
"inner join empleado as e on c.idempleado=e.idempleado\n" +
"inner join persona as p on p.idpersona=e.idpersona where fecha_fin is NULL";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            if (rs.next()) { 
                cc=new caja_chica(rs.getDouble(2),rs.getDouble(3) ,rs.getDouble(4) , rs.getDouble(5),0.00, rs.getString(9));
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
        return cc;
    }

}
