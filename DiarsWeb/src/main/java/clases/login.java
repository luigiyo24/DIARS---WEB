package clases;

public class login {
    private String nombres;
    private String usuario;
    private String Contraseña;
    private String encriptada;
    private String tipo;

    public login( String nombres, String usuario, String Contraseña,String Encriptada, String tipo) {
   
        this.nombres = nombres;
        this.usuario = usuario;
        this.Contraseña = Contraseña;
        this.encriptada= Encriptada;
        this.tipo = tipo;
    }
    
    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the encriptada
     */
    public String getEncriptada() {
        return encriptada;
    }

    /**
     * @param encriptada the encriptada to set
     */
    public void setEncriptada(String encriptada) {
        this.encriptada = encriptada;
    }


    
}
