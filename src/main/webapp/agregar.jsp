<%@page import="com.branferacc.model.entidades"%>
<%@page import="com.branferacc.logica.crud_Inventario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branfer Acc | Agregar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style>
	body {
	background-color: #232323;
	color: #FFFFFF;
	}
</style>
</head>
<body>
	<%
	String nombreMercancia = request.getParameter("txtNomMerca");
	String cantidad = request.getParameter("txtCant");
	String precio = request.getParameter("txtPrecio");
	String lugarInventario = request.getParameter("txtLugarInvent");
	
	entidades et = new entidades();
	et.setNombreMercancia(nombreMercancia);
	et.setCantidad(cantidad);
	et.setPrecio(precio);
	et.setLugarInventario(lugarInventario);
	
	crud_Inventario dao = new crud_Inventario();
	dao.añadir(et);
	%>
	<div class="container">
		<br>
	    <h1 class="text-center">Agregar al Inventario</h1>
	    <br>
	    <form action="" method="post" class="mx-auto my-5" style="width: 500px;">
	        <div class="form-group">
	            <label for="txtNomMerca" class="form-label">Nombre Mercancia:</label>
	            <input type="text" name="txtNomMerca" id="txtNomMerca" class="form-control" />
	        </div>
	        <div class="form-group">
	            <label for="txtCant" class="form-label">Cantidad:</label>
	            <input type="text" name="txtCant" id="txtCant" class="form-control" />
	        </div>
	        <div class="form-group">
	            <label for="txtPrecio" class="form-label">Precio:</label>
	            <input type="text" name="txtPrecio" id="txtPrecio" class="form-control" />
	        </div>
	        <div class="form-group">
	            <label for="txtLugarInvent" class="form-label">Lugar Inventario:</label>
	            <input type="text" name="txtLugarInvent" id="txtLugarInvent" class="form-control" />
	        </div>
	        <br>
	        <br>
	        <input type="submit" value="Enviar" class="btn btn-success btn-lg" />
	        <a href="index.jsp" class="btn btn-success btn-lg">Regresar</a>
	    </form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>