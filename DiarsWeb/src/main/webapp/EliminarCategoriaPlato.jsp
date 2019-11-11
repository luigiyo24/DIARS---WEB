<%-- 
    Document   : EliminarCategoriaPlato
    Created on : 11-11-2019, 0:20:40
    Author     : Luigi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.daoCategoriaPlato"%>

<!DOCTYPE html>
<%
        daoCategoriaPlato daoCatPla = new daoCategoriaPlato();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idCatPla = request.getParameter("idCatPla");
            if(daoCatPla.deleteCategoriaPlato(idCatPla)>0){
                response.sendRedirect("frmCategoriaPlato.jsp");
            }
            else{
                out.println("Hola");
            }
        %>
    </body>
</html>
