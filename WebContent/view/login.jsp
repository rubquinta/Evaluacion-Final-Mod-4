<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesion</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" type="text/css" href="view/style/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/jquery.inputmask.bundle.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/css/inputmask.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="javascript/funciones2.js"></script>
    <!--<script>
        $(document).ready(function() {
            $('#rut').inputmask({
                mask: "9[9.999.999]-[9|k|K]",
            });
        });
    </script>
    -->
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
              </div>
            </div>
        </nav>
        <h1>Iniciar Sesion</h1>
    </header>

    <main>
      <div class="crearcapa">

      </div>
        <form id="accessform"  method="post" action="ControllerLogin">
            <div class="mb-3">
                <label class="form-label"><b>Rut: </b><span>(Ingrese rut)</span></label>
                <br>
                <input type="text" name="rut" class="form-control" id="rut" required>
            </div>
            <div class="mb-3">
                <label class="form-label"><b>Contraseña: </b><span>(Contraseña debe ser solo digitos, minimo 8 y maximo 20</span></label>
                <br>
                <input class="form-control" type="password" name="password" id="password" required>
            </div>
            <div class="mb-3">
                <input type="reset" value="Limpiar" >
                <button type="submit" class="btn-primary submit">Entrar</button>
            </div>
            
        </form>

    </main>

    <footer>        
        <p>© 2020 Los Triggers, Inc.</p> 
    </footer>
</body>
</html>