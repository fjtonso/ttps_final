<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagos</title>
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

<h3>Pagos de Usuarios</h3>
<table style="width:100%">
  <tr>
    <th>Nombre</th>
    <th>Apellido</th>
    <th>Facultad</th>		
    <th>Tipo Usuario</th>
    <th>Mail</th>
    <th>monto</th>
    <th>Dia Que se efectu&oacute;</th>
  </tr>
  <tr>
    <td>Luis</td>
    <td>Bosque</td>
    <td>Inform&aacute;tica</td>
    <td>Alumno</td>
    <td>lbosque@hotmail.com</td>
    <td>$25</td>
    <td>25/10/2015</td>
  </tr>
  <tr>
    <td>Fabian</td>
    <td>Centuri&oacute;n</td>
    <td>veterinaria</td>
    <td>Docente</td>
    <td>elfabo@gmail.com</td>
    <td>$50</td>
    <td>25/09/2015</td>
  </tr>
</table>	 
	
<jsp:include page="pie.jsp"/>
</body>
</html>