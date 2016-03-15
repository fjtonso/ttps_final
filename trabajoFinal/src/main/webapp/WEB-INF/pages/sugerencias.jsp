<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buz&oacute;n de Sugerencias</title>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
</style>

</head>
<body>
<jsp:include page="encabezadoSede.jsp"/>

<h2>Buz&oacute;n de Sugerencias Sede</h2>
<br>
<table style="width:100%">
  <tr>
    <th>Usuario</th>
    <th>Sugerencia</th>
  </tr>
  <tr>
    <td>Carlos Herrera</td>
    <td>Las sillas estaban rotas, compren sillas</td>		
  </tr>
</table>	 

<h2>Buz&oacute;n de Sugerencias Generales</h2>
<br>
<table style="width:100%">
  <tr>
    <th>Usuario</th>
    <th>Sugerencia</th>
  </tr>
  <tr>
    <td>Pedro Gonzalez</td>
    <td>Estar&iacute;a bueno que se ponga un poco de m&uacute;sica mientras estamos comiendo</td>		
  </tr>
</table>
	
<jsp:include page="pie.jsp"/>
</body>
</html>