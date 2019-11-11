<%-- 
    Document   : Mesas
    Created on : 15-10-2019, 21:14:47
    Author     : Luigi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.daoEmpleado"%>
<%@page import="dao.daoPlato"%>
<%@page import="dao.daoMesa"%>
<%@page import="dao.daoPedido"%>
<%@page import="dao.daoCategoriaPlato"%>
<%@page import="clases.Mesa"%>
<%@page import="ConexionBD.Conexion" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v3.8.5">
  <title>Mesas - Machis</title>
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
    <%
    
    daoMesa daoMes = new daoMesa();
%>    

<%
    Conexion conexion1 = new Conexion();

   Connection con1 = null;
    ResultSet rsemp = null;

   try {
       con1 = conexion1.getMysql();
       String sql = "select e.idempleado , p.NOMBRE_RS from persona as p inner join empleado as e inner join cargo as c on e.idpersona=p.idpersona and e.IDCARGO=c.IDCARGO where e.IDCARGO='CA00003';";
        PreparedStatement ps1 = con1.prepareCall(sql);
        rsemp = ps1.executeQuery();

    } catch (Exception e) {
        e.printStackTrace();
    }

    Conexion conexion2 = new Conexion();
    Connection con2 = null;
    ResultSet rsmes = null;
    try {
       con2 = conexion2.getMysql();
       String sql = "select * from mesa where ESTADO=1";
        PreparedStatement ps2 = con2.prepareCall(sql);
        rsmes = ps2.executeQuery();

    } catch (Exception e) {
        e.printStackTrace();
    }

    Conexion conexion3 = new Conexion();
    Connection con3 = null;
    ResultSet rscatpla = null;
    try{
        con3 = conexion3.getMysql();
        String sql = "SELECT * FROM machis.categoria_plato";
        PreparedStatement ps3 = con3.prepareCall(sql);
        rscatpla = ps3.executeQuery();
        
    }catch (Exception e){
        e.printStackTrace();
    }
%>
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
                <a class="nav-link active" href="Mesas.jsp">
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
                <a class="nav-link" href="CategoriaPlato.jsp">
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
          <h1 class="h2">Registrar Pedido</h1>
        </div>
          <div class="d-flex justify-content-around">
            <div class="col-3">
                <label>Mesero : </label>
                <select class="browser-default custom-select">
                    <option selected>Selecciona Mesero</option>
                   <%
                       while(rsemp.next()){
                           out.println("<option value='"+ rsemp.getString(1) +"'>"+ rsemp.getString(2) + "</option>");
                       }
                   %>
                </select>
                <table class="table table-sm">
                    <thead>
                      <tr>
                        <th scope="col">Mesa</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            while(rsmes.next()){
                                out.println("<tr><td class='text-center'><a>" + rsmes.getString(2) + "</a></td></tr>");
                            //out.println("<tr><a>" + rsmes + "</a></tr>");
                            }
                        %>
                    </tbody>
                  </table>
            </div>
            <div class="col-5">
                <label>Categoria Plato :</label>
                <select class="browser-default custom-select">
                    <option selected>Selecciona Categoria Plato</option>
                    <%
                        while(rscatpla.next()){
                            out.println("<option value='"+ rscatpla.getString(1) +"'>"+ rscatpla.getString(2) + "</option>");
                        }
                    %>
                </select>
            </div>
        </div>
        <ul class="nav md-pills nav-justified pills-success ">
          <li class="nav-item border">
            <a class="nav-link  bg-botton active" data-toggle="tab" href="#panel52" role="tab">Mesa</a>
          </li>
          <li class="nav-item border">
            <a class="nav-link bg-botton" data-toggle="tab" href="#panel51" role="tab">Buscar Mesa</a>
          </li>
        </ul>
        <div class="tab-content pt-2 pl-1" id="pills-tabContent">
          <div class="tab-pane fade show active" id="panel52" role="tabpanel" aria-labelledby="pills-home-tab">
            <form action="">
              <div class="container">
                <div class="row">
                  <div class="col-8 grey lighten-5">
                    <div class="md-form">
                      <input type="text" id="form1" class="form-control">
                      <label for="form1">Nombre de Mesa</label>
                    </div>
                    <div class="my-3">
                        <label class="mdb-main-label">Estado</label>
                        <select class="browser-default custom-select" disabled>
                            <option value="1">Activo</option>
                            <option value="0">Inactivo</option>
                        </select>
                    </div>
                    <div class="my-3">
                        <label class="mdb-main-label">Color </label>
                        <select class="browser-default custom-select" disabled>
                            <option value="1">Activo</option>
                            <option value="0">Inactivo</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary btn-lg btn-block ">Registrar Mesa</button>
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
                      int numRegistros = daoMes.listMesa().size();
                      for(int i = 0; i < numRegistros; i++){
                          out.println("<tr>");
                          out.println("<td scope='row'>"+ i +"</td>");
                          out.println("<td >"+ daoMes.listMesa().get(i).getMesa()+"</td>");
                          out.println("<td class='text-center'><a type='button' class='btn btn-success'>Editar</a>");
                          out.println("<a type='button' class='btn btn-danger'>Eliminar</a></td>");
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
</body>

</html>