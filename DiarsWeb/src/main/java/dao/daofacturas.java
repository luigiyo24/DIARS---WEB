/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import clases.fact;

/**
 *
 * @author abner
 */
public class daofacturas {
    List<fact> fact;
    String Archivo;//Nombre del Archivo
    public daofacturas(String Archivo){
      fact = new ArrayList<fact>();
      this.Archivo = Archivo;
      cargar();
    }
    //Agregar Elementos a la lista  - coleccion
    public void adicionar(fact a){
       fact.add(a);
    }
    //Obtener elementos de la lista
    public fact obtener(int i){
       return fact.get(i);
    }
    //Eliminar un objeto
    public void eliminar(fact a){
        fact.remove(a);
    }
    //El tamaño total de los elementos de la lista
    public int tamaño(){
      return fact.size();
    }
    //Metodo para buscar objetos por codigo
//    public fact buscarFactura(String cod){
//       for(int i=0;i<tamaño();i++){
//           if(fact.get(i).getCodigo().equals(cod))
//                return fact.get(i);
//       }    
//       return null;
//    }
    public fact buscarPorDet(int cod){
       for(int i=0;i<tamaño();i++){
           if(fact.get(i).getCodDetalle() == cod)
                return fact.get(i);
       }    
       return null;
    }
    /*Correlativo*/
    public int getCorrelativoAcc(){
       /*ArrayList vacio  1  2  3  4*/
       if(tamaño() == 0)
           return 1;
       else{
           int b;
           b=(obtener(tamaño() - 1).getCodigo())+ 1;
          return b;
       }
    }
    /*Implementar Archivos*/
    public void listar(JTable t,DefaultTableModel dtm){
      dtm.setRowCount(0);
//       for(fact obj:fact){
//          Object vec[]=new Object[5];
//          vec[0]    =   obj.getCodigo();
//          vec[1]    =   obj.getCodCliente();
//          vec[2]    =   obj.getCodDetalle();
//          vec[3]    =   obj.getFechaCompra();
//          vec[4]    =   obj.getEstado();
//          dtm.addRow(vec);
//       }
       t.setModel(dtm);
    }

     /*Implementar Archivos*/
    public void grabar(){
//      try{  
//         PrintWriter pw;
//         String linea;
//         pw = new PrintWriter(new FileWriter(Archivo));         
//         for(fact obj:fact){
//             linea = (obj.getCodigo() + ";" +
//                      obj.getCodCliente()+ ";" +
//                      obj.getCodDetalle()+ ";" +
//                      obj.getFechaCompra()+ ";" +
//                      obj.getEstado()
//                     );
//             pw.println(linea); 
//         }  
//         pw.close();
//      }
//      catch(Exception e){
//         System.out.println(e.getMessage());
//      }      
    }
     public void cargar(){
//    try{
//       BufferedReader br;
//       String linea = null;
//       String[] array = null;
//       br = new BufferedReader(new FileReader(Archivo));
//       
//       while((linea = br.readLine())!= null){
//         array = linea.split(";");
//         fact e = new fact(    Integer.parseInt(array[0].trim()),
//                               Integer.parseInt(array[1].trim()),
//                               Integer.parseInt(array[2].trim()), 
//                               array[3].trim(),
//                               array[4].trim());
//         adicionar(e);
//       }
//       br.close();
//    }
//    catch(Exception e){
//      System.out.println(e.getMessage());
//    }
    }  
    
}
