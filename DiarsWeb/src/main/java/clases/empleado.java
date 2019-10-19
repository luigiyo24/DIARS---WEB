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
public class empleado extends persona{

    private String cargo;
    
    public empleado() {
    }
    public empleado(String Id, String Nombre, String Apellidop, String Apellidom, String Correo, Long Telefono, Long Dni, String FechaNac, Integer Estado,String cargo) {
        super(Id, Nombre, Apellidop, Apellidom, Correo, Telefono, Dni, FechaNac, Estado);
        this.cargo=cargo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    
    
}
