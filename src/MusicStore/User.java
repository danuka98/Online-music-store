package MusicStore;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class User {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName,String password){
			
			boolean status = false;
			
			try {
				Connection con = DBconnection.getConnection();
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM useraccounts where username = ? and password = ? ");
				
				stmt.setString(1,userName);
				stmt.setString(2,password);
					
				ResultSet rs = stmt.executeQuery();
				status = rs.next();
			}
			catch(Exception e){
				e.printStackTrace();
			}
			return status;
		}
	
	public static List<RockDetails> showRockDetails(){
		
		ArrayList<RockDetails> acc = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			Statement stmt = con.createStatement();
			
			String sql = "SELECT artistName,songName FROM rock";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String artistName = rs.getString(1);
				String songName = rs.getString(2);
				
				RockDetails useracc = new RockDetails(artistName,songName);
				
				acc.add(useracc);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return acc;
		
}

}
