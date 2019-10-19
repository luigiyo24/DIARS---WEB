
package clases;

public class factura {
    
private int cod;
private String prod;
private double precio;
private int cantidad;
private double total;


    public factura(int cod,String prod, double precio, int cantidad,double total) {
        this.cod=cod;
        this.prod = prod;
        this.precio = precio;
        this.cantidad = cantidad;
        this.total = total;

    }

    /**
     * @return the prod
     */
    public String getProd() {
        return prod;
    }

    /**
     * @param prod the prod to set
     */
    public void setProd(String prod) {
        this.prod = prod;
    }

    /**
     * @return the precio
     */
    public double getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(double precio) {
        this.precio = precio;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the total
     */
    public double getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(double total) {
        this.total = total;
    }

    /**
     * @return the cod
     */
    public int getCod() {
        return cod;
    }

    /**
     * @param cod the cod to set
     */
    public void setCod(int cod) {
        this.cod = cod;
    }


}
