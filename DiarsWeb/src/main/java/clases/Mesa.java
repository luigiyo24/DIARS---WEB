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
public class Mesa {
    
    private String idmesa;
    private String mesa;
    private Integer estado;
    private Integer color;

    public Mesa() {
    }

    public Mesa(String idmesa, String mesa, Integer estado, Integer color) {
        this.idmesa = idmesa;
        this.mesa = mesa;
        this.estado = estado;
        this.color = color;
    }

    public String getIdmesa() {
        return idmesa;
    }

    public void setIdmesa(String idmesa) {
        this.idmesa = idmesa;
    }

    public String getMesa() {
        return mesa;
    }

    public void setMesa(String mesa) {
        this.mesa = mesa;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public Integer getColor() {
        return color;
    }

    public void setColor(Integer color) {
        this.color = color;
    }
    
    
    
}
