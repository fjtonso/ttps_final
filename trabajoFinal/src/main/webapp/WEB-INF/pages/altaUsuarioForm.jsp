<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar Usuario</title>

</head>
<body>

<jsp:include page="encabezadoAdministrador.jsp" />
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<h2>Datos del Usuario</h2>

<form:form id="usuarioRegisterForm" role="form" modelAttribute="usuarioSistema" method="post" action="guardarUsuario">
		<form:hidden path="id"  value="${usuarioObject.id}" /><br>
		
			<p><label>Nombre:</label> <form:input  path="nombre" value="${usuarioObject.nombre}" placeholder="Ingrese Nombre" required="required"/></p>	

			<p><label>Apellido:</label> <form:input path="apellido" value="${usuarioObject.apellido}" placeholder="Ingrese Apellido" required="required" /></p>

			<p><label>Nombre de Usuario:</label> <form:input  path="usuario" value="${usuarioObject.usuario}" placeholder="Ingrese Nombre de Usuario" required="required"/></p>
		
			<p><label>Contraseña:</label> <form:password  path="contrasenia" value="${usuarioObject.contrasenia}" placeholder="Ingrese Contraseña" required="required" /></p>
				
			<p><label>Perfil:</label> 
				<select name="perfil" id="perfil" required="required">
					<option></option>
					<option value="admin">Administrador</option>
					<option value="sede">Responsable Sede</option>
				</select></p>
		
			<p><label>Seleccione Sede :</label>
				<select name="listasSede" id="listasSede" required="required">
					<option></option>
					 <c:forEach items="${listaSedes}" var="sede">
						<option value="${sede.nombre}"><c:out value="${sede.nombre}" /></option>
					 </c:forEach>
				</select></p>
	
      		<input type="submit" id="guardarUsuario" value="Guardar Usuario" class = "btn btn-primaria onclick="return submitusuarioForm();" /> <input type="reset" value="limpiar" class = "btn btn-primaria"/>
		
	</form:form>
<!-- <div><form action="Guarani" method="post">  -->
<!-- <p><label>Nombre: </label> <input placeholder="ingrese su nombre" required="required" type="text" name="nombre" /></p>  -->
<!-- <p><label>Apellido: </label> <input placeholder="ingrese su apellido" required="required" type="text" name="apellido" /></p> -->
<!-- <p><label>Facultad a la que concurre: </label> <input placeholder="ingrese su facultad" required="required" type="text" name="facultad" /> -->
<!-- <p><label>Tipo: </label> <select name="hotel"><option value="alumno">Alumno</option> -->
<!--   										  <option value="docente">Docente</option> -->
<!--   										  <option value="nodocente">No Docente</option> -->
<!-- 				</select></p> -->
<!-- <p><label>Mail: </label> <input placeholder="ingrese su mail" required="required" type="text" name="mail" /></p> -->
<!-- <p><label>foto: </label> <input required="required" type="file" name="file" size="50"/></p> -->
<!-- <p><label>Vegetariano: </label> <input type="checkbox" name="vegetariano" value="vegetariano"/></p> -->
<!-- <p><label>Cel&iacute;aco: </label> <input type="checkbox" name="celiaco" value="celiaco"/></p> -->
<!-- <p><label>Diab&eacute;tico: </label> <input type="checkbox" name="diabetico" value="diabetico"/></p> -->
<!-- <p><label>Hipertenso: </label> <input type="checkbox" name="hipertenso" value="hipertenso"/></p> -->
<!-- <p><label>Intolerante a la lactosa: </label> <input type="checkbox" name="lactosa" value="lactosa"/></p> -->
<!-- <input type="submit" value="Guardar" class = "btn btn-primaria"/> <input type="reset" value="limpiar" class = "btn btn-primaria"/>  -->
<!-- </form> -->
</div> 
</div> 
</div> 
<br>
<a class="boton" href="getAllUsuarios">Volver</a>


<jsp:include page="pie.jsp"/>

</body>
</html>