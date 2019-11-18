package dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import ConexionBD.Conexion;
import clases.empleado;
import clases.TipoCargo;
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
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author johan07
 */
public class daoEmpleado {

    private ArrayList<empleado> emple;
    private ArrayList<TipoCargo> TipoCargo;
    daousuarios du = new daousuarios();

    public daoEmpleado() {

        emple = (ArrayList) getEmpleado();
        TipoCargo = (ArrayList) getTipoCargo();

    }

    public List<TipoCargo> getTipoCargo() {
        List<TipoCargo> lista = new ArrayList();
        String sql = "select * from cargo";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                TipoCargo tipcar = new TipoCargo(rs.getString("IDCARGO"), rs.getString("CARGO"));
                System.out.println(tipcar.getIdCargoEmpleado() + " " + tipcar.getNombreCargoEmpleado());
                lista.add(tipcar);
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

    public void cargarTipoDeCargo(JComboBox jm) {
        DefaultComboBoxModel TipCarComboCargo = new DefaultComboBoxModel();
        TipCarComboCargo.addElement("Selec. Cargo");
        for (TipoCargo tc : TipoCargo) {
            TipCarComboCargo.addElement(tc.getNombreCargoEmpleado());
        }

        jm.setModel(TipCarComboCargo);
    }

    public List<empleado> getEmpleado() {
        List<empleado> lista = new ArrayList();
        String sql = "SELECT e.idempleado,p.NOMBRE_RS,p.APELLIDOP,p.APELLIDOM,p.CORREO,p.TELEFONO,p.DNI_RUC,p.FECHA_NACI,p.ESTADO,c.CARGO FROM persona as p\n"
                + "inner join empleado as e on e.idpersona=p.idpersona "
                + "inner join CARGO as c on e.IDCARGO=c.IDCARGO ORDER by IDEMPLEADO";
        Connection c = null;
        try {
            c = new Conexion().getMysql();
            ResultSet rs = null;
            PreparedStatement pst = c.prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                empleado e = new empleado(rs.getString("IDEMPLEADO"), rs.getString("NOMBRE_RS"), rs.getString("APELLIDOP"), rs.getString("APELLIDOM"), rs.getString("CORREO"), rs.getLong("TELEFONO"), rs.getLong("DNI_RUC"), rs.getString("FECHA_NACI"), rs.getInt("ESTADO"), rs.getString("CARGO"));
                System.out.println(rs.getString("IDEMPLEADO") + "  " + rs.getString("NOMBRE_RS") + " " + rs.getString("APELLIDOP"));
                lista.add(e);
            }
            rs.close();

            rs = null;
            c.close();
            c = null;
        } catch (SQLException ex) {
            Logger.getLogger(daoEmpleado.class.getName()).log(Level.SEVERE, null, ex);
            try {
                c.close();
                c = null;
            } catch (SQLException ex1) {
                Logger.getLogger(daoEmpleado.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }

        return lista;
    }

    public void cargar_tabla(DefaultTableModel dtmtable, JTable jm) {

        if (tamaño() == 0) {
            JOptionPane.showMessageDialog(null, "Lista sin elementos!!!", "Validar", 2);
        } else {
            dtmtable.setRowCount(0);//Limpia las filas del JTable
            for (empleado cl : emple) {
                Object vec[] = new Object[8];
                vec[0] = cl.getId();
                vec[1] = cl.getNombre() + " " + cl.getApellidop() + " " + cl.getApellidom();
                vec[2] = cl.getCorreo();
                vec[3] = cl.getTelefono();
                vec[4] = cl.getDni();
                vec[5] = cl.getFechaNac();
                if (cl.getEstado() == 1) {
                    vec[6] = "ACTIVO";
                } else {
                    vec[6] = "DESACTIVADO";
                }
                vec[7] = cl.getCargo();
                //agregar al JTable
                dtmtable.addRow(vec);
            }

            jm.setModel(dtmtable);
            jm.getColumnModel().getColumn(0).setPreferredWidth(80);
            jm.getColumnModel().getColumn(1).setPreferredWidth(170);
            jm.getColumnModel().getColumn(2).setPreferredWidth(200);
            jm.getColumnModel().getColumn(3).setPreferredWidth(100);
            jm.getColumnModel().getColumn(4).setPreferredWidth(100);
            jm.getColumnModel().getColumn(5).setPreferredWidth(100);
            jm.getColumnModel().getColumn(6).setPreferredWidth(100);
            jm.getColumnModel().getColumn(7).setPreferredWidth(100);
            jm.setAutoResizeMode(JTable.AUTO_RESIZE_OFF);
            jm.doLayout();
        }

    }

    public void cargar_cabecera(JTable tbl) {
        DefaultTableModel dtmCabecera = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false; //To change body of generated methods, choose Tools | Templates.
            }
        };
        dtmCabecera.addColumn("IDEMPLEADO");
        dtmCabecera.addColumn("NOMBRE Y APELLIDOS/RAZON SOCIAL");
        dtmCabecera.addColumn("CORREO");
        dtmCabecera.addColumn("TELEFONO");
        dtmCabecera.addColumn("DNI/RUC");
        dtmCabecera.addColumn("FECHA NACI.");
        dtmCabecera.addColumn("ESTADO");
        dtmCabecera.addColumn("CARGO");
        tbl.setModel(dtmCabecera);

        cargar_tabla(dtmCabecera, tbl);

    }

    public int tamaño() {
        return emple.size();
    }

    public empleado obtener_cargo(String user,String pass) {
        empleado z = null;
        //String cargo=null;
        usuario u = du.buscar(user,pass);
        if (u == null) {
            return null;
        } else {
            for (empleado e : emple) {
                if (u.getIdEmpleado().equals(e.getId())) {
                    //cargo=e.getCargo();
                    z = e;

                    break;
                }
            }
            return z;
        }
    }

    public String insertEmpleado(String IdCargo, String NombreEmpleado, String ApellidoPatEmpleado, String ApellidoMatEmpleado, String CorreoEmpleado, int TelefonoEmpleado, int DniRucEmpleado, String FechaNacEmpleado, int Estado, String Direccion, String IdDistrito) {
        String respuestaRegistro = null;
        Connection accesoDB;
        try {
            accesoDB = new Conexion().getMysql();
            CallableStatement cs = accesoDB.prepareCall("{call sp_insertEmpleado(?,fn_idempleado(),fn_idpersona(),?,?,?,?,?,?,?,?,fn_idDireccion(),?,?)}");
            cs.setString(1, IdCargo);
            cs.setString(2, NombreEmpleado);
            cs.setString(3, ApellidoPatEmpleado);
            cs.setString(4, ApellidoMatEmpleado);
            cs.setString(5, CorreoEmpleado);
            cs.setInt(6, TelefonoEmpleado);
            cs.setInt(7, DniRucEmpleado);
            cs.setString(8, FechaNacEmpleado);
            cs.setInt(9, Estado);
            cs.setString(10, Direccion);
            cs.setString(11, IdDistrito);

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

    public empleado obtener_id(String nombre) {
        empleado z = null;
        //String cargo=null;

        for (empleado e : emple) {
            if (nombre.equals(e.getNombre())) {
                //cargo=e.getCargo();
                z = e;
                break;
            }
        }
        return z;
    }

    public empleado obtenerEmpleado(String id) {
        empleado z = null;
        //String cargo=null;

        for (empleado e : emple) {
            if (id.equals(e.getId())) {
                //cargo=e.getCargo();
                z = e;
                break;
            }
        }
        return z;
    }
}
