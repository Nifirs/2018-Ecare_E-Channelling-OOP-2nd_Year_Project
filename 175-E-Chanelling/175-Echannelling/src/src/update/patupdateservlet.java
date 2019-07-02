package src.update;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Patient;

import registration.docregiDao;


@WebServlet("/patupdateservlet")
public class patupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String pass=request.getParameter("pass");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String deptid = request.getParameter("deptid");
		String contact = request.getParameter("contact");
		String bday = request.getParameter("bday");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String ms = request.getParameter("ms");
		String address =request.getParameter("address");
	
	HttpSession session=request.getSession();
	Patient patient = new Patient();
	
	patient.setPassword(pass);
	patient.setName(name); 
	patient.setEmail(email); 
	patient.setDid(deptid); 
	patient.setContact(contact); 
	patient.setDob(bday); 
	patient.setGender(gender); 
	patient.setAge(age); 
	patient.setMarital(ms); 
	patient.setPaddress(address);

	
	
	
	String sql="update table_patient set email=?,phone=?,pdob=?,gender=?,age=?,marital=?,address=?,did=? where pname=?";
	int i=docregiDao.updatepatient(patient,sql);
	
	System.out.println("i="+i);
	
	if(i!=0)
	{
	session.setAttribute("pass", pass);
	session.setAttribute("uname",name);
	session.setAttribute("email",email);
	session.setAttribute("gender",gender);
	session.setAttribute("age",age);
	session.setAttribute("depid",deptid);
	session.setAttribute("address",address);
	session.setAttribute("contact",contact);
	session.setAttribute("marital",ms);
	session.setAttribute("dob", bday);
		
	request.setAttribute("msg", "Patient is Updated");
	getServletContext().getRequestDispatcher("/viewpatientprofile.jsp").forward(request, response);
	}
	else
	{
		request.setAttribute("msg", "Patient is not Updated");
		getServletContext().getRequestDispatcher("/patienthome.jsp").forward(request, response);
		
	}
	
	
	
	}

}