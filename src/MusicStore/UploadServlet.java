package MusicStore;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the value of a form parameter
		String artistName = request.getParameter("ArtistName");
		String songName = request.getParameter("songName");
		String uploadPhoto = request.getParameter("songPhoto");
		String uploadAudio = request.getParameter("audio");
		
		//FileInputStream class obtains input bytes from a file.
		FileInputStream fis = new FileInputStream(new File(uploadPhoto));
		FileInputStream fis1 = new FileInputStream(new File(uploadAudio));
		
		
		try {
			Connection con = DBconnection.getConnection();
			//Create a SQL query to insert data into trendingsong table.
			PreparedStatement stmt = con.prepareStatement("INSERT INTO trendingsong VALUES (0,?,?,?,?)");
	
			//Sets the designated parameter to the given string values.
			stmt.setString(1, artistName);
			stmt.setString(2, songName);
			
			//Sets the designated parameter to the given binarystream values.
			stmt.setBinaryStream(3, fis);
			stmt.setBinaryStream(4, fis1);
			
			//execute the insert command using executeUpdate() to make changes in DB
			int rs = stmt.executeUpdate();
			
			
			if(rs>0) {
				response.getWriter().println("successfully uploaded"); // print
			}
			else {
				response.getWriter().println("upload is not complete"); // print
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
