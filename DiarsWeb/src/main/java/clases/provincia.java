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
public class provincia {
    
    private String idprovincia;
    private String provincia;
    private String iddepartamento;

    public provincia() {
    }

    public provincia(String idprovincia, String provincia, String iddepartamento) {
        this.idprovincia = idprovincia;
        this.provincia = provincia;
        this.iddepartamento = iddepartamento;
    }

    public String getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(String idprovincia) {
        this.idprovincia = idprovincia;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }
    
        
}
