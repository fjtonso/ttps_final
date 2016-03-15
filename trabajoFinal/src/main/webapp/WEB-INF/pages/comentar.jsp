<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Realizar Comentario</title>
</head>
<body>
<jsp:include page="encabezadoUsuario.jsp"/>
<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >

<label for="comment">Ingrese su Comentario:</label>
<div>
<form action="PublicarMensaje" method="post"> <!-- llama al servlet PublicarMensaje -->   
      <input type="hidden" name="usuario">
      <p><label>Tipo sugerencia: </label> <input size="35" placeholder="alimento,infraestructura,atenci&oacute;n,etc" required="required" type="text" name="nombre" /></p>
      <p><label>Sede a Realizar Comentario: </label><select name="hotel"><option value="ninguno">General</option>
  										  			<option value="bosque">Sede Bosque</option>
  										  			<option value="bosqueoeste">Sede Bosque Oeste</option>
  										  			<option value="centro">Sede Centro</option>
  										  			<option value="clubeverton">Sede Club Everton</option>
													</select></p>
      <textarea class="form-control" name="textoMensaje" rows="10" cols="25" id="comment" required="required"></textarea>
      <input type="submit" class="btn btn-primaria" value="Comentar" > <input type="reset" value="Limpiar" class = "btn btn-primaria"/> 
</form>
 </div> 
  </div> 
<br>
</div> 
<a class="boton" href="menuUsuario.jsp">cancelar</a>
</div> 
  
<jsp:include page="pie.jsp"/>
</body>
</html>