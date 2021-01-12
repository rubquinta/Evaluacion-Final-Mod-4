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
    <title>Checklist</title>
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
        <h1>Checklist</h1>
    </header>

    <main>
        <table class="table table-hover">
            <tr>
                <td><strong>Chequeo EPP</strong></td>
                <td><strong>Check</strong></td>
            </tr>
            <tr>
                <td>Botas de Seguridad</td>
                <td><input id="ch1" type="checkbox"></td>
                
            </tr>
            <tr>
                <td>Chaleco reflectante</td>
                <td><input id="ch2" type="checkbox"></td>
                
            </tr>
            <tr>
                <td>Guantes de Seguridad</td>
                <td><input id="ch3" type="checkbox"></td>
                
            </tr>
            <tr>
                <td>Casco de Seguridad</td>
                <td><input id="ch4" type="checkbox"></td>
                
            </tr>
        </table>
        <div id ="verificar" class="d-grid gap-2 d-md-block">
            <button onclick="validar();" class="btn btn-primary" type="button">Verificacion</button>
          </div>
        <div class = "verificacion">  
                <ul>
                    <li id="resultado"> </li>
                </ul>
        </div>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>

    <script>

         

        function validar()
        {

            var c1 = document.getElementById("ch1").checked;
            var c2 = document.getElementById("ch2").checked;
            var c3 = document.getElementById("ch3").checked;
            var c4 = document.getElementById("ch4").checked;
            var check = "";

            if (c1== false && c2 == false && c3==false && c4 == false){

                alert("No hay ningún campo seleccionado")

            }else{

                if(c1==true){

                    check+= "Botas de Seguridad <br>";

                    }else {

                    check+= "<br>";

                    }

                    if(c2==true){

                    check+= "Chaleco Reflectante <br>";

                    }else {

                    check+= "<br>";

                    }   

                    if (c3 == true) {

                        check+= "Guantes de Seguridad <br>";

                    }else {

                    check+= "<br>";

                    }  

                    if (c4 == true) {

                    check+= "Casco de Seguridad <br>";

                    }else {

                    check+= "<br>";

                    }   

            }
                  

                document.getElementById("resultado").innerHTML = check;
        }
</body>
</html>