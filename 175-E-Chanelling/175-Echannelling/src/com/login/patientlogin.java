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

import com.model.Patient;

import registration.docregiDao;


@WebServlet("/patientlogin")
public class patientlogin extends HttpServlet 

{
	private static final long serialVersionUID = 1L;
       
    
    public patientlogin() {}
       	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Copying all the input parameters in to local variables

		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");

		if(uname.equals(null)||uname==""||pass.equals(null)||pass=="")
		{
			
			request.setAttribute("msg", "All fields are mandatory");
			getServletContext().getRequestDispatcher("/Patientlogin.jsp").forward(request, response);
		}
		
		else
		{
			
			Patient patient=new Patient();
			patient.setName(uname);
			patient.setPassword(pass);
			
			String sql="select * from table_patient where pname=? and password=? ";
			
			
			HttpSession session=request.getSession();
			
			
			ResultSet rs=docregiDao.loginpatient(patient,sql);//docregiDao is a class which is used to access data base
															 //loginpatient() is a static method in the docregiDao class,
            												//since it is a static method it is accessed by Class name docregiDao
		
			try {
				if(rs.next())
				{
					session.setAttribute("uname", rs.getString(2));
					session.setAttribute("email", rs.getString(3));
					session.setAttribute("pass", rs.getString(4));
					session.setAttribute("contact", rs.getString(5));
					session.setAttribute("dob", rs.getString(6));

					session.setAttribute("gender", rs.getString(7));
					session.setAttribute("age", rs.getString(8));
					session.setAttribute("marital", rs.getString(9));
					session.setAttribute("address", rs.getString(10));	
					session.setAttribute("depid", rs.getString(11));
				
					
					
									
					getServletContext().getRequestDispatcher("/patienthome.jsp").forward(request, response);

				}
				else
				{
					
					getServletContext().getRequestDispatcher("/Patientlogin.jsp").forward(request, response);
					

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		}
		
	}
	
}


