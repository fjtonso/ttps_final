<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Responsable</title>
</head>
<body>

<jsp:include page="encabezadoAdministrador.jsp" />
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<h2>Ingrese sus datos</h2>

<div><form action="Guarani" method="post"> 
<p><label>Nombre: </label> <input placeholder="ingrese un nombre" required="required" type="text" name="nombre" /></p> 
<p><label>Sede: </label> <input placeholder="ingrese una sede" required="required" type="text" name="sede" /></p>
<input type="submit" value="Guardar" class = "btn btn-primaria"/> <input type="reset" value="limpiar" class = "btn btn-primaria"/> 
</form>
</div> 
</div> 
</div> 
<br>
<a class = "boton" href="administrarUsuarios.jsp">Volver</a>
</div> 
<br>
<jsp:include page="pie.jsp"/>

</body>
</html>