<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="view/style/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de usuarios</title>
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
        <h1>Listado de usuarios</h1>
    </header>

    <main>
    
  
    
       <table class="table table-hover">
            <thead>
            <tr>
                <th><strong>RUN</strong></th>
                <th><strong>Nombres</strong></th>               
                <th><strong>Tipo de Usuario</strong></th>
                <th><strong>Eliminar y Modificar Usuario</strong></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="u" items="${usuarios}">
	            <tr>
	                <td><c:out value="${u.getRun()}"></c:out></td>
	                <td><c:out value="${u.getNombre()}"></c:out></td>       
	                <td><c:out value="${u.getTipoUsuario()}"></c:out></td>
	                <td> <a href="ControllerEditUser?run=${u.getRun()}&tipo=${usr.getTipoUsuario()}"> <img id="imgeditar" src="view/img/editar.png" title="editar"></a>
	                &nbsp;
	                &nbsp;
	                &nbsp;
	                <a href="ControllerBorrarUsuario?run=${u.getRun()}"><img id="imgeliminar" title="eliminar" src="view/img/eliminar.png"></a> </td>
	            </tr>
            </c:forEach>
            
            </tbody>
        </table>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>