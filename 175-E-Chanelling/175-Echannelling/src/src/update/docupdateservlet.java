package src.update;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Doctor;
import registration.docregiDao;


@WebServlet("/docupdateservlet")
public class docupdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pass=request.getParameter("pass");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String deptid = request.getParameter("deptid");
		String department = request.getParameter("department");
		String contact = request.getParameter("contact");
		String degree = request.getParameter("degree");
		String fees = request.getParameter("fees");
		String bday = request.getParameter("bday");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String ms = request.getParameter("ms");
		String address =request.getParameter("address");
	
	HttpSession session=request.getSession();
	Doctor doctor = new Doctor();
	
	doctor.setPassword(pass);
	doctor.setDname(name); 
	doctor.setEmail(email); 
	doctor.setDepid(deptid); 
	doctor.setDepartment(department); 
	doctor.setContact(contact); 
	doctor.setDegree(degree); 
	doctor.setFees(fees); 
	doctor.setDob(bday); 
	doctor.setGender(gender); 
	doctor.setAge(age); 
	doctor.setMarital(ms); 
	doctor.setDaddress(address);

	
	
	
	String sql="update table_doctor set email=?,gender=?,age=?,fees=?,depid=?,depname=?,degree=?,address=?,contact=?,marital=?,dob=? where dname=?";
	int i=docregiDao.updatedoctor(doctor,sql);
	
	System.out.println("i="+i);
	
	if(i!=0)
	{
	session.setAttribute("pass", pass);
	session.setAttribute("uname",name);
	session.setAttribute("email",email);
	session.setAttribute("gender",gender);
	session.setAttribute("age",age);
	session.setAttribute("fees",fees);
	session.setAttribute("depid",deptid);
	session.setAttribute("depname",department);
	session.setAttribute("degree",degree);
	session.setAttribute("address",address);
	session.setAttribute("contact",contact);
	session.setAttribute("marital",ms);
	session.setAttribute("dob", bday);
		
	request.setAttribute("msg", "Doctor is Updated");
	getServletContext().getRequestDispatcher("/viewdocprofile.jsp").forward(request, response);
	}
	else
	{
		request.setAttribute("msg", "Doctor is not Updated");
		getServletContext().getRequestDispatcher("/doctorhome.jsp").forward(request, response);
		
	}
	
	
	
	}

}
