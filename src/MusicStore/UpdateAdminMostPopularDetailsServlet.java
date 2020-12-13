package MusicStore;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAdminMostPopularDetailsServlet")
public class UpdateAdminMostPopularDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the value of a form parameter.
		String id = request.getParameter("id");
		String artistName = request.getParameter("artistName");
		String songName = request.getParameter("songName");
		
		
		boolean isTrue; // create a boolean attribute
		
		isTrue = Admin.updateAdminMostPopularDetails(id, artistName, songName); //assigning to boolean attribute
		
		//check boolean value is true or false
		if(isTrue == true) {
			//request to AdminMostPopularDetails.jsp
			RequestDispatcher dis = request.getRequestDispatcher("AdminMostPopularDetails.jsp");
			dis.forward(request, response);
		}
		else {
			//request to Admin.jsp
			RequestDispatcher dis = request.getRequestDispatcher("Admin.jsp");
			dis.forward(request, response);
		}
	}

}
