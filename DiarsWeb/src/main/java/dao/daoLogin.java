package dao;
import clases.login;
import java.util.ArrayList;
import java.io.*;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class daoLogin {
    private ArrayList<login>ven;
    private String Archivo;
     
    public daoLogin(String Archivo){
        ven=new ArrayList<login>();
        this.Archivo=Archivo;
        cargar();
    }
    public void adicionar(login a){
        ven.add(a);
    }
    public login obtener (int i){
        return ven.get(i);
    }
    public void eliminar(login a){
        ven.remove(a);   
    }
    public int tamaño(){
        return ven.size();
    }
    public login buscar(String user){
        for(int i=0;i<tamaño();i++){
            if(ven.get(i).getUsuario().equalsIgnoreCase(user)){
                return ven.get(i);
            }
        }
        return null;
    }
    public void listar(DefaultTableModel dtm, JTable t){
      dtm.setRowCount(0);
      for(login obj:ven){
          Object vec[] = new Object[5];
          vec[0]=obj.getNombres();
          vec[1]=obj.getUsuario();
          vec[2]=obj.getContraseña();
          vec[3]=obj.getEncriptada();
          vec[4]=obj.getTipo();
          dtm.addRow(vec);
      }
      t.setModel(dtm);      
    }
        public void grabar(){
        try {
            PrintWriter pw;
            String linea;
            pw=new PrintWriter(new FileWriter (Archivo));
            for(int i=0;i<tamaño();i++){
                linea = obtener(i).getNombres()+";"+
                        obtener(i).getUsuario()+";"+
                        obtener(i).getContraseña()+";"+
                        obtener(i).getEncriptada()+";"+
                        ven.get(i).getTipo();                       
                pw.println(linea);
            }
            pw.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
   public void cargar(){
        try {
            BufferedReader br;
            String linea;
            String[] array=null;
            br=new BufferedReader(new FileReader(Archivo));
            while((linea=br.readLine())!=null){
                array=linea.split(";");
                login a=new login(
                        array[0].trim(),
                        array[1].trim(),
                        array[2].trim(),
                        array[3].trim(),
                        array[4].trim()
                        
                );
                adicionar(a);
            }
            br.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
