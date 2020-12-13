package MusicStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteAdminUserAccountServlet")
public class deleteAdminUserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//get the value of a form parameter.
		String id = request.getParameter("userid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phoneno");
		String age = request.getParameter("age");
		String userName = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		
		boolean isTrue; // create a boolean attribute
		
		isTrue = Admin.deleteAdminUserAccount(id); //assigning to boolean value
		
		if(isTrue == true) {
			//request to AdminUserAccounts.jsp
			RequestDispatcher dis = request.getRequestDispatcher("AdminUserAccounts.jsp");
			dis.forward(request, response);
		}
		else {
			//request to Admin.jsp
			RequestDispatcher dis = request.getRequestDispatcher("Admin.jsp");
			dis.forward(request, response);
		}
	}

}
