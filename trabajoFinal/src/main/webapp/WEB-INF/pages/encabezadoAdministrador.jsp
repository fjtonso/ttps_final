<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/estilo.css" rel="stylesheet">
<link rel="icon" href="resources/imagenes/icono.jpg">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>

<title>Encabezado</title>
</head>
<body>
<div id="header">
<nav role="navigation">
		<div class="barranav">
				<img class="logo" src="resources/imagenes/logo.jpg"> 
		</div>
		<nav role="navigation">
  		<div class="barranav" id="bs-example-navbar-collapse-1">
			<br>
			<ul id="menu">
			  <li class="barra"><a href="listadoSedes">Gesti&oacute;n de las Sedes</a></li>
			  <li class="barra"><a href="listadoMenues">Administraci&oacute;n de los Men&uacute;es</a></li>
			  <li class="barra"><a href="listadoComponentes">Administraci&oacute;n de los Componentes</a></li>
 			  <li class="barra"><a href="noImplementado">Administraci&oacute;n del Buz&oacute;n de Sugerencias</a></li> <!--administrarBuzon.jsp -->
			  <li class="barra"><a href="noImplementado">Estad&iacute;sticas Generales</a></li><!--estadisticas.jsp -->
			  <li class="barra"><a href="getAllUsuarios">Administraci&oacute;n de Usuarios</a></li>
			  <li class="barra"><a href="logout">Despedirse</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</nav>
</nav>
</div>
<br/>


</body>
</html>