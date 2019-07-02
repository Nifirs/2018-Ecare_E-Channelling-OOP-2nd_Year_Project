package registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Feed;


@WebServlet("/feedservlet")
public class feedservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public feedservlet() {
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String service = request.getParameter("service");
		String nature = request.getParameter("nature");
		String feed = request.getParameter("feed");
		String location = request.getParameter("location");


	
	
	Feed feeds = new Feed();                 //object creation

	feeds.setService(service);             //Feed class's Methods are accessed by its object feeds
	feeds.setPerson_nature(nature);       //form's attributes(converted to local variables) are accessed by feeds
	feeds.setFeed(feed);
	feeds.setHos_location(location); 
	
	
	
	String sql="insert into feedback (service,Person_nature,feed,hos_lacation) values(?,?,?,?)";
	
	int i=docregiDao.getfeed(feeds,sql);
	
	if(i!=0)
	{
		
		System.out.println("value inserted");
		request.setAttribute("msg", "Feedback Successful!");
		getServletContext().getRequestDispatcher("/feedsuccess.jsp").forward(request, response);
	
	
	}
	else
	{
		System.out.println("value is not inserted");
		
	}
	

}
	
}



