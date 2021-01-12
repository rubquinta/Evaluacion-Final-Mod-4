package cl.awakelab.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	private static Connection con = null;
	
	private Conexion() {
		
		try {
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String usr = "Reskill";
			String psw = "sabado";
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, usr, psw);
			System.out.println("Conectado");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			System.out.println("Error de conexion");
		}
		
	}
	
	public static Connection getConnection() {
		if (con == null) {
			new Conexion();
		}
		
		return con;
	}

}
