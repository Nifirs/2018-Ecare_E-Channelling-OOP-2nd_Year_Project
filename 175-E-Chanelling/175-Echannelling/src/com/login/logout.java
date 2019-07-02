package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/logout")

public class logout extends HttpServlet

{

       
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		session.removeAttribute("uname");
		session.invalidate();
		
		/* after removing the login attributes, automatically redirect to "Frontpage.jsp" */
		
		response.sendRedirect("Frontpage.jsp");
		
		//after removing session attributes can not access the pages which are having session attributes as "uname"
	}

	
	

}
