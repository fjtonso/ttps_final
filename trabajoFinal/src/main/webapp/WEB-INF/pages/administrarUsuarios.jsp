<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administraci&oacute;n de Usuarios</title>
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
<jsp:include page="encabezadoAdministrador.jsp"/>
<h2>Administraci&oacute;n de Usuarios</h2>

			<c:if test="${empty usuarioList}">
                ¡No hay Usuarios Registrados!  
            </c:if>
            <c:if test="${not empty usuarioList}">
               		<table style="width:100%">
                    <thead >
                    <tr>
                        <th>Nombre de Usuario</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Perfil</th>
                        <th></th>
		    			<th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${usuarioList}" var="usr">
                    <tr>
						<td><c:out value="${usr.usuario}" /></td>
						<td><c:out value="${usr.nombre}" /></td>
						<td><c:out value="${usr.apellido}" /></td>
						<td><c:out value="${usr.perfil}" /></td>	
						<td><a href="<%-- editarUsuario?id=${sede.id}--%>">Editar</a></td> <%-- links comentados--%>
						<td><a href="<%--borrarUsuario?id=${sede.id}--%>">Borrar</a></td>		
					</tr>

                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

<!-- <h3>Administradores</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Nombre</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Federico Perez</td> -->
<!--     <td><a href="editarAdmin.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Jose Velez</td> -->
<!--     <td><a href="editarAdmin.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarAdmin.jsp">Agregar Administrador</a> -->
<!-- <br><br> -->
<!-- <h3>Responsables de Sedes</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Nombre</th> -->
<!--     <th>Sede</th> -->
<!--     <th></th>		 -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Juan Perez</td> -->
<!--     <td>Bosque</td> -->
<!--     <td><a href="editarResponsable.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Jose Troncoso</td> -->
<!--     <td>Centro</td> -->
<!--     <td><a href="editarResponsable.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!-- </table> -->
<!-- <br> -->
<!-- <a class="boton" href="editarResponsable.jsp">Agregar Responsable</a> -->
<!-- <br><br> -->
<!-- <h3>Usuarios</h3> -->
<!-- <table style="width:100%"> -->
<!--   <tr> -->
<!--     <th>Nombre</th> -->
<!--     <th>Apellido</th> -->
<!--     <th>Facultad</th>		 -->
<!--     <th>Tipo Usuario</th> -->
<!--     <th>Mail</th> -->
<!--     <th>vegetariano</th> -->
<!--     <th>Cel&iacute;aco</th> -->
<!--     <th>Diab&eacute;tico</th> -->
<!--     <th>Hipertenso</th> -->
<!--     <th>Intolerante Lactosa</th> -->
<!--     <th></th> -->
<!--     <th></th> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Luis</td> -->
<!--     <td>Bosque</td> -->
<!--     <td>Inform&aacute;tica</td> -->
<!--     <td>Alumno</td> -->
<!--     <td>lbosque@hotmail.com</td> -->
<!--     <td>NO</td> -->
<!--     <td>NO</td> -->
<!--     <td>NO</td> -->
<!--     <td>NO</td> -->
<!--     <td>NO</td> -->
<!--     <td><a href="editarUsuario.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>Fabian</td> -->
<!--     <td>Centuri&oacute;n</td> -->
<!--     <td>veterinaria</td> -->
<!--     <td>Docente</td> -->
<!--     <td>elfabo@gmail.com</td> -->
<!--     <td>NO</td> -->
<!--     <td>NO</td> -->
<!--     <td>SI</td> -->
<!--     <td>SI</td> -->
<!--     <td>NO</td> -->
<!--     <td><a href="editarUsuario.jsp">Editar</a></td> -->
<!--     <td><a href="">Borrar</a></td>		 -->
<!--   </tr> -->
<!-- </table> -->
<br>
<a class="boton" href="nuevoUsuario">Agregar Usuario</a>
<jsp:include page="pie.jsp"/>
</body>
</html>