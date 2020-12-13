package MusicStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateAdminUserAccountServlet")
public class updateAdminUserAccountServlet extends HttpServlet {
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
		
		isTrue = Admin.updateAdminUserAccount(id, name, email, phoneNo, age, userName, password); //assigning to boolean attribute
		
		//check boolean value is true or false
		if(isTrue == true) {
			//request to AdminTrendingDetails.jsp
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
