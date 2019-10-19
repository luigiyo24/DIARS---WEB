package clases;

public class registro {
private String nomb;
private String usu;
private  String contra;



public registro(String p,String pr ,String c){
  
   nomb=p;
   usu=pr;
   contra=c;

}

    /**
     * @return the nomb
     */
    public String getNomb() {
        return nomb;
    }

    /**
     * @param nomb the nomb to set
     */
    public void setNomb(String nomb) {
        this.nomb = nomb;
    }

    /**
     * @return the usu
     */
    public String getUsu() {
        return usu;
    }

    /**
     * @param usu the usu to set
     */
    public void setUsu(String usu) {
        this.usu = usu;
    }

    /**
     * @return the contra
     */
    public String getContra() {
        return contra;
    }

    /**
     * @param contra the contra to set
     */
    public void setContra(String contra) {
        this.contra = contra;
    }

}