<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cuenta comedor</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/estilo.css" rel="stylesheet">
<link rel="icon" href="imagenes/icono.jpg">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<!-- encabezado -->
<div id="header">
<nav role="navigation">
		<div class="barranav">
				<img class="logo" src="imagenes/logo.jpg"> 
				<br><br>
		</div>
</nav>
</div>
<!-- fin encabezado -->

<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<h2>Ingrese sus datos</h2>
<!-- cuerpo del form -->
<div>
<form:form id="usuarioRegisterForm" role="form" modelAttribute="usuario" method="post" action="guardarUsuario">
<!-- <form action="Guarani" method="post">  -->
<form:hidden path="id"  value="${usuarioObject.id}" /><br>
<p><label>Nombre: </label> <form:input  path="nombre" value="${usuarioObject.nombre}" placeholder="Ingrese su Nombre" required="required"/></p> 
<p><label>Apellido: </label> <form:input path="apellido" value="${usuarioObject.apellido}" placeholder="Ingrese su Apellido" required="required" /></p>
<p><label>Facultad a la que concurre: </label> <input placeholder="ingrese su facultad" required="required" type="text" name="facultad" />
<p><label>Tipo: </label> <select name="hotel"><option value="alumno">Alumno</option>
  										  <option value="docente">Docente</option>
  										  <option value="nodocente">No Docente</option>
				</select></p>
<p><label>Mail: </label> <input placeholder="ingrese su mail" required="required" type="text" name="mail" /></p>
<p><label>foto: </label> <input required="required" type="file" name="file" size="50"/></p>
<p><label>Vegetariano: </label> <input type="checkbox" name="vegetariano" value="vegetariano"/></p>
<p><label>Cel&iacute;aco: </label> <input type="checkbox" name="celiaco" value="celiaco"/></p>
<p><label>Diab&eacute;tico: </label> <input type="checkbox" name="diabetico" value="diabetico"/></p>
<p><label>Hipertenso: </label> <input type="checkbox" name="hipertenso" value="hipertenso"/></p>
<p><label>Intolerante a la lactosa: </label> <input type="checkbox" name="lactosa" value="lactosa"/></p>
<p><label>Usuario de Guarani: </label> <input placeholder="ingrese su usuario de Guarani" size="35" required="required" type="text" name="usuario" /></p>
<p><label>Contrase&ntilde;a de Guarani: </label> <input placeholder="ingrese su contraseña de Guarani" size="31" required="required" type="password" name="pass" /></p>
<input type="submit" value="Registrarse" class = "btn btn-primaria"/> <input type="reset" value="limpiar" class = "btn btn-primaria"/> 
<!-- </form> -->
</form:form>
</div> 
</div> 
</div> 
<!-- fin form -->
<a class = "btn btn-primaria" href="index.jsp">Volver</a>
</div> 
<br>
<jsp:include page="pie.jsp"/>
</body>
</html>