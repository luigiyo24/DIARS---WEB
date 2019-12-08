/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import clases.empleado;
import clases.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.Acceso;
import dao.daoEmpleado;
import dao.daousuarios;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author Luigi
 */
public class ServLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre;
            String contra;
            
            String accion = request.getParameter("accion");
            System.out.println("   "         +accion );
            if(accion.equals("iniciarU"));
            {
                nombre=request.getParameter("txtusername");
                contra=request.getParameter("txtpassword");
                empleado e= new daoEmpleado().obtener_cargo(nombre, contra);
                if(e == null){
                    System.out.println(" contrasena incorrecta");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }else{
                   
                        request.setAttribute("cargo", e.getCargo());
                        request.setAttribute("nombre", e.getNombre());
                        request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
                    
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        System.out.println("dddddddd");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
                System.out.println("123456");

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
