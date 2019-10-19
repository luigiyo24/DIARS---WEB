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
public class TipoCargo {
    String idCargoEmpleado;
    String nombreCargoEmpleado;

    public TipoCargo(){
    }
    
    public TipoCargo(String idCargoEmpleado, String nombreCargoEmpleado) {
        this.idCargoEmpleado = idCargoEmpleado;
        this.nombreCargoEmpleado = nombreCargoEmpleado;
    }

    
    
    public String getIdCargoEmpleado() {
        return idCargoEmpleado;
    }

    public void setIdCargoEmpleado(String idCargoEmpleado) {
        this.idCargoEmpleado = idCargoEmpleado;
    }

    public String getNombreCargoEmpleado() {
        return nombreCargoEmpleado;
    }

    public void setNombreCargoEmpleado(String nombreCargoEmpleado) {
        this.nombreCargoEmpleado = nombreCargoEmpleado;
    }
    
    
    
}
