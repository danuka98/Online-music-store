package MusicStore;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminTrendingDetailsServlet")
public class AdminTrendingDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//assign to trendDeatils object
			List<TrendingDetails> trendDeatils = Admin.showTrendDetails();
			
			//sets the given object in the application scope.
			request.setAttribute("trendDeatils", trendDeatils);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//request to AdminTrendingDetails.jsp
		RequestDispatcher dis = request.getRequestDispatcher("AdminTrendingDetails.jsp");
		dis.forward(request, response);
	}

}
