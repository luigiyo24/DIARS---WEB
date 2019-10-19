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
public class fact {
    private int codigo;
    private String Cliente;
    private int codDetalle;
    private String fechaCompra;
    private String estado;

    public fact() {
    }

    public fact(int codigo, String Cliente, int codDetalle, String fechaCompra, String estado) {
        this.codigo = codigo;
        this.Cliente = Cliente;
        this.codDetalle = codDetalle;
        this.fechaCompra = fechaCompra;
        this.estado = estado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }


    public int getCodDetalle() {
        return codDetalle;
    }

    public void setCodDetalle(int codDetalle) {
        this.codDetalle = codDetalle;
    }

    public String getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(String fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the Cliente
     */
    public String getCliente() {
        return Cliente;
    }

    /**
     * @param Cliente the Cliente to set
     */
    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }
    
}
