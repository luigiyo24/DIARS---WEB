/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;

/**
 *
 * @author johan07
 */
public class Colorear_filas extends DefaultTableCellRenderer{
    
@Override
public Component getTableCellRendererComponent(JTable table,Object value,boolean Selected,boolean hasFocus,int row,int col){

    super.getTableCellRendererComponent(table, value, Selected, hasFocus, row, col);
    
    
    if(table.getValueAt(row, 1).toString().equals("0"))
    {
        setBackground(Color.cyan);
    }
    
    if(table.getValueAt(row, 1).toString().equals("1"))
    {
        setBackground(Color.yellow);
    }
    
    if(table.getValueAt(row, 1).toString().equals("2"))
    {
        setBackground(Color.red);
    }
    
    return this;
}
    
    
}
