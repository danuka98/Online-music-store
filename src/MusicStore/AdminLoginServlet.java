package MusicStore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Returns a PrintWriter object that can send character text.
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		//get the value of a form parameter.
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		try {
			if(Admin.validate(username, password)) {
				//request to Admin.jsp 
				RequestDispatcher dis = request.getRequestDispatcher("Admin.jsp");
				dis.forward(request, response);
			}
			else {
				//print
				out.print("Sorry invalid username or password");
				RequestDispatcher dis = request.getRequestDispatcher("Adminlogin.jsp");
				dis.include(request, response);
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		out.close();
	}

}
