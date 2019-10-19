/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;
import dao.daoPlato;
import clases.Plato;
import java.util.ArrayList;

/**
 *
 * @author johan07
 */
public class pedido {

    private String PLATO;
    private Integer CANTIDAD;
    private String DESCRIPCION;
    private Double PRECIO;
    private Double IMPORTE;
    public pedido() {
    }

    public pedido(String PLATO, Integer CANTIDAD, String DESCRIPCION, Double PRECIO, Double IMPORTE) {
        this.PLATO = PLATO;
        this.CANTIDAD = CANTIDAD;
        this.DESCRIPCION = DESCRIPCION;
        this.PRECIO = PRECIO;
        this.IMPORTE = IMPORTE;
    }

    public String getPLATO() {
        return PLATO;
    }

    public void setPLATO(String PLATO) {
        this.PLATO = PLATO;
    }

    public Integer getCANTIDAD() {
        return CANTIDAD;
    }

    public void setCANTIDAD(Integer CANTIDAD) {
        this.CANTIDAD = CANTIDAD;
    }

    public String getDESCRIPCION() {
        return DESCRIPCION;
    }

    public void setDESCRIPCION(String DESCRIPCION) {
        this.DESCRIPCION = DESCRIPCION;
    }

    public Double getPRECIO() {
        return PRECIO;
    }

    public void setPRECIO(Double PRECIO) {
        this.PRECIO = PRECIO;
    }

    public Double getIMPORTE() {
        return IMPORTE;
    }

    public void setIMPORTE(Double IMPORTE) {
        this.IMPORTE = IMPORTE;
    }

    
}
