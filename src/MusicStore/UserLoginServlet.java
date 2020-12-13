package MusicStore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("userpass");
		
		try {
			if(User.validate(username, password)) {
				RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
				dis.forward(request, response);
			}
			else {
				out.print("Sorry invalid username or password ");
				RequestDispatcher dis = request.getRequestDispatcher("UserLogin.jsp");
				dis.include(request, response);
			}
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		out.close();
	}
}

