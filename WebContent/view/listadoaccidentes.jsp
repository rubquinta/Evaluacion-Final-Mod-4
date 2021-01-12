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
    <title>Listado de accidentes</title>
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
    </header>

    <main>
        <h1>Listado Accidentes</h1>
        <form>
            <div class="mb-3">
                <label for="idAccidente" class="form-label">Identificador del Accidente</label>
                <input type="number" class="form-control" id="idAccidente" min="1" max="10000" required>
            </div>
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha del accidente</label>
                <input type="date" class="form-control" id="fecha" required>
              </div>
            <div class="mb-3">
                <label for="hora" class="form-label">Hora del accidente</label>
                <input type="time" class="form-control" id="hora" required>
            </div>
            <div class="mb-3">
                <label for="hora" class="form-label">Lugar del accidente</label>
                <textarea class="form-control" id="hora" rows="2" required maxlength="150"></textarea>
            </div>
            <div class="mb-3">
                <label for="origen" class="form-label">Origen del accidente</label>
                <textarea class="form-control" id="origen" rows="2" required maxlength="100"></textarea>
            </div> 
            <div class="mb-3">
                <label for="select" class="form-label">Cliente</label>       
                <select class="form-select" aria-label="select" required>
                    <option selected>Elija una opción</option>
                    <option value="1">Cliente n°1</option>
                    <option value="2">Cliente n°2</option>
                    <option value="3">Cliente n°3</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label for="consecuencias" class="form-label">Consecuencias del accidente</label>
                <textarea class="form-control" id="consecuencias" rows="2" maxlength="100"></textarea>
            </div> 
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
            
          </form>
    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>