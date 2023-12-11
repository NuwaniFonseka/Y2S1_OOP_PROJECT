package Pack;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	public static String url = "jdbc:mysql://localhost:3306/vehicle";
	public static String user = "root";
	public static String password = "MySQLNuwF%241";
	private static Connection con;
	
	public static Connection getConnection() {
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(url, user, password);
		
	}
	catch (Exception e) {
		System.out.println("Database connection is not success!!!");
	}
	
	return con;
}


}
