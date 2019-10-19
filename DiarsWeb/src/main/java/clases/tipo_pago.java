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
public class tipo_pago {
    
    private String idtipo;
    private String tipo_pago;

    public tipo_pago() {
    }

    public tipo_pago(String idtipo, String tipo_pago) {
        this.idtipo = idtipo;
        this.tipo_pago = tipo_pago;
    }

    public String getIdtipo() {
        return idtipo;
    }

    public void setIdtipo(String idtipo) {
        this.idtipo = idtipo;
    }

    public String getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(String tipo_pago) {
        this.tipo_pago = tipo_pago;
    }
    
    
    
}
