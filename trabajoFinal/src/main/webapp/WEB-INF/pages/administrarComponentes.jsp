<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" %> 
<%@ page import = "daos.ComponenteDAO"%>
<%@ page import = "beans.Componente"%>
<%@ page import = "java.util.LinkedList"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Componentes</title>
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

<script language="Javascript">
	function mi_alerta(unId){
		confirmar=confirm("Esta seguro que desea eliminar el componente?");
		if (confirmar){
			document.location.href='../trabajoFinal/borrarComponente?id='+unId;
		}
		else
			echo ();
	}
</script>


</head>

<body>
<jsp:include page="encabezadoAdministrador.jsp" />
<h2>Componentes de menu</h2>
<br>
	
			<c:if test="${empty componenteList}">
                ¡No hay Componentes Registrados!
            </c:if>
    <c:if test="${not empty componenteList}">        
		<table style="width:100%"> 
		  <tr>
		    <th>Nombre</th>
		    <th>Tipo</th>
		    <th>Vegetariano</th>		
		    <th>Celiaco</th>
		    <th>Diabetico</th>
		    <th>Hipertenso</th>
		    <th>Intolerante Lactosa</th>
		    <th></th>
		    <th></th>
		  </tr>
		    <tbody>
		     <c:forEach items="${componenteList}" var="componente">
				    <tr>
						<td><c:out value="${componente.nombre}" /></td>
						<td><c:out value="${componente.tipo}" /></td>
						<td> <c:if test="${componente.vegetariano}">
				                <c:out value="Apto" />
				            </c:if>
				            <c:if test="${!componente.vegetariano}">
				                <c:out value="NO Apto" />
				            </c:if></td>
<%-- 					<c:out value="${componente.vegetariano}" /></td> --%>
						<td><c:if test="${componente.celiaco}">
				                <c:out value="Apto" />
				            </c:if>
				            <c:if test="${!componente.celiaco}">
				                <c:out value="NO Apto" />
				            </c:if></td>
<%-- 						<c:out value="${componente.celiaco}" /></td> --%>
						<td> <c:if test="${componente.diabetico}">
				                <c:out value="Apto" />
				            </c:if>
				            <c:if test="${!componente.diabetico}">
				                <c:out value="NO Apto" />
				            </c:if></td>
<%-- 						<c:out value="${componente.diabetico}" /></td> --%>
						<td><c:if test="${componente.hipertenso}">
				                <c:out value="Apto" />
				            </c:if>
				            <c:if test="${!componente.hipertenso}">
				                <c:out value="NO Apto" />
				            </c:if></td>
<%-- 				        <c:out value="${componente.hipertenso}" /></td> --%>
						<td><c:if test="${componente.intoleranteLactosa}">
				                <c:out value="Apto" />
				            </c:if>
				            <c:if test="${!componente.intoleranteLactosa}">
				                <c:out value="NO Apto" />
				            </c:if></td>
<%-- 						<c:out value="${componente.intoleranteLactosa}" /></td> --%>
					    <td><a href="editarComponente?id=${componente.id}">Editar</a></td>   <%-- links comentados--%>
						<td><a href="javascript:mi_alerta(${componente.id})">Borrar</a></td>
					</tr>
		
		    </c:forEach>
		    </tbody>
		</table>
 </c:if>
<br>
<a class="boton" href="altaComponente">Agregar Componente</a>
<jsp:include page="pie.jsp"/>
</body>
</html>

