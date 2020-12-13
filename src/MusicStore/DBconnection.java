package MusicStore;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {

	//Initialize all the information regarding Database Connection
	
	private static String url = "jdbc:mysql://localhost:3306/onlinemusicstore";
	private static String userName = "root";
	private static String password = "Danu@1998";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
			
		}catch(Exception e) {
			System.out.println("Connection is not success");
		}
		
		return con;
	}
}
