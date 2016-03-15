<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Estad&iacute;sticas Generales</title>
</head>
<body>
<jsp:include page="encabezadoAdministrador.jsp" >
	<jsp:param name="subtitulo" value="hola"/>
</jsp:include>
<h2>Estad&iacute;sticas Generales</h2>
</body>
<h2>Men&uacute;es m&aacute;s pedidos:</h2>
<h2>Sugerencias m&aacute;s enviadas:</h2>
<jsp:include page="pie.jsp"/>
</html>