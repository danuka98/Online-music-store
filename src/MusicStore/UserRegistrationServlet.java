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


@WebServlet("/UserRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phoneNo");
		String age = request.getParameter("age");
		String userName = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		
		try {
			Connection con = DBconnection.getConnection();
			PreparedStatement stmt = con.prepareStatement("INSERT INTO useraccounts VALUES(0,?,?,?,?,?,?)"); 
			
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, phoneNo);
			stmt.setString(4, age);
			stmt.setString(5, userName);
			stmt.setString(6, password);
			
			int i = stmt.executeUpdate();
			
			if(i>0) {
				out.print("You are successfully registered...");
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		out.close();
	}

}
