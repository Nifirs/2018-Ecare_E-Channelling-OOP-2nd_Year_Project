package registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Doctor;



@WebServlet("/docregiServlet")
public class docregiServlet extends HttpServlet {
       
    
	private static final long serialVersionUID = 1L;

	public docregiServlet() {    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Copying all the input parameters in to local variables
		
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pword = request.getParameter("pword");
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
	
	
	Doctor doctor = new Doctor(); //object creation

	doctor.setDname(name);        //Doctor class's Methods are accessed by its object doctor
	doctor.setEmail(email);       //form's attributes(converted to local variables) are accessed by doctor
	doctor.setPassword(pword);
	doctor.setDegree(degree); 
	doctor.setMarital(ms); 
	doctor.setAge(age); 
	doctor.setContact(contact); 
	doctor.setGender(gender); 
	doctor.setDob(bday); 
	doctor.setFees(fees); 
	doctor.setDepid(deptid); 
	doctor.setDepartment(department); 
	doctor.setDaddress(address);
	
	
	String sql="insert into table_doctor (dname,email,password,gender,age,fees,depid,depname,degree,address,contact,marital,dob) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	int i=docregiDao.registerdoctor(doctor,sql);
	
	if(i!=0)
	{
		
		System.out.println("value inserted");
		request.setAttribute("msg", "Registration Successful!");
		getServletContext().getRequestDispatcher("/Doctorlogin.jsp").forward(request, response);
	
	
	}
	else
	{
		System.out.println("value is not inserted");
		
	}
	

}
	
}	
	
	

