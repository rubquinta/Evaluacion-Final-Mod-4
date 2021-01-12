<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <link rel="stylesheet" href="view/style/style.css">
    <script src="javascript/javascript.js">validarArray()</script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear asesoria</title>
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
        <h1>Formulario de Asesorias</h1>
    </header>

    <main>
        <form>
            <div class="mb-3">
                <label for="codigounico" class="form-label">Codigo Unico</label>
                <input type="number" class="form-control" id="codigounico" required max="10000" min="1">
            </div>
            <div class="mb-3">
                <label for="fechaAsesoria" class="form-label">Fecha</label>
                <input type="date" class="form-control" id="fechaAsesoria" required>
            </div>
            <div class="mb-3">
                <label for="motivo" class="form-label">Motivo</label>                
                <textarea class="form-control" id="motivo" rows="2" required maxlength="250"></textarea>
                <p id="charNum">250</p>
            </div> 
            <div class="mb-3">
                <label for="select" class="form-label">Profesional</label>       
                <select class="form-select" aria-label="select" required>
                    <option selected value="">Elija una opción</option>
                    <option value="1">Profesional 1</option>
                    <option value="2">profesional 2</option>
                    <option value="3">Profesional 3</option>
                </select>
            </div>
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary" onclick=validarArray2()>Guardar</button>
            </div>
            
          </form>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>

    <script>
        $(document).ready(function(){
            var limit =  250;
            $("#motivo").keyup(function(event){
                var value = limit - $(this).val().length;
                if (value >= 0){
                    $("#charNum").html(value);
                }
            })
        })
    </script>
</body>
</html>