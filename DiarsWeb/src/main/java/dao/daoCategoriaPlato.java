/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import ConexionBD.Conexion;
import clases.CategoriaPlato;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JComboBox;
/**
 *
 * @author Luigi
 */
public class daoCategoriaPlato {
    
    public daoCategoriaPlato(){
    }
    
    
    public String insertCategoriaPlato(String nombreCategoria){
        String respuestaRegistro = null;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_insertCategoriaPlato(fn_idcategoria_plato(),?)}");
            
            cs.setString(1, nombreCategoria);
            
            int numFAfectadas = cs.executeUpdate();
            if(numFAfectadas>0){
                respuestaRegistro = "Registro Exitoso";
            }
        } catch (Exception e) {
        }
        
        return respuestaRegistro;
    }
    
    public ArrayList<CategoriaPlato> listCategoriaPlato(){
        ArrayList listaCategoriaPlato = new ArrayList();
        CategoriaPlato categoriaplato;
        Connection c;
        try {
            c=new Conexion().getMysql();
            PreparedStatement ps = c.prepareStatement("select * from categoria_plato");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                categoriaplato = new CategoriaPlato();
                categoriaplato.setIdCategoriaPlato(rs.getString(1));
                categoriaplato.setNombreCategoria(rs.getString(2));
                listaCategoriaPlato.add(categoriaplato);
            }
        } catch (Exception e) {
        }
        return listaCategoriaPlato;
    }
    
    public int editCategoriaPlato(String idCategoriaPlato,String nombreCategoria){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_editCategoriaPlato(?,?)}");
            cs.setString(1, idCategoriaPlato);
            cs.setString(2, nombreCategoria);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }
    
    public int deleteCategoriaPlato(String idCategoriaPlato){
        int numFA = 0;
        Connection c;
        try {
            c = new Conexion().getMysql();
            CallableStatement cs = c.prepareCall("{call sp_deleteCategoriaPlato(?)}");
            cs.setString(1, idCategoriaPlato);
            
            numFA = cs.executeUpdate();
            
        } catch (Exception e) {
        }
        return numFA;
    }
    
    public void cargarCategoriaPlato(JComboBox jm)
    {
        DefaultComboBoxModel CatPlaComboCat = new DefaultComboBoxModel();
        CatPlaComboCat.addElement("Selec. Categoria");
        for(CategoriaPlato cp:listCategoriaPlato())
        {
            CatPlaComboCat.addElement(cp.getNombreCategoria());
            System.out.println(cp.getIdCategoriaPlato()+"   "+cp.getNombreCategoria());
        }
        
        jm.setModel(CatPlaComboCat);
    }
    
}
