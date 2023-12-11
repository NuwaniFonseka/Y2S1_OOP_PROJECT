package Pack;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	


public static boolean validate(String email, String NIC) {
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where email='"+email+"' and NIC='"+NIC+"'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

public static List<User> getCustomer(String NIC) {
	
	ArrayList<User> info = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from user where NIC='"+NIC+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String Firstname = rs.getString(2);
			String Lastname = rs.getString(3);
			String Email = rs.getString(4);
			String Age = rs.getString(5);
			String Mobile = rs.getString(6);
			String NICno = rs.getString(7);
			
			User u = new User(id,Firstname,Lastname,Email,Age,Mobile,NICno);
			info.add(u);
		}
		
	} catch (Exception e) {
		
	}
	
	return info;	
}






	public static boolean insertcustomer(String firstname, String lastname, String email, String age, String mobile, String NIC)
	{
		boolean isSuccess = false;
		
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values(0,'"+firstname+"','"+lastname+"','"+email+"','"+age+"','"+mobile+"','"+NIC+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	   public static boolean updateCustomer(String id, String firstname, String lastname, String email, String age, String mobile, String NIC) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update user set firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',age='"+age+"',mobile='"+mobile+"',NIC='"+NIC+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	 
	    public static List<User> getCustomerDetails(String Id) {
	    	
	    	int convertedID = Integer.parseInt(Id);
	    	
	    	ArrayList<User> info = new ArrayList<>();
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from user where id='"+convertedID+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id = rs.getInt(1);
	    			String Firstname = rs.getString(2);
					String Lastname = rs.getString(3);
					String Email = rs.getString(4);
					String Age = rs.getString(5);
					String Mobile = rs.getString(6);
					String NICno = rs.getString(7);
	    			
					User u = new User(id,Firstname,Lastname,Email,Age,Mobile,NICno);
					info.add(u);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return info;	
	    }
	    
	    
	    public static boolean deleteCustomer(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "delete from user where id='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
}
}
