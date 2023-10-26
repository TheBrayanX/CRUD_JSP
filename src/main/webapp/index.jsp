<%@page import="java.util.Iterator"%>
<%@page import="com.branferacc.model.entidades"%>
<%@page import="com.branferacc.logica.crud_Inventario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.branferacc.logica.Conexion"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BranferAcc | Listar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="icon" href="/ruta/al/favicon.ico" type="image/x-icon">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
	body {
	background-color: #232323;
	color: #FFFFFF;
	}
</style>
</head>
<body>
	<%
	crud_Inventario dao = new crud_Inventario();
	entidades per = null;
	
	String Id = request.getParameter("txtid");
	
	int id = 0;
	if (Id != null && !Id.isEmpty()) {
	    try {
	        id = Integer.parseInt(Id);
	    } catch (NumberFormatException e) {
	        e.printStackTrace();
	    }
	}
	
	entidades et = new entidades();
	et.setId(id);
	dao.eliminar(et);
	
	%>	
	<div class="container">
		<h1>Inventario</h1>
		<br> <a href="agregar.jsp" class="btn btn-success">Añadir</a> 
		<a href="editar.jsp" class="btn btn-primary">Editar</a> 
		<br>
		<br>
		<table class="table table-bordered">
			<tr>
				<th class="text-center">ID</th>
				<th class="text-center">NOMBRE MERCANCIA</th>
				<th class="text-center">CANTIDAD</th>
				<th class="text-center">PRECIO Ud.</th>
				<th class="text-center">LUGAR INVENTARIO</th>
			</tr>
			<%
			List<entidades> arrayList = dao.listar();
			Iterator<entidades> iter = arrayList.iterator();

			while (iter.hasNext()) {
				per = iter.next();
			%>
			<tr>
				<th class="text-center"><%=per.getId()%></th>
				<th class="text-center"><%=per.getNombreMercancia()%></th>
				<th class="text-center"><%=per.getCantidad()%></th>
				<th class="text-center"><%=per.getPrecio()%></th>
				<th class="text-center"><%=per.getLugarInventario()%></th>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<br>
	<div class="container">
	<h1 class="text-center">Eliminar inventario: </h1>
		    <form action="" method="post" class="mx-auto my-5" style="width: 500px;">
	        <div class="form-group">	
	            <label for="txtId" class="form-label">ID:</label>
	            <input type="text" name="txtid" id="txtid" class="form-control" />
	        </div>
	        <br>
	        <br>
	        <input type="submit" value="Borrar" class="btn btn-success btn-lg" />
	    </form>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>