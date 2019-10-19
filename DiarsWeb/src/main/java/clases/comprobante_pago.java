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
public class comprobante_pago {
    
    
    private String idcomprobante;
    private String comprobante;
    private Integer estado;

    public comprobante_pago() {
    }
    
    public comprobante_pago(String idcomprobante, String comprobante, Integer estado) {
        this.idcomprobante = idcomprobante;
        this.comprobante = comprobante;
        this.estado = estado;
    }

    public String getIdcomprobante() {
        return idcomprobante;
    }

    public void setIdcomprobante(String idcomprobante) {
        this.idcomprobante = idcomprobante;
    }

    public String getComprobante() {
        return comprobante;
    }

    public void setComprobante(String comprobante) {
        this.comprobante = comprobante;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    
    
    
    
}
