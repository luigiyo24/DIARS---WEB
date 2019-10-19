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
public class departamento {
    
    private String iddepartamento;
    private String departamento;

    public departamento() {
    }

    public departamento(String iddepartamento, String departamento) {
        this.iddepartamento = iddepartamento;
        this.departamento = departamento;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    
    
    
}
