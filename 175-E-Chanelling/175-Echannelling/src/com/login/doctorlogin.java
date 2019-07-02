package com.login;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Doctor;
import registration.docregiDao;


@WebServlet("/doctorlogin")
	public class doctorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public doctorlogin() {
       
       
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Copying all the input parameters in to local variables

		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");

		if(uname.equals(null)||uname==""||pass.equals(null)||pass=="")
		{
			
			request.setAttribute("msg", "All fields are mandatory");
			getServletContext().getRequestDispatcher("/Doctorlogin.jsp").forward(request, response);
		}
		
		else
		{
			
			Doctor doctor=new Doctor(); //Making an object from Doctor Model class
			doctor.setDname(uname);
			doctor.setPassword(pass);
			
			String sql="select * from table_doctor where dname=? and password=? ";
			
			
			HttpSession session=request.getSession();
			
			
			ResultSet rs=docregiDao.logindoctor(doctor,sql); //docregiDao is a class which is used to access data base
			                                                 //logindoctor() is a static method in the docregiDao class,
                                                             //since it is a static method it is accessed by Class name docregiDao
			
			
			try {
				if(rs.next())
				{
					session.setAttribute("uname", rs.getString(2));
					session.setAttribute("email", rs.getString(3));
					session.setAttribute("pass", rs.getString(4));
					session.setAttribute("gender", rs.getString(5));
					session.setAttribute("age", rs.getString(6));
					session.setAttribute("fees", rs.getString(7));
					session.setAttribute("depid", rs.getString(8));
					session.setAttribute("depname", rs.getString(9));
					session.setAttribute("degree", rs.getString(10));
					session.setAttribute("address", rs.getString(11));
					session.setAttribute("contact", rs.getString(12));
					session.setAttribute("marital", rs.getString(13));
					session.setAttribute("dob", rs.getString(14));
				
					//setting session attributes in order to access after logging
													
					getServletContext().getRequestDispatcher("/doctorhome.jsp").forward(request, response);

				}
				else
				{
					
					getServletContext().getRequestDispatcher("/Doctorlogin.jsp").forward(request, response);
					

				}
				
			} 
			
			catch (SQLException e) 
			{
				
					e.printStackTrace();
			}
		
		
		}
		
	}
	
}


