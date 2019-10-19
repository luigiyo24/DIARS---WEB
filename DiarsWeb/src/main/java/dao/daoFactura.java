/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.io.*;
import java.util.List;
import java.util.ArrayList;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import clases.factura;

public class daoFactura {
    List<factura> ven;
    public daoFactura(){ //constructor

    ven = new ArrayList<factura>();
    }
public void adicionar(factura obj){
        ven.add(obj);
    }
    public factura obtener(int i){
        return ven.get(i);
    }
    public int tamaño(){
        return ven.size();
    }
    public void eliminar(factura obj){
        ven.remove(obj);
    }
        public factura buscar(int cod){
        for(factura obj:ven){
            if(cod==obj.getCod())
                return obj;
        }
        return null;
    }
    public int getCorrelativoAcc(){
       /*ArrayList vacio  1  2  3  4*/
       if(tamaño() == 0)
           return 1;
       else{
          return obtener(tamaño() - 1).getCod()+ 1;
       }
    }

    public double totalPension(){
       double sum =0; 
      for(int i=0;i<tamaño();i++){
           sum=sum+ven.get(i).getPrecio()*ven.get(i).getCantidad();
      }
      return sum;
    }
    public double igv(double m){
       double sum; 
       sum=totalPension()*m;
      return sum;
    }
    public double total(double m){
       double sum ; 
       sum=m+totalPension();
      return sum;
    }
    
     public void grabar(String nom){
      try{  
         PrintWriter pw;
         String linea;
         pw = new PrintWriter(new FileWriter(nom));         
         for(factura obj:ven){
             linea = (obj.getCod()+";"+obj.getProd() + ";" + obj.getPrecio() + ";" + obj.getCantidad()
                        + ";" + obj.getPrecio()*obj.getCantidad());
                     
             pw.println(linea); 
         }  
         pw.close();
      }
      catch(Exception e){
         System.out.println(e.getMessage());
      }      
    }
    public void cargar(String nom){
    try{
       BufferedReader br;
       String linea = null;
       String[] array = null;
       br = new BufferedReader(new FileReader(nom));
       
       while((linea = br.readLine())!= null){
         array = linea.split(";");
         factura a = new factura(Integer.parseInt(array[0].trim()),
                 array[0].trim(),
                 Double.parseDouble(array[1].trim()),
                 Integer.parseInt(array[2].trim()),
                 Double.parseDouble(array[3].trim())       
         );
         adicionar(a);
       }
       br.close();
    }
    catch(Exception e){
      System.out.println(e.getMessage());
    }
    }
    
}
