package com.branferacc.logica;

import java.sql.*;

public class Conexion {
	@SuppressWarnings("finally")
	public static Connection conecta() {

		Connection conecta = null;

		try {
			String url = "jdbc:mysql://localhost:3306/empresa?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String Driver = "com.mysql.cj.jdbc.Driver";
			String user = "user";
			String clave = "";

			Class.forName(Driver);
			conecta = DriverManager.getConnection(url, user, clave);

		} catch (ClassNotFoundException e) {
			System.out.println("ERROR: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		} finally {
			return conecta;
		}
	}

	public Connection getConnection() {
		// TODO Auto-generated method stub
		return conecta();
	}
}
