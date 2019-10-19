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
public class distrito {
    
    private String iddistrito;
    private String distrito;
    private String idprovincia;

    public distrito() {
    }

    public distrito(String iddistrito, String distrito, String idprovincia) {
        this.iddistrito = iddistrito;
        this.distrito = distrito;
        this.idprovincia = idprovincia;
    }

    public String getIddistrito() {
        return iddistrito;
    }

    public void setIddistrito(String iddistrito) {
        this.iddistrito = iddistrito;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }

    public String getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(String idprovincia) {
        this.idprovincia = idprovincia;
    }    
    
}
