package registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Appointment;


@WebServlet("/bookingservlet")
public class bookingservlet extends HttpServlet 

{
	private static final long serialVersionUID = 1L;

	public bookingservlet() {}
	      
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Copying all the input parameters in to local variables
		
		String pname = request.getParameter("pname");
		String dname = request.getParameter("dname");
		String pid = request.getParameter("pid");
		String did = request.getParameter("did");
		String fees = request.getParameter("fees");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
	
	
	Appointment app = new Appointment(); //object creation

	app.setPname(pname); 
	app.setDocname(dname);      
	app.setPid(pid);
	app.setDid(did); 
	app.setConsul_fee(fees); 
	app.setApp_date(date); 
	app.setApp_time(time); 
	
	
	
	String sql="insert into table_appointment (pid,pname,did,docname,consul_fee,app_time,app_date) values(?,?,?,?,?,?,?)";
	
	int i=docregiDao.bookappointment(app,sql);  //docregiDao is a class which is used to access data base
	 											//bookappointment() is a static method in the docregiDao class,
												//since it is a static method it is accessed by Class name docregiDao
	
	if(i!=0)
	{
		
		System.out.println("value inserted");
		request.setAttribute("msg", "Booking Successful!");
		getServletContext().getRequestDispatcher("/appSuccess.jsp").forward(request, response);
	
	
	}
	else
	{
		System.out.println("value is not inserted");
		
	}
	


}


}




