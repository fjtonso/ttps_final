<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Men&uacute; de Administrador General</title>
<!-- Bootstrap CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/bootstrap/css/starter-template.css" rel="stylesheet">
</head>
<body>
<%-- <% if(session.getAttribute("usuarioLogueado") != null){ %> --%>

	<jsp:include page="encabezadoAdministrador.jsp" />
				
	<h2>Bienvenido Administrador General</h2>		  
		
	<jsp:include page="pie.jsp"/>

<%-- <% } %> --%>
</body>
</html>
