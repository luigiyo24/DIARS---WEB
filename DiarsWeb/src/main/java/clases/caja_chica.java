/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author johan
 */

public class caja_chica {
    
    private String cajero;
    private Double Venta_total;
    private Double Tarjeta;
    private Double apertura;
    private Double efectivo;
    private Double Egreso;

    public caja_chica() {
    }

    public caja_chica(Double Venta_total, Double Tarjeta, Double apertura, Double efectivo, Double Egreso,String cajero ) {
        
        this.Venta_total = Venta_total;
        this.Tarjeta = Tarjeta;
        this.apertura = apertura;
        this.efectivo = efectivo;
        this.Egreso = Egreso;
        this.cajero = cajero;
    }
 
    public String getCajero() {
        return cajero;
    }

    public void setCajero(String cajero) {
        this.cajero = cajero;
    }

    public Double getVenta_total() {
        return Venta_total;
    }

    public void setVenta_total(Double Venta_total) {
        this.Venta_total = Venta_total;
    }

    public Double getTarjeta() {
        return Tarjeta;
    }

    public void setTarjeta(Double Tarjeta) {
        this.Tarjeta = Tarjeta;
    }

    public Double getApertura() {
        return apertura;
    }

    public void setApertura(Double apertura) {
        this.apertura = apertura;
    }

    public Double getEfectivo() {
        return efectivo;
    }

    public void setEfectivo(Double efectivo) {
        this.efectivo = efectivo;
    }

    public Double getEgreso() {
        return Egreso;
    }

    public void setEgreso(Double Egreso) {
        this.Egreso = Egreso;
    }
    
    

}
