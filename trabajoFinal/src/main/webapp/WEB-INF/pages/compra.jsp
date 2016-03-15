<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compra Ticket</title>
</head>
<body>
<jsp:include page="encabezadoUsuario.jsp"/>

<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >

<div><form action="" method="post"> <!-- sigue comprando, redirige a la misma pagina con los datos del menu seleccionado -->
<p><label>Sede a Realizar Compra: </label><select name="sede"><option value="ninguno"> </option>
  										  			<option value="bosque">Sede Bosque</option>
  										  			<option value="bosqueoeste">Sede Bosque Oeste</option>
  										  			<option value="centro">Sede Centro</option>
  										  			<option value="clubeverton">Sede Club Everton</option>
													</select></p>	 
<p><label>Seleccione el D&iacute;a: </label><input type="date" name="dia"></p>	 
<p><label>Seleccione su men&uacute;: </label><select name="hotel"><option value="ninguno">fideos</option>
  										  			<option value="bosque">Pollo</option>
  										  			<option value="bosqueoeste">carne</option>
  										  			<option value="centro">pescado</option>
  										  			<option value="clubeverton">pastel de papa</option>
													</select></p>
<p><label>Forma de Retiro</label><input type="radio" name="retiro" value="comedor"> Comedor
<input type="radio" name="retiro" value="vianda"> Vianda</p>
<p><input type="submit" value="Seguir Comprando" class = "btn btn-primaria"/> <input type="reset" value="limpiar" class = "btn btn-primaria"/> </p>
</form>
</div>
<a class="boton" href="menuUsuario.jsp">Cancelar</a> <a class="boton" href="total.jsp">Finalizar Compra</a>
</div> 
</div>
</div>
<jsp:include page="pie.jsp"/>
</body>
</html>