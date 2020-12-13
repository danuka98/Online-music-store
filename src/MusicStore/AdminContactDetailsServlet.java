package MusicStore;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminContactDetailsServlet")
public class AdminContactDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//assign to contactDeatils object
			List<ContactDetails> contactDeatils = Admin.showContactDetails();
			
			//sets the given object in the application scope.
			request.setAttribute("contactDeatils", contactDeatils);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//request to AdminMessage.jsp 
		RequestDispatcher dis = request.getRequestDispatcher("AdminMessage.jsp");
		dis.forward(request, response);
	}

}
