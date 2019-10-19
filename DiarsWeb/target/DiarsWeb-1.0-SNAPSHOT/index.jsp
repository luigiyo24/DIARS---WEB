<%-- 
    Document   : index
    Created on : 13-10-2019, 1:56:57
    Author     : Luigi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%
    String CARGO_ADMINISTRADOR = "Administrador";
    String CARGO_CAJERO = "Cajero";
    String CARGO_MOZO = "Mozo";
    String CARGO_MAITRE = "Maitre";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/css/mdb.min.css" rel="stylesheet">

    <link rel="stylesheet" href="CSS/login.css">
</head>

<body>
    <div class="modal-dialog text-center">
        <div class="col-sm-8 main-section">
            <div class="modal-content user-img special-color">
                    <div class="col-12 user-img">
                        <img src="Images/student.svg" alt="" class="img-login-height">
                    </div>
                <form action="ServLogin" class="col-12" method="POST">
                    <div class="form-group" id="user-group">
                        <input type="text" name="txtusername" class="form-control" placeholder="Nombre del Usuario">
                    </div>
                    <div class="form-group" id="password-group">
                        <input type="password" name="txtpassword" class="form-control" placeholder="Contraseña">
                    </div>
                    <input type="submit" name="btnLogin" class="btn btn-info"><i class="fas fa-sign-in-alt"></i> Ingresar</input>
                </form>
            </div>
        </div>
    </div>


    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js">
    </script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/js/mdb.min.js">
    </script>
    
    
    <%
        HttpSession sesion = request.getSession();
        String cargo="";
        if(request.getAttribute("cargo")!=null){
            cargo = (String)request.getAttribute("cargo");
            if(cargo.equals(CARGO_CAJERO)){
                sesion.setAttribute("nombre", request.getAttribute("nombre"));
                sesion.setAttribute("cargo", cargo);
                response.sendRedirect("CategoriaPlato.jsp");
            }
        }

    %>
</body>

</html>
