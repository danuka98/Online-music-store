package MusicStore;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminMostPopularDetailsServlet")
public class AdminMostPopularDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//assign to popularDeatils object
			List<MostPopularDetails> popularDeatils = Admin.showMostPopularDetails();
			
			//sets the given object in the application scope.
			request.setAttribute("popularDeatils", popularDeatils);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//request to AdminMostPopularDetails.jsp
		RequestDispatcher dis = request.getRequestDispatcher("AdminMostPopularDetails.jsp");
		dis.forward(request, response);
	}

}
