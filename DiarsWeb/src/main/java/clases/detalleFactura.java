/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Josias
 */
public class detalleFactura {
    private int codDetalle;
    private int codProd;
    private int cantidad;
    private double precioUnidad;
    private double subTotal;
    private double igv;
    private double totalPago;

    public detalleFactura() {
    }

    public detalleFactura(int codDetalle, int codProd, int cantidad, double precioUnidad, double subTotal, double igv, double totalPago) {
        this.codDetalle = codDetalle;
        this.codProd = codProd;
        this.cantidad = cantidad;
        this.precioUnidad = precioUnidad;
        this.subTotal = subTotal;
        this.igv = igv;
        this.totalPago = totalPago;
    }

    public int getCodDetalle() {
        return codDetalle;
    }

    public void setCodDetalle(int codDetalle) {
        this.codDetalle = codDetalle;
    }

    public int getCodProd() {
        return codProd;
    }

    public void setCodProd(int codProd) {
        this.codProd = codProd;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecioUnidad() {
        return precioUnidad;
    }

    public void setPrecioUnidad(double precioUnidad) {
        this.precioUnidad = precioUnidad;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public double getTotalPago() {
        return totalPago;
    }

    public void setTotalPago(double totalPago) {
        this.totalPago = totalPago;
    }
    
}
