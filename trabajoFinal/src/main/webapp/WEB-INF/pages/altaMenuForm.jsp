<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar men&uacute;</title>
</head>
<body>
<jsp:include page="encabezadoAdministrador.jsp" />
<br>
<div class="container">
	<div class="row">	
		<div  class = ".col-xs-12 .col-sm-6 .col-md-8" >
<c:if test="${empty mapa.menuObject}">
           <h2>Agregar Nuevo Menu </h2>
</c:if>
<c:if test="${not empty mapa.menuObject}">
           <h2>Modificar Menu </h2>
</c:if>		

<div>
<form:form role="form" modelAttribute="menu" method="post" action="guardarMenu">
<%-- <form action="Menu" method="post">  --%>
<c:if test="${not empty mapa.menuObject}">
           <form:input type="hidden" path="id" value="${mapa.menuObject.id}"/>
</c:if>
<p><label>Nombre: </label> <form:input type="text" path="nombre" value="${mapa.menuObject.nombre}" placeholder="Ingrese el Nombre" required="required"/></p>
<p><label>Entrada: </label>
 <form:select path="entrada">
<%-- 								 <c:forEach items="${mapa.listaComponentes}" var="componente"> --%>
<%-- 									 <c:if test="${'Entrada' eq componente.tipo}"> --%>
<%-- 									 	<c:choose> --%>
<%-- 										 	<c:when test="${not empty mapa.menuObject}" > si es para modificar un menu --%>
<%-- 										 			<c:if test="${mapa.menuObject.entrada.id == componente.id}" > si es el componente que tenia el menu --%>
<%-- 														<form:option value="${componente.id}" selected="selected"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 													</c:if> --%>
<%-- 													<c:if test="${mapa.menuObject.entrada.id != componente.id}" > --%>
<%-- 														<form:option value="${componente.id}"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 													</c:if> --%>
<%-- 											</c:when> --%>
<%-- 											<c:otherwise> si es un nuevo menu --%>
<%-- 												<form:option value="${componente.id}"><c:out value="${componente.nombre}" /></form:option> --%>
<%-- 											</c:otherwise>								 --%>
<%-- 									 	</c:choose> --%>
<%-- 									 </c:if> --%>
<%-- 								 </c:forEach> --%>
							<form:options items="${mapa.entrada}" itemValue="id" itemLabel="nombre"/>
 										</form:select>
							</p>



<%-- <input required="required" type="text" name="entrada" /></p> --%>
<p><label>Plato Principal: </label> 
<form:select path="platoPrincipal">
<%-- 										 <c:forEach items="${mapa.listaComponentes}" var="componente"> --%>
<%-- 										 <c:if test="${'PlatoPrincipal' eq componente.tipo}"> --%>
<%-- 											<c:if test="${not empty mapa.menuObject}" > si es para modificar un menu --%>
<%-- 												<c:if test="${mapa.menuObject.platoPrincipal.id==componente.id}" > si es el componente que tenia el menu --%>
<%-- 													<form:option value="${componente.id}" selected="selected"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 												</c:if> --%>
<%-- 												<c:if test="${mapa.menuObject.platoPrincipal.id!=componente.id}" > --%>
<%-- 													<form:option value="${componente.id}"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 												</c:if> --%>
<%-- 											</c:if> --%>
<%-- 											<c:if test="${empty mapa.menuObject}" > si es un nuevo menu --%>
<%-- 												<form:option value="${componente.id}"><c:out value="${componente.nombre}" /></form:option> --%>
<%-- 											</c:if>	 --%>
<%-- 										 </c:if> --%>
<%-- 										 </c:forEach> --%>
												<form:options items="${mapa.principal}" itemValue="id" itemLabel="nombre"/>
									</form:select>
									</p>


<!-- <input required="required" type="text" name="platoprincipal" /></p> -->
<p><label>Postre: </label>
 <form:select path="postre">
<%-- 								 <c:forEach items="${mapa.listaComponentes}" var="componente"> --%>
<%-- 								 <c:if test="${'Postre' eq componente.tipo}"> --%>
<%-- 									<c:if test="${not empty mapa.menuObject}" > si es para modificar un menu --%>
<%-- 										<c:if test="${mapa.menuObject.postre.id==componente.id}" > si es el componente que tenia el menu --%>
<%-- 											<form:option value="${componente.id}" selected="selected"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 										</c:if> --%>
<%-- 										<c:if test="${mapa.menuObject.postre.id!=componente.id}" > --%>
<%-- 											<form:option value="${componente.id}"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 										</c:if> --%>
<%-- 									</c:if> --%>
<%-- 									<c:if test="${empty mapa.menuObject}" > si es un nuevo menu --%>
<%-- 										<form:option value="${componente.id}"><c:out value="${componente.nombre}" /></form:option> --%>
<%-- 									</c:if> --%>
<%-- 								 </c:if> --%>
<%-- 								 </c:forEach> --%>
											
										 <form:options items="${mapa.postre}" itemValue="id" itemLabel="nombre"/>
							</form:select>
						
							</p>


<!-- <input required="required" type="text" name="postre" /></p> -->
<p><label>Bebida: </label> 
<form:select path="bebida">
<%-- 								 <c:forEach items="${mapa.listaComponentes}" var="componente"> --%>
<%-- 								 <c:if test="${'Bebida' eq componente.tipo}"> --%>
<%-- 									<c:if test="${not empty mapa.menuObject}" > si es para modificar un menu --%>
<%-- 										<c:if test="${mapa.menuObject.bebida.id==componente.id}" > si es el componente que tenia el menu --%>
<%-- 											<form:option value="${componente.id}" selected="selected"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 										</c:if> --%>
<%-- 										<c:if test="${mapa.menuObject.bebida.id!=componente.id}" > --%>
<%-- 											<form:option value="${componente.id}"><c:out value="${componente.nombre}"/></form:option> --%>
<%-- 										</c:if> --%>
<%-- 									</c:if> --%>
<%-- 									<c:if test="${empty mapa.menuObject}" > si es un nuevo menu --%>
<%-- 										<form:option value="${componente.id}"><c:out value="${componente.nombre}" /></form:option> --%>
<%-- 									</c:if> --%>
<%-- 								 </c:if> --%>
<%-- 								 </c:forEach> --%>
 										<form:options items="${mapa.bebida}" itemValue="id" itemLabel="nombre"/>

							</form:select>
							</p>

<!-- <input required="required" type="text" name="bebida" /></p>  -->
<p><label>D&iacute;a de la semana: </label> </p>
<p>

		<label>Lunes </label><form:checkbox path="lunes" name="lunes"/>
  

		<label>Martes </label><form:checkbox path="martes" name="martes"/>
		
		<label>Miercoles </label><form:checkbox path="miercoles" name="miercoles"/>

		<label>jueves </label><form:checkbox path="jueves" name="jueves"/>	

		<label>Viernes </label><form:checkbox path="viernes" name="viernes"/>  
</p>

<!-- <p><label>Precio: </label> <input required="required" type="text" name="precio" /></p> -->
<p><input type="submit" id="guardarMenu" value="Guardar" class = "btn btn-primaria" /> <input type="reset" value="limpiar" class = "btn btn-primaria"/> </p> 
<%-- </form> --%>
</form:form>
<a class="boton" href="listadoMenues">Volver</a>
</div> 
</div> 
</div>
</div>
<jsp:include page="pie.jsp"/>
</body>
</html>