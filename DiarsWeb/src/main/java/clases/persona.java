/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.text.DecimalFormat;
import java.util.Date;

/**
 *
 * @author Luigi
 */
public class persona {
    protected String Id;//
    protected String Nombre;//
    protected String Apellidop;//
    protected String Apellidom;//
    protected String Correo;//
    protected Long Telefono;//
    protected Long Dni;//
    protected String FechaNac;
    protected Integer Estado;//

    public persona() {
    }

    public persona(String Id, String Nombre, String Apellidop, String Apellidom, String Correo, Long Telefono, Long Dni, String FechaNac, Integer Estado) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.Apellidop = Apellidop;
        this.Apellidom = Apellidom;
        this.Correo = Correo;
        this.Telefono = Telefono;
        this.Dni = Dni;
        this.FechaNac = FechaNac;
        this.Estado = Estado;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidop() {
        return Apellidop;
    }

    public void setApellidop(String Apellidop) {
        this.Apellidop = Apellidop;
    }

    public String getApellidom() {
        return Apellidom;
    }

    public void setApellidom(String Apellidom) {
        this.Apellidom = Apellidom;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public Long getTelefono() {
        return Telefono;
    }

    public void setTelefono(long Telefono) {
        this.Telefono = Telefono;
    }

    public Long getDni() {
        return Dni;
    }

    public void setDni(long Dni) {
        this.Dni = Dni;
    }

    public String getFechaNac() {
        return FechaNac;
    }

    public void setFechaNac(String FechaNac) {
        this.FechaNac = FechaNac;
    }

    public Integer getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }
    
}   