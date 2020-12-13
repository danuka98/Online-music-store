package MusicStore;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Admin {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String userName,String password){
		
		boolean status = false;
		
		try {
			Connection con = DBconnection.getConnection();
			
			//Create a SQL query to select data in adminlogin table.
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM adminlogin where username = ? and password = ? ");
			
			//Sets the designated parameter to the given Java String values.
			stmt.setString(1,userName);
			stmt.setString(2, password);
			
			//execute the insert command using executeUpdate() to make changes in DB
			ResultSet rs = stmt.executeQuery();
			status = rs.next();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	
	
	public static List<userAccount> showDetails(){
		
		//creating a array list
		ArrayList<userAccount> acc = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			Statement stmt = con.createStatement();
			
			//Create a SQL query to select data in useraccounts table.
			String sql = "SELECT * FROM useraccounts";
			
			//execute the insert command using executeUpdate() to make changes in DB
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				//Retrieves the values of the designated column in the current row of this ResultSet object. 
				int id = rs.getInt(1);
				String fullname = rs.getString(2);
				String emails = rs.getString(3);
				String phno = rs.getString(4);
				int ages = rs.getInt(5);
				String username = rs.getString(6);
				String pwd = rs.getString(7);
				
				userAccount useracc = new userAccount(id,fullname,emails,phno,ages,username,pwd);
				
				acc.add(useracc);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return acc;
		
	}
	
	public static boolean updateAdminUserAccount(String id,String name, String email, String phoneNo, String age, String userName,String password) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Create a SQL query to update data in useraccounts table.
			String sql = "UPDATE useraccounts SET name ='"+name+"',email ='"+email+"',phoneNo = '"+phoneNo+"',age ='"+age+"',username ='"+userName+"',password ='"+password+"'"
					+ "where accountID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs>0) {
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
	
	public static boolean deleteAdminUserAccount(String id) {

		boolean isSuccess = false;
		
		try {
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Create a SQL query to delete data in useraccounts table.
			String sql = "DELETE FROM useraccounts WHERE accountID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	public static List<TrendingDetails> showTrendDetails(){
			
		//creating array list 
			ArrayList<TrendingDetails> acc = new ArrayList<>();
			
			try {
				con = DBconnection.getConnection();
				Statement stmt = con.createStatement();
				
				//Create a SQL query to select data in trendingsong table.
				String sql = "SELECT * FROM trendingsong";
				
				ResultSet rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String artistName = rs.getString(2);
					String songName = rs.getString(3);
					
					TrendingDetails useracc = new TrendingDetails(id,artistName,songName);
					
					acc.add(useracc);
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return acc;
			
	}
	
	public static boolean updateAdminTrendingDetails(String id,String artistName, String songName) {
		
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Create a SQL query to update data in trendingsong table.
			String sql = "UPDATE trendingsong SET artistName ='"+artistName+"',songName ='"+songName+"'"
					+ "where trendingID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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

	public static boolean deleteAdminTrendingDetails(String id) {
	
		boolean isSuccess = false;
		
		try {
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Create a SQL query to delete data in trendingsong table.
			String sql = "DELETE FROM trendingsong WHERE trendingID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	public static List<MostPopularDetails> showMostPopularDetails(){
		
		ArrayList<MostPopularDetails> acc = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			Statement stmt = con.createStatement();
			
			//Create a SQL query to select data in mostpopular table.
			String sql = "SELECT * FROM mostpopular";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String artistName = rs.getString(2);
				String songName = rs.getString(3);
				
				MostPopularDetails useracc = new MostPopularDetails(id,artistName,songName);
				
				acc.add(useracc);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return acc;
		
	}
	
	public static boolean updateAdminMostPopularDetails(String id,String artistName, String songName) {
	
		boolean isSuccess = false;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//Create a SQL query to update data in mostpopular table.
			String sql = "UPDATE mostpopular SET artistName ='"+artistName+"',songName ='"+songName+"'"
					+ "where popularID = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	public static boolean deleteAdminMostPopularDetails(String id) {

		boolean isSuccess = false;
		
		try {
		
		con = DBconnection.getConnection();
		stmt = con.createStatement();
		
		//Create a SQL query to delete data in mostpopular table.
		String sql = "DELETE FROM mostpopular WHERE popularID = '"+id+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs>0) {
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
	
	public static List<ContactDetails> showContactDetails(){
		
		ArrayList<ContactDetails> acc = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			Statement stmt = con.createStatement();
			
			//Create a SQL query to select data in contactus table.
			String sql = "SELECT * FROM contactus";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				//Retrieves the values of the designated column in the current rowof this ResultSet object. 
				int id = rs.getInt(1);
				String fName = rs.getString(2);
				String lName = rs.getString(3);
				String email = rs.getString(4);
				String description = rs.getString(5);
				
				ContactDetails useracc = new ContactDetails(id,fName,lName,email,description);
				
				acc.add(useracc);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return acc;
		
	}
}
