<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comedor Universitario</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/estilo.css" rel="stylesheet">
<link rel="icon" href="resources/imagenes/icono.jpg">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div id="header">
<nav role="navigation">
		<div class="barranav">
				<img class="logo" src="resources/imagenes/logo.jpg"> 
				<br><br>
		</div>
</nav>
</div>
<br/>
<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
			<div  class = "col-xs-8 col-sm-6" >
				<h1>Bienvenido! </h1>
			</div>
			<div  class = "col-xs-4 col-sm-6" >
				<h3>Ingrese su usuario y contrase&ntilde;a</h3>
<!-- 			<form id="usuarioSistema" action="login" method="post"> -->
			<form:form role="form" action="login" modelAttribute="usuario" method="post">
			<div  class = "col-xs-8 col-sm-6" >						
						<div class="form-group">
						<p><label>Usuario: </label> <form:input path="usuario" type="text" placeholder="ingrese su usuario" /> <form:errors path="usuario" cssClass="error"/></p> <!-- <input placeholder="ingrese su usuario" required="required" type="text" name="usuario" />-->
						</div>
			</div>
			<div  class = "col-xs-4 col-sm-10" >				
						<div class="form-group">	
						<p><label>Contrase&ntilde;a: </label> <form:password path="contrasenia" placeholder="ingrese su contrase&ntilde;a"/> <form:errors path="contrasenia" cssClass="error"/> </p> <!--<input placeholder="ingrese su contrase&ntilde;a" required="required" type="password" name="pass" /> -->
						</div>
			</div>
			<div class="col-xs-4 col-sm-10" >
				<input type="submit" value="Ingresar" />
			</div>
			</form:form>	
<!-- 			</form> -->
		<div class="col-xs-4 col-sm-10" >	
		<label>Sos nuevo? </label><a href=""> Registrate Ahora</a><!--nuevo.jsp-->
		</div>
		</div>

	</div>
	</div>
</div>
<jsp:include page="pie.jsp"/>

</body>
</html>