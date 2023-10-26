	package com.branferacc.model;

public class entidades {
	private int id;
	private String nombreMercancia;
	private String cantidad;
	private String precio;
	private String lugarInventario;
	
	public entidades() {
		// TODO Auto-generated constructor stub
	}
	
	public entidades(int id, String nombreMercancia, String cantidad, String precio, String lugarInventario) {
		super();
		this.id = id;
		this.nombreMercancia = nombreMercancia;
		this.cantidad = cantidad;
		this.precio = precio;
		this.lugarInventario = lugarInventario;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreMercancia() {
		return nombreMercancia;
	}

	public void setNombreMercancia(String nombreMercancia) {
		this.nombreMercancia = nombreMercancia;
	}

	public String getCantidad() {
		return cantidad;
	}

	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getLugarInventario() {
		return lugarInventario;
	}

	public void setLugarInventario(String lugarInventario) {
		this.lugarInventario = lugarInventario;
	}

	@Override
	public String toString() {
		return "entidades [id=" + id + ", nombreMercancia=" + nombreMercancia + ", cantidad=" + cantidad + ", precio="
				+ precio + ", lugarInventario=" + lugarInventario + "]";
	}
	
	
}
