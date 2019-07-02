package registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Patient;

@WebServlet("/patregiServlet")

public class patregiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public patregiServlet() {
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Copying all the input parameters in to local variables
				
		
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String pword = request.getParameter("pword");
				String did = request.getParameter("did");
				String contact = request.getParameter("contact");
				String bday = request.getParameter("bday");
				String gender = request.getParameter("gender");
				String age = request.getParameter("age");
				String ms = request.getParameter("ms");
				String address =request.getParameter("address");
			
			
			Patient patient = new Patient(); //object creation

			patient.setName(name);          //Patient class's Methods are accessed by its object patient
			patient.setEmail(email);       //form's attributes(converted to local variables) are accessed by patient
			patient.setPassword(pword);
			patient.setMarital(ms); 
			patient.setAge(age); 
			patient.setContact(contact); 
			patient.setGender(gender); 
			patient.setDob(bday); 
			patient.setDid(did); 
			patient.setPaddress(address);
			
			
			String sql="insert into table_patient (pname,email,password,phone,pdob,gender,age,marital,address,did) values(?,?,?,?,?,?,?,?,?,?)";
			
			int i=docregiDao.registerpatient(patient,sql);
			
			if(i!=0)
			{
				
				System.out.println("value inserted");
				request.setAttribute("msg", "Registration Successful!");
				getServletContext().getRequestDispatcher("/Patientlogin.jsp").forward(request, response);
			
			
			}
			else
			{
				System.out.println("value is not inserted");
				
			}
			



		

			}
			

	

}
