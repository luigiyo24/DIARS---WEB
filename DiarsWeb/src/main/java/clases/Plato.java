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
public class Plato {
    String IdPlato;
    String Plato;
    double Precio; 
    int Estado;
    String IdCategoriaPlato;

    public Plato(){
    }
    
    public Plato(String IdPlato, String Plato, double Precio, int Estado, String IdCategoriaPlato) {
        this.IdPlato = IdPlato;
        this.Plato = Plato;
        this.Precio = Precio;
        this.Estado = Estado;
        this.IdCategoriaPlato = IdCategoriaPlato;
    }

    
    
    public String getIdPlato() {
        return IdPlato;
    }

    public void setIdPlato(String IdPlato) {
        this.IdPlato = IdPlato;
    }

    public String getPlato() {
        return Plato;
    }

    public void setPlato(String Plato) {
        this.Plato = Plato;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getIdCategoriaPlato() {
        return IdCategoriaPlato;
    }

    public void setIdCategoriaPlato(String IdCategoriaPlato) {
        this.IdCategoriaPlato = IdCategoriaPlato;
    }
    
    
}
