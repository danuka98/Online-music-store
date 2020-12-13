package MusicStore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
	
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String description = request.getParameter("description");
	

		try {
			Connection con = DBconnection.getConnection();
			PreparedStatement stmt = con.prepareStatement("INSERT INTO contactus VALUES(0,?,?,?,?)"); 
			
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setString(3, email);
			stmt.setString(4, description);
			
			
			int i = stmt.executeUpdate();
			
			if(i>0) {
				out.print("You are successfully send message...");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		out.close();
	}

}
