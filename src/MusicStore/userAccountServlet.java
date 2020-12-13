 package MusicStore;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userAccountServlet")
public class userAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			//assign to usDeatils object
			List<userAccount> usDeatils = Admin.showDetails();
			
			//sets the given object in the application scope.
			request.setAttribute("usDeatils", usDeatils);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//request to AdminUserAccounts.jsp
		RequestDispatcher dis = request.getRequestDispatcher("AdminUserAccounts.jsp");
		dis.forward(request, response);
		
	}

}
