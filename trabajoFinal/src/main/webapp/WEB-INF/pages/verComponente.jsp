<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Informaci&oacute;n Componente</title>
</head>
<body>
<jsp:include page="encabezadoAdministrador.jsp" />
<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >

<p><label>Nombre: </label> muestra el nombre</p> 
<p><label>Cel&iacute;aco: </label> NO </p>
<p><label>Diab&eacute;tico: </label> NO </p>
<p><label>Hipertenso: </label> NO </p>
<p><label>Intolerante a la lactosa: </label> NO </p>

<a class="boton" href="administrarMenues.jsp">Volver</a>
</div> 
</div> 
</div>
<jsp:include page="pie.jsp"/>
</body>
</html>