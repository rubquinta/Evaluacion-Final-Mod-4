<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="view/style/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <title>Crear Usuario</title>
    
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
                      <li><a class="dropdown-item" href="#">Crear usuario</a></li>
                      <li><a class="dropdown-item" href="#">Listar usuarios</a></li>
                      
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Listado de Visitas</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Listado de Pagos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Listado de Asesorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="ControllerLogout">Salir</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>
        <h1>Crear Usuario</h1>
    </header>
    <main>
    
    <div class="container"> 
        <form action= "ControllerCrearUsuario" method="POST">      
            <div class="mb-3">
                <label for="nombreUsuario" class="form-label">Nombres</label>
                <input type="text" class="form-control" id="nombreUsuario" name="nombre" readonly="readonly" value="${cli.getNombre()}" required>
            </div>            
            <div class="mb-3">
                <label for="fechaNacimiento" class="form-label">Fecha de nacimiento</label>
                <input type="text" class="form-control" id="fechaNacimiento" name="fechaNacimiento" readonly="readonly" value="${cli.getFechaNacimiento()}" required>
            </div>
            <div class="mb-3">
                <label for="runUsuario" class="form-label">RUN</label>
                <input type="text" class="form-control" id="runUsuario" name="run" readonly="readonly" value="${cli.getRun()}" required>
            </div>       
        
            <div class="md-3">
                <label for="select" class="form-label">Tipo de Usuario</label>
                <select name="select" id="inputSelect" class="form-control" required="required">
                    <option selected value="0"></option>  
                    <option value="Cliente">Cliente</option>
                    <option value="Profesional">Profesional</option>
                    <option value="Administrativo">Administrativo</option>
                </select>
            </div>
            <input id="tipoUsu" name="tipo" type="hidden">
            <br>
            
            <div class="row divOculto" id="div1">        
            	<div class="mb-3">
                	<label for="rutCliente" class="form-label">RUT Cliente</label>
                	<input type="text" name="rutCliente" class="form-control" id="rutCliente"  value="${cli.getNombres()}">
            	</div>
	            <div class="mb-3">
	                <label for="nombresCliente" class="form-label">Nombres</label>
	                <input type="text" name="nombresCliente" class="form-control" id="nombresCliente"  value="${cli.getApellidos()}">
	            </div>
	            <div class="mb-3">
	                <label for="apellidosCliente" class="form-label">Apellidos</label>
	                <input type="text" name="apellidosCliente" class="form-control" id="apellidosCliente" value="${cli.getApellidos()}">
	            </div>
	            <div class="mb-3">
	                <label for="telefonoCliente" class="form-label">Telefono</label>
	                <input type="tel" name="telefonoCliente" class="form-control" id="telefonoCliente" value="${cli.getTelefono()}">
	            </div>
	            <div class="mb-3">
	                <label for="afp" class="form-label">AFP</label>
	                <input type="text" name="afp" class="form-control" id="afp" value="${cli.getAfp()}">
	            </div>
	            <div class="mb-3">
	                <label for="sistemadesalud" class="form-label">Sistema de Salud (fonasa o isapre)</label>
	                <input type="text" name="sistemadesalud" class="form-control" id="sistemadesalud" value="${cli.getSistemaSalud()}">
	            </div>	           
	            <div class="mb-3">
	                <label for="direccion" class="form-label">Direccion</label>
	                <input type="text" name="direccion" class="form-control" id="direccion" value="${cli.getDireccion()}">
	            </div>
	            <div class="mb-3">
	                <label for="comuna" class="form-label">Comuna</label>
	                <input type="text" name="comuna" class="form-control" id="comuna" value="${cli.getComuna()}">
	            </div>
	            <div class="mb-3">
	                <label for="edad" class="form-label">Edad</label>
	                <input type="number" name="edad" class="form-control" id="edad" value="${cli.getEdad()}">
	            </div>
	        </div>
	        <div class="row divOculto" id="div2">        
	            
	            <div class="mb-3">
	                <label for="titulo" class="form-label">Titulo Profesional</label>
	                <input type="text" name="titulo" class="form-control" id="titulo">
	            </div>
	            <div class="mb-3">
	              <label for="fechaIng" class="form-label">Fecha de Ingreso</label>
	              <input type="text" name="fechaIng" class="form-control" id="fechaIng">
	            </div>  
            </div>
        	<div class="row divOculto" id="div3">      
	            
	            <div class="mb-3">
	                <label for="area" class="form-label">Area de trabajo</label>
	                <input type="text" name="area" class="form-control" id="area">
	            </div>
	            <div class="mb-3">
	                <label for="expPrevia" class="form-label">Experiencia Previa</label>
	                <input type="text" name="expPrevia" class="form-control" id="expPrevia">
	            </div>
	        </div> 
           
            <div class="mb-3">
                <input type="reset" value="Limpiar" style="color:rgb(139, 136, 136)e;text-decoration-line: underline;background: none; border: none;">             
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>            
          </form> 
   	</div>
    
    
    
    </main>
    
    
    
    
        <script>
        
        $("select").change(function(){

        	  //Normalmente se envía el value del select
        	  var inputSelect = $("#inputSelect").val();
        	  console.log(inputSelect);
        	  
        	  //Puedes capturar el texto seleccionado
        	  var tipoUsu = $("select option:selected").text();
        	  
        	  //Y asignar el texto al input
        	  $("#tipoUsu").val(tipoUsu);
        	});
        
        
     $(function() {

        $("#inputSelect").on('change', function() {

        var selectValue = $(this).val();
        switch (selectValue) {

            case "Cliente":
            $("#div1").show();
            $("#div2").hide();
            $("#div3").hide();
            break;

            case "Profesional":
            $("#div1").hide();
            $("#div2").show();
            $("#div3").hide();
            break;

            case "Administrativo":
            $("#div1").hide();
            $("#div2").hide();
            $("#div3").show();
            break;

            case "0":
            $("#div1").hide();
            $("#div2").hide();
            $("#div3").hide();
            break;


        }

        }).change();

        });
    </script>
  </body>
</html>