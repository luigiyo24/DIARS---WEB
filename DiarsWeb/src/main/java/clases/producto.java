
package clases;

public class producto {
private String idproducto;
private String producto;
private Float stock_min;
private Float stock_max;
private Integer estado;

    public producto() {
    }

    public producto(String idproducto, String producto, Float stock_min, Float stock_max, Integer estado) {
        this.idproducto = idproducto;
        this.producto = producto;
        this.stock_min = stock_min;
        this.stock_max = stock_max;
        this.estado = estado;
    }

    public String getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(String idproducto) {
        this.idproducto = idproducto;
    }

    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    public Float getStock_min() {
        return stock_min;
    }

    public void setStock_min(Float stock_min) {
        this.stock_min = stock_min;
    }

    public Float getStock_max() {
        return stock_max;
    }

    public void setStock_max(Float stock_max) {
        this.stock_max = stock_max;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }
    
    
}