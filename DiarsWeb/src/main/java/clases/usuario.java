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
public class usuario {

    public usuario() {
    }

    public usuario(String idUsuario, String Usuario, String Contraseña, int Estado, String idEmpleado,String cargo) {
        this.idUsuario = idUsuario;
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
        this.Estado = Estado;
        this.idEmpleado = idEmpleado;
        this.Cargo = cargo;
    }
    
     
    private String idUsuario;
    private String Usuario;
    private String Contraseña;
    private int Estado;
    private String idEmpleado;
    private String Cargo;

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(String idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String cargo) {
        this.Cargo = cargo;
    }
}
