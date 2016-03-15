<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alta Sede</title>
</head>
<body>
<jsp:include page="encabezadoAdministrador.jsp" />

<div class="container">
	<div class="row">	
		<div >
<h2>Agregar Nueva Sede </h2>
<div>
<form:form role="form" modelAttribute="sede" method="post" action="guardarSede">
<!-- <form action="SedeEditar" method="post">  "SedeEditar" nombre controller, implementa el post -->
<form:hidden path="id"  value="${sedeObject.id}" /><br>
<p><label>Nombre: </label> <form:input type="text" path="nombre" value="${sedeObject.nombre}" placeholder="Ingrese el Nombre" required="required"/></p> 
<p><label>Direcci&oacute;n: </label> <form:input  path="direccion" value="${sedeObject.direccion}" placeholder="Ingrese la Direccion" required="required"/></p>
<p><label>Mail: </label> <form:input  path="email" value="${sedeObject.email}" placeholder="Ingrese el Mail" required="required"/></p>
<p><input type="submit" class = "btn btn-primaria" id="guardarSede" value="Guardar Sede" onclick="return submitusuarioForm();" /> <input type="reset" value="limpiar" class = "btn btn-primaria"/> </p> 
<!-- </form> -->
</form:form>
<a class="boton" href="listadoSedes">Volver</a>
</div> 
</div> 
</div>
</div>
<jsp:include page="pie.jsp"/>
</body>
</html>