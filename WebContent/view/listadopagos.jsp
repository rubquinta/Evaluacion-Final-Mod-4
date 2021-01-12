<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de pagos</title>
</head>
<body>
  <header>
        <div class="imgHeader">
            <img src="https://nana.pe/assets/images/Header/header-bg.jpg">
        </div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Menu</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerIndex">Inicio</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerContacto">Contacto</a>
                  </li>                  
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Capacitacion
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="ControllerCrearCapacitacion">Crear capacitacion</a></li>
                      <li><a class="dropdown-item" href="ControllerListarCapacitaciones">Listar capacitaciones</a></li>
                      
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Usuarios
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="ControllerCrearUsuario">Crear usuario</a></li>
                      <li><a class="dropdown-item" href="ControllerListadoUsuarios">Listar usuarios</a></li>
                      
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerListadoVisitas">Listado de Visitas</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerListadoPagos">Listado de Pagos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerListadoAsesorias">Listado de Asesorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerReportes">Reportes</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerLogin">Entrar</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerLogout">Salir</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>
        <h1>Listado Pagos</h1>
    </header>

    <main>
        <table class="table table-hover">
            <tr>
                <td><strong>Id del Pago</strong></td>
                <td><strong>Mes del Pago</strong></td>
                <td><strong>Año del Pago </strong></td>
                <td><strong>Rut del cliente </strong></td>
                <td><strong>Nombre del cliente </strong></td>
                
            </tr>
            <tr>
                <td>10998</td>
                <td>Octubre</td>
                <td>2020</td>
                <td>85638923-5</td>
                <td>Juan Cespedes</td>
                
            </tr>
            <tr>
                <td>10123</td>
                <td>Febrero</td>
                <td>2020</td>
                <td>2357921-2</td>
                <td>Daniel Contreras</td>
            </tr>
            <tr>
                <td>62421</td>
                <td>Diciembre</td>
                <td>2019</td>
                <td>85638923-5</td>
                <td>Maria Montoya</td>
            </tr>
            <tr>
                <td>12375</td>
                <td>Diciembre</td>
                <td>2018</td>
                <td>9893621-2</td>
                <td>Juan La Cubana</td>
            </tr>
            <tr>
                <td>12555</td>
                <td>Noviembre</td>
                <td>2018</td>
                <td>4112323-2</td>
                <td>Luis Arismendi</td>
            </tr>
            <tr>
                <td>12974</td>
                <td>Septiembre</td>
                <td>2020</td>
                <td>2497943-4</td>
                <td>Simón Bolivar</td>
            </tr>
            <tr>
                <td>53414</td>
                <td>Julio</td>
                <td>2020</td>
                <td>2478654-3</td>
                <td>Maria Teresa</td>
            </tr>
            
            </table>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>