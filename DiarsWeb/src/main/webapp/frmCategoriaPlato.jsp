<%-- 
    Document   : CategoriaPlato
    Created on : 12-10-2019, 18:31:52
    Author     : Luigi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.daoCategoriaPlato"%>
<%@page import="clases.CategoriaPlato"%>
<!DOCTYPE html>
<%
    daoCategoriaPlato daoCatPla = new daoCategoriaPlato();
    
%>


<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.5">
  <title>Categoria Plato - Machis</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/dashboard/">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/css/mdb.min.css" rel="stylesheet">


  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
    </style>
    <!-- Custom styles for this template -->
    <link href="CSS/dashboard.css" rel="stylesheet">
    <link rel="stylesheet" href="CSS/main.css">

</head>

<body>
  <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="dashboard.html">Restaurante Machis</a>
    <ul class="navbar-nav px-3">
      <li class="nav-item text-nowrap">
        <a class="nav-link" href="#">Salir</a>
      </li>
    </ul>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <nav class="col-md-2 d-none d-md-block bg-light sidebar">
        <div class="sidebar-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link " href="Dashboard.jsp">
                  <img src="Images/Icons/home.png" alt="">                
                Inicio <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Ventas.jsp">
                  <img src="Images/Icons/sales.png" alt="">
                Ventas
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Delivery.jsp">
                  <img src="Images/Icons/delivery.png" alt="">
                Delivery
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Clientes.jsp">
                  <img src="Images/Icons/client.png" alt="">
                Clientes
              </a>
            </li>
          </ul>

          <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>Negocio Interno</span>
          </h6>
          <ul class="nav flex-column mb-2">
            <li class="nav-item">
                <a class="nav-link icon " href="Usuario.jsp">
                <img src="Images/Icons/user.png" alt="">
                Usuarios
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Platos.jsp">
                <img src="Images/Icons/food.png" alt="">
                Platos
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Mesas.jsp">
                  <img src="Images/Icons/table.png" alt="">
                Mesas
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Producto.jsp">
                  <img src="Images/Icons/product.png" alt="">
                Productos
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="CategoriaPlato.jsp">
                <img src="Images/Icons/food-category.png" alt="">
                Categoria de Platos
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
        <div
          class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Categoria Plato</h1>
        </div>
        <ul class="nav md-pills nav-justified pills-success ">
          <li class="nav-item border">
            <a class="nav-link  bg-botton active" data-toggle="tab" href="#panel52" role="tab" id="modCatPla1">Categoria Plato</a>
          </li>
          <li class="nav-item border">
            <a class="nav-link bg-botton" data-toggle="tab" href="#panel51" role="tab" id="modCatPla2">Buscar Categoria Plato</a>
          </li>
        </ul>
        <div class="tab-content pt-2 pl-1" id="pills-tabContent">
          <div class="tab-pane fade show active" id="panel52" role="tabpanel" aria-labelledby="pills-home-tab">
            <form action="" id="formCategoriaPlato" name="formCategoriaPlato">
              <div class="container">
                <div class="row">
                  <div class="col-8 grey lighten-5">
                    <div class="md-form my-5 pb-4">
                      <input type="text" name="inputCategoriaPlato" id="inputCategoriaPlato" class="form-control">
                      <label for="inputCategoriaPlato" id="lblCategoriaPlato">Categoria Plato</label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg btn-block ">Registrar Categoria Plato</button>
                  </div>
                  <div class="col-4 grey lighten-5 d-flex flex-column justify-content-around">
                    <a href="#" class="btn btn-outline-primary waves-effect">ACTUALIZAR</a>
                    <a href="#" class="btn btn-outline-primary waves-effect">BORRAR</a>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div class="tab-pane fade " id="panel51" role="tabpanel" aria-labelledby="pills-profile-tab">
            <form class="form-inline ">
              <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search"
                aria-label="Search">
              <i class="fas fa-search" aria-hidden="true"></i>
            </form> 
            <table class="table table-hover">
    <thead>
      <tr>
          <th class="text-center" scope="col">#</th>
          <th class="text-center" scope="col">Nombre de Categoria de Platos</th>
        <th class="text-center" scope="col" colspan="2">Acciones</th>
      </tr>
    </thead>
    <tbody>
      <%
          int numRegistros = daoCatPla.listCategoriaPlato().size();
          for(int i = 0; i < numRegistros; i++){
              String idCatPlat = daoCatPla.listCategoriaPlato().get(i).getIdCategoriaPlato();
              String nomCatPlat = daoCatPla.listCategoriaPlato().get(i).getNombreCategoria();
              out.println("<tr>");
              out.println("<td scope='row'>"+ i +"</td>");
              out.println("<td id=nom"+ idCatPlat +">"+ nomCatPlat +"</td>");
              out.println("<td class='text-center'><a type='button' class='btn btn-success' onClick=agregarCategoriaPlato('"+ idCatPlat +"') >Editar</a>");
              out.println("<a href='EliminarCategoriaPlato.jsp?idCatPla="+ idCatPlat +"' type='button' class='btn btn-danger'>Eliminar</a></td>");
              out.println("</tr>");
          }
      %>
    </tbody>
  </table>
          </div>
        </div>
      </main>
    </div>
  </div>
    <!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.9/js/mdb.min.js"></script>
  <script>
    window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
  <script src="JS/dashboard.js"></script>
  <script src="JS/main.js"></script>
</body>
<script>
    let panel1 = document.getElementById("modCatPla1");
    let panel2 = document.getElementById("modCatPla2");
    let modal = document.getElementById("panel52");
    
    function agregarCategoriaPlato( id){
        console.log(id);
        nom_cat_pla = document.getElementById("nom"+id).innerHTML;
        lbl_cat_pla = document.getElementById("lblCategoriaPlato");
        
        console.log(nom_cat_pla);
        document.formCategoriaPlato.inputCategoriaPlato.value = nom_cat_pla;    

        panel2.setAttribute("aria-selected","false");
        panel1.setAttribute("aria-selected","true");

        panel2.classList.remove("active");
        panel1.classList.add("active");
        modal.classList.add("active","show");
        lbl_cat_pla.classList.add("active");
        
    }
</script>
</html>
<%
    String categoriaPlato = request.getParameter("inputCategoriaPlato");
    if(categoriaPlato!=null){
        daoCatPla.insertCategoriaPlato(categoriaPlato);
        response.sendRedirect("frmCategoriaPlato.jsp");
    }
%>