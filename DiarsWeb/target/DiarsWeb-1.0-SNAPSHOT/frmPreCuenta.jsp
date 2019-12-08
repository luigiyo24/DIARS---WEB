<%-- 
    Document   : frmPreCuenta
    Created on : 30-11-2019, 23:21:34
    Author     : Luigi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.5">
  <title>Abrir Caja - Machis</title>
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
                    <h1 class="h2">Pre - Cuenta</h1>
                </div>
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-5">
                            <table class="table table-sm">
                                <thead>
                                  <tr>
                                    <th scope="col">Mesa</th>
                                    <th scope="col">Color</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    <tr><td> Mesa 01</td><td> 1 </td></tr>
                                    <tr><td> Mesa 02</td><td> 2 </td></tr>
                                    <tr><td> Mesa 03</td><td> 3 </td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div>
                            <div class="md-form amber-textarea active-amber-textarea">
                            <i class="fas fa-pencil-alt prefix"></i>
                            <textarea id="form22" class="md-textarea form-control" rows="3"></textarea>
                            <label for="form22">Datos del Pedido</label>
                            </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                        <button type="button" class="btn btn-primary">Imprimir</button>
                        <button type="button" class="btn btn-danger">Cancelar</button>
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
</html>