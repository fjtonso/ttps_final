<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Perfil</title>
</head>
<body>
<jsp:include page="encabezadoUsuario.jsp"/>

<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<h2>Datos Perfil</h2>

<div><form action="Usuario" method="post"> 
<p><label>Nombre: </label> <input placeholder="ingrese su nombre" required="required" type="text" name="nombre" /></p> 
<p><label>Apellido: </label> <input placeholder="ingrese su apellido" required="required" type="text" name="apellido" /></p>
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
<input type="submit" value="Guardar" class = "btn btn-primaria"/> <input type="reset" value="limpiar" class = "btn btn-primaria"/> 
</form>
</div> 
</div> 
</div> 
<br>
<a class="boton" href="menuUsuario.jsp">Volver</a>
</div> 	 

<jsp:include page="pie.jsp"/>
</body>
</html>