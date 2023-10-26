package com.branferacc.logica;

import com.branferacc.com.interfaces.CRUD;
import com.branferacc.model.entidades;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class crud_Inventario implements CRUD{
	Conexion cn = new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	@Override
	public List<entidades> listar() {
	    ArrayList<entidades> list = new ArrayList<>();
	    try {
	        con = cn.getConnection();
	        String sql = "SELECT * FROM inventario";
	        ps = con.prepareStatement(sql);
	        rs = ps.executeQuery();

	        while (rs.next()) {
	            entidades per = new entidades();
	            per.setId(rs.getInt(1));
	            per.setNombreMercancia(rs.getString(2));
	            per.setCantidad(rs.getString(3));
	            per.setPrecio(rs.getString(4));
	            per.setLugarInventario(rs.getString(5));
	            list.add(per);
	        }
	        
	    } catch (SQLException e) {
	        System.out.println("ERROR: " + e.getMessage());
	    }
	    return list;
	}
	@Override
	public entidades list(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean añadir(entidades per) {
		try {
			con = cn.getConnection();
			entidades per2 = new entidades();
			String sql = "INSERT INTO `inventario` (`nombreMercancia`, `cantidad`, `precio`, `lugarInventario`) VALUES (?,?,?,?);";
			ps = con.prepareStatement(sql);
	        ps.setString(1, per.getNombreMercancia());
	        ps.setString(2, per.getCantidad());
	        ps.setString(3, per.getPrecio());
	        ps.setString(4, per.getLugarInventario());
			
			if(ps.executeUpdate() == 1) {
				return true;
			}
			
		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		}
		
		return false;
	}
	@Override
	public boolean editar(entidades per) {
	    String sql = "UPDATE `inventario` SET `nombreMercancia` = ? WHERE `inventario`.`id` = ?";
	    try {
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        ps.setString(1, per.getNombreMercancia());
	        ps.setInt(2, per.getId());
	        
	        int columnasActualizadas = ps.executeUpdate();
	        
	        if (columnasActualizadas > 0) {
	            return true;
	        }
	    } catch (SQLException e) {
	        System.out.println("ERROR: " + e.getMessage());
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    
	    return false;
	}
		
	@Override
	public boolean eliminar(entidades per) {
	    String sql = "DELETE FROM inventario WHERE id = ?";
	    try {
	        con = cn.getConnection();
	        ps = con.prepareStatement(sql);
	        ps.setInt(1, per.getId()); 
	        int filasAfectadas = ps.executeUpdate();
	        
	        if (filasAfectadas > 0) {
	            return true; 
	        }
	    } catch (SQLException e) {
	        System.out.println("ERROR: " + e.getMessage());
	    } finally {
	        if (con != null) {
	            try {
	                con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return false; 
	}
}

