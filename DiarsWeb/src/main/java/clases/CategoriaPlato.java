/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Luigi
 */
public class CategoriaPlato {
    String idCategoriaPlato;
    String nombreCategoria;
    
    public CategoriaPlato(){
        idCategoriaPlato = "";
        nombreCategoria = "";
    }

    public CategoriaPlato(String idCategoriaPlato, String nombreCategoria) {
        this.idCategoriaPlato = idCategoriaPlato;
        this.nombreCategoria = nombreCategoria;
    }

    
    public String getIdCategoriaPlato() {
        return idCategoriaPlato;
    }

    public void setIdCategoriaPlato(String idCategoriaPlato) {
        this.idCategoriaPlato = idCategoriaPlato;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }
    
    
}
