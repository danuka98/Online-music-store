package MusicStore;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ImageRetrivingServlet3")
public class ImageRetrivingServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	protected void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		
		//write binary data into the response.
		byte[] img = null;
		ServletOutputStream sos = null;
		
		try {
			//Create a SQL query to select data to retrieve.
			String sql = "SELECT uploadPhoto FROM trendingsong WHERE trendingID = 11";
			
			Connection con = DBconnection.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			
			ResultSet rs = stmt.executeQuery();
			
			// Retrieve data from the result set object
			if(rs.next()) {
				img = rs.getBytes(1);
				sos = response.getOutputStream();
				sos.write(img); //Writes img bytes from the specified byte array to this output stream.
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
