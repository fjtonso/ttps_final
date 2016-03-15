<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alta Componente</title>
</head>
<body>
<jsp:include page="encabezadoAdministrador.jsp" />
<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<c:if test="${empty componenteObject}">
           <h2>Agregar Nuevo Componente </h2>
</c:if>
<c:if test="${not empty componenteObject}">
           <h2>Modificar Componente </h2>
</c:if>
<div>
<form:form role="form" modelAttribute="componente" method="post" action="guardarComponente">
<!-- <form action="Componente" method="post">  -->
<c:if test="${not empty componenteObject}">

           <form:input type="hidden" path="id" value="${componenteObject.id}"/>
</c:if>
<p><label>Nombre: </label> <form:input type="text" path="nombre" value="${componenteObject.nombre}" placeholder="Ingrese el Nombre" required="required"/></p>
<!-- <input required="required" type="text" name="nombre" /></p> -->

<p><label>Tipo: </label> <form:select path="tipo">
								 <c:if test="${not empty componenteObject}">
									<form:option value="${componenteObject.tipo}" selected="selected"><c:out value="${componenteObject.tipo}"/></form:option>
								</c:if>
									<c:if test="${not ('Entrada' eq componenteObject.tipo)}"><form:option value="Entrada"><c:out value="Entrada"/></form:option></c:if>
									<c:if test="${not ('PlatoPrincipal' eq componenteObject.tipo)}"><form:option value="PlatoPrincipal"><c:out value="PlatoPrincipal"/></form:option></c:if>
									<c:if test="${not ('Postre' eq componenteObject.tipo)}"><form:option value="Postre"><c:out value="Postre"/></form:option></c:if>
									<c:if test="${not ('Bebida' eq componenteObject.tipo)}"><form:option value="Bebida"><c:out value="Bebida"/></form:option></c:if>
							</form:select></p>

<%-- <p><label>Tipo: </label> <form:input type="text" path="tipo" value="${componenteObject.tipo}" placeholder="Ingrese el Tipo" required="required"/></p> --%>
<!-- <input required="required" type="text" name="tipo" /></p>  -->

<c:if test="${componenteObject.vegetariano}">
<p><label>Vegetariano: </label> <form:checkbox path="vegetariano" checked="${componenteObject.vegetariano}"/></p>
</c:if>
<c:if test="${not componenteObject.vegetariano}">
<p><label>Vegetariano: </label> <form:checkbox path="vegetariano" /></p>
</c:if>

<c:if test="${componenteObject.celiaco}">
<p><label>Cel&iacute;aco: </label> <form:checkbox path="celiaco" checked="${componenteObject.celiaco}"/></p>
</c:if>
<c:if test="${not componenteObject.celiaco}">
<p><label>Cel&iacute;aco: </label> <form:checkbox path="celiaco" /></p>
</c:if>
<!-- <input type="checkbox" name="celiaco" value="celiaco"/></p> -->

<c:if test="${componenteObject.diabetico}">
<p><label>Diab&eacute;tico: </label> <form:checkbox path="diabetico" checked="${componenteObject.diabetico}"/></p>
</c:if>
<c:if test="${not componenteObject.diabetico}">
<p><label>Diab&eacute;tico: </label> <form:checkbox path="diabetico" /></p>
</c:if>
<!-- <input type="checkbox" name="diabetico" value="diabetico"/></p> -->

<c:if test="${componenteObject.hipertenso}">
<p><label>Hipertenso: </label> <form:checkbox path="hipertenso" checked="${componenteObject.hipertenso}"/></p>
</c:if>
<c:if test="${not componenteObject.hipertenso}">
<p><label>Hipertenso: </label> <form:checkbox path="hipertenso" /></p>
</c:if>
<!-- <input type="checkbox" name="hipertenso" value="hipertenso"/></p> -->

<c:if test="${componenteObject.intoleranteLactosa}">
<p><label>Intolerante a la lactosa: </label> <form:checkbox path="intoleranteLactosa" checked="${componenteObject.intoleranteLactosa}"/></p>
</c:if>
<c:if test="${not componenteObject.intoleranteLactosa}">
<p><label>Intolerante a la lactosa: </label> <form:checkbox path="intoleranteLactosa" /></p>
</c:if>
<!-- <input type="checkbox" name="lactosa" value="lactosa"/></p> -->

<p><input type="submit" class = "btn btn-primaria" id="guardarComponente" value="Guardar" onclick="return submitComponenteForm();" /><input type="reset" value="limpiar" class = "btn btn-primaria"/> </p>
<!-- value="guardar" class = "btn btn-primaria"/>   -->
<!-- </form> -->
</form:form>
<a class="boton" href="#" onclick="window.history.back();">Volver</a>
</div> 
</div> 
</div>
</div>
<jsp:include page="pie.jsp"/>
</body>
</html>