<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" %> 
<%@ page import = "daos.MenuDAO"%>
<%@ page import = "beans.Menu"%>
<%@ page import = "java.util.LinkedList"%> 
<html>
<script language="Javascript">
	function mi_alerta(unId){
		confirmar=confirm("Esta seguro que desea eliminar el menu?");
		if (confirmar){
			document.location.href='../trabajoFinal/borrarMenu?id='+unId;
		}
		else
			echo ();
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administraci&oacute;n de Men&uacute;es</title>
<!-- Bootstrap CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/bootstrap/css/starter-template.css" rel="stylesheet">
</head>
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

<h2>Men&uacute;es del Comedor Universitario</h2>

			<c:if test="${empty menuList}">
                ¡No hay Menues Registradas!
            </c:if>
			<c:if test="${not empty menuList}">
			
		     <c:forEach items="${menuList}" var="menu">
				<h3>${menu.nombre}</h3>
				<h4>Dias: <c:if test="${menu.lunes}">lunes </c:if> <c:if test="${menu.martes}"> martes </c:if> <c:if test="${menu.miercoles}"> miercoles </c:if> <c:if test="${menu.jueves}"> jueves </c:if> <c:if test="${menu.viernes}"> viernes </c:if></h4>
				<table style="width:100%">
				  <tr>
				    <th>Men&uacute;</th>
				    <th>Componente</th>		
				  </tr>
				  <tbody>
				  <tr>
				    <td>Entrada</td> 
				    <td>${menu.entrada.nombre} (
				    <c:choose>
					    <c:when test="${menu.entrada.diabetico}">
					        apto diabetico
					    </c:when>    
					    <c:otherwise>
					        NO apto diabetico
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.entrada.hipertenso}">
					        apto hipertenso
					    </c:when>    
					    <c:otherwise>
					        NO apto hipertenso
					    </c:otherwise>
					</c:choose> -
				    <c:choose>
					    <c:when test="${menu.entrada.celiaco}">
					        apto celiaco
					    </c:when>    
					    <c:otherwise>
					        NO apto celiaco
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.entrada.intoleranteLactosa}">
					        apto intolerante a la lactosa
					    </c:when>    
					    <c:otherwise>
					        NO apto intolerante a la lactosa
					    </c:otherwise>
					</c:choose>
				    )</td>		
				  </tr>
				  <tr>
				    <td>Plato Principal</td>
				    <td>${menu.platoPrincipal.nombre}(
				    <c:choose>
					    <c:when test="${menu.platoPrincipal.diabetico}">
					        apto diabetico
					    </c:when>    
					    <c:otherwise>
					        NO apto diabetico
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.platoPrincipal.hipertenso}">
					        apto hipertenso
					    </c:when>    
					    <c:otherwise>
					        NO apto hipertenso
					    </c:otherwise>
					</c:choose> -
				    <c:choose>
					    <c:when test="${menu.platoPrincipal.celiaco}">
					        apto celiaco
					    </c:when>    
					    <c:otherwise>
					        NO apto celiaco
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.platoPrincipal.intoleranteLactosa}">
					        apto intolerante a la lactosa
					    </c:when>    
					    <c:otherwise>
					        NO apto intolerante a la lactosa
					    </c:otherwise>
					</c:choose>
				    )</td>				
				  </tr>
				  <tr>
				    <td>Postre</td>
				    <td>${menu.postre.nombre}(
				    <c:choose>
					    <c:when test="${menu.postre.diabetico}">
					        apto diabetico
					    </c:when>    
					    <c:otherwise>
					        NO apto diabetico
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.postre.hipertenso}">
					        apto hipertenso
					    </c:when>    
					    <c:otherwise>
					        NO apto hipertenso
					    </c:otherwise>
					</c:choose> -
				    <c:choose>
					    <c:when test="${menu.postre.celiaco}">
					        apto celiaco
					    </c:when>    
					    <c:otherwise>
					        NO apto celiaco
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.postre.intoleranteLactosa}">
					        apto intolerante a la lactosa
					    </c:when>    
					    <c:otherwise>
					        NO apto intolerante a la lactosa
					    </c:otherwise>
					</c:choose>
				    )</td>		
				  </tr>
				  <tr>
				    <td>Bebida</td>
				    <td>${menu.bebida.nombre}(
				    <c:choose>
					    <c:when test="${menu.bebida.diabetico}">
					        apto diabetico
					    </c:when>    
					    <c:otherwise>
					        NO apto diabetico
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.bebida.hipertenso}">
					        apto hipertenso
					    </c:when>    
					    <c:otherwise>
					        NO apto hipertenso
					    </c:otherwise>
					</c:choose> -
				    <c:choose>
					    <c:when test="${menu.bebida.celiaco}">
					        apto celiaco
					    </c:when>    
					    <c:otherwise>
					        NO apto celiaco
					    </c:otherwise>
					</c:choose> - 
				    <c:choose>
					    <c:when test="${menu.bebida.intoleranteLactosa}">
					        apto intolerante a la lactosa
					    </c:when>    
					    <c:otherwise>
					        NO apto intolerante a la lactosa
					    </c:otherwise>
					</c:choose>
				    )</td>		
				  </tr>
				</tbody> 
				</table>
				<br>
				<a class="boton" href="editarMenu?id=${menu.id}">Editar Men&uacute;</a>
				<a class="boton" href="javascript:mi_alerta(${menu.id})">Borrar Men&uacute;</a>
				<br><br>
			</c:forEach>
			</c:if>
<!-- <h3>Men&uacute; 1</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Men&uacute;</th> -->
<!--     <th>Componente</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Entrada</td> -->
<!--     <td>Tostados de jam&oacute;n y queso</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Plato Principal</td> -->
<!--     <td>Milanesas con papas fritas</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Postre</td> -->
<!--     <td>Ensalada fruta</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bebida</td> -->
<!--     <td>Sprite</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarMenu.jsp">Editar Men&uacute;</a> -->
<!-- <a class="boton" href="">Borrar Men&uacute;</a> -->
<!-- <br><br> -->
<!-- <h3>Men&uacute; 2</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Men&uacute;</th> -->
<!--     <th>Componente</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Entrada</td> -->
<!--     <td>Pizzas</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Plato Principal</td> -->
<!--     <td>Fideos</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Postre</td> -->
<!--     <td>Frutilla con crema</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bebida</td> -->
<!--     <td>Jugo de naranja</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarMenu.jsp">Editar Men&uacute;</a> -->
<!-- <a class="boton" href="">Borrar Men&uacute;</a> -->
<!-- <br><br> -->
<!-- <h3>Men&uacute; 3</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Men&uacute;</th> -->
<!--     <th>Componente</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Entrada</td> -->
<!--     <td>Sopa de verdura</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Plato Principal</td> -->
<!--     <td>Pastel de papas</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Postre</td> -->
<!--     <td>Yogurt</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bebida</td> -->
<!--     <td>Jugo de manzana</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarMenu.jsp">Editar Men&uacute;</a> -->
<!-- <a class="boton" href="">Borrar Men&uacute;</a> -->
<!-- <br><br> -->
<!-- <h3>Men&uacute; 4</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Men&uacute;</th> -->
<!--     <th>Componente</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Entrada</td> -->
<!--     <td>Rabas</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Plato Principal</td> -->
<!--     <td>Tortilla de papas con carne</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Postre</td> -->
<!--     <td>Helado</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Bebida</td> -->
<!--     <td>Agua</td>		 -->
<!--     <td><a href="verComponente.jsp">Ver Componente</a></td> -->
<!--     <td><a href="editarComponente.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarMenu.jsp">Editar Men&uacute;</a> -->
<!-- <a class="boton" href="">Borrar Men&uacute;</a> -->
<br><br>
<a class="boton" href="altaMenu">Agregar Men&uacute;</a>
<a class="boton" href="altaComponente">Agregar Componente</a>
<br><br>
<h3>Precio:$25</h3>
<h3>cantidad de semana:  <input type="number" name="cantidad"> </h3>
<jsp:include page="pie.jsp"/>						            
</body>
</html>