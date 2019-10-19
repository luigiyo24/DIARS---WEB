/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author johan07
 */
public class detalle_plato {
    
    private String idproducto;
    private String producto;
    private String idplato;
    private String plato;
    private Double cantidad;
    private Integer estado;

    public detalle_plato() {
    }

    public detalle_plato( String idproducto, String producto, String idplato, String plato, Double cantidad, Integer estado) {
        this.idproducto = idproducto;
        this.producto = producto;
        this.idplato = idplato;
        this.plato = plato;
        this.cantidad = cantidad;
        this.estado = estado;
    }

    public String getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(String idproducto) {
        this.idproducto = idproducto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public String getIdplato() {
        return idplato;
    }

    public void setIdplato(String idplato) {
        this.idplato = idplato;
    }

    public String getPlato() {
        return plato;
    }

    public void setPlato(String plato) {
        this.plato = plato;
    }

    public Double getCantidad() {
        return cantidad;
    }

    public void setCantidad(Double cantidad) {
        this.cantidad = cantidad;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }
    
    
    
}
