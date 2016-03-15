<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" %> 
<%@ page import = "daos.SedeDAO"%>
<%@ page import = "beans.Sede"%>
<%@ page import = "java.util.LinkedList"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sedes</title>
<!-- Bootstrap CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/bootstrap/css/starter-template.css" rel="stylesheet">
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
<jsp:include page="encabezadoAdministrador.jsp" />
<h2>Sedes del Comedor Universitario</h2>
<br>
	
			<c:if test="${empty sedeList}">
                ¡No hay Sedes Registradas!
            </c:if>
    <c:if test="${not empty sedeList}">        
		<table style="width:100%"> 
		  <tr>
		  	<th>Id</th>
		    <th>Nombre</th>
		    <th>Mail</th>
		    <th>Direcci&oacute;n</th>		
		    <th></th>
		    <th></th>
		  </tr>
		    <tbody>
		     <c:forEach items="${sedeList}" var="sede">
				    <tr>
						<td><c:out value="${sede.id}" /></td>
						<td><c:out value="${sede.nombre}" /></td>
						<td><c:out value="${sede.email}" /></td>
						<td><c:out value="${sede.direccion}" /></td>
					    <td><a href="<%-- editarSede?id=${sede.id}--%>">Editar</a></td> <%-- links comentados--%>
						<td><a href="<%--borrarSede?id=${sede.id}--%>">Borrar</a></td>
					</tr>
		
		    </c:forEach>
		    </tbody>
		</table>
 </c:if>
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Sede</th> -->
<!--     <th>Mail</th> -->
<!--     <th>Direcci&oacute;n</th>		 -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bosque</td> -->
<!--     <td>bosque@hormail.com</td>		 -->
<!--     <td>Boulevard 120 entre 61 y 62</td> -->
<!--     <td><a href="editarSede.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Centro</td> -->
<!--     <td>centro@hormail.com</td>		 -->
<!--     <td>44 N&uacute;mero 733</td> -->
<!--     <td><a href="editarSede.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bosque Oeste</td> -->
<!--     <td>bosqueoeste@hormail.com</td>		 -->
<!--     <td>50 y 116</td> -->
<!--     <td><a href="editarSede.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Club Everton</td> -->
<!--     <td>everton@hormail.com</td>		 -->
<!--     <td>14 entre 63 y 64</td> -->
<!--     <td><a href="editarSede.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!-- </table> -->
<br>
<a class="boton" href="altaSede">Agregar Sede</a>
<jsp:include page="pie.jsp"/>
</body>
</html>

