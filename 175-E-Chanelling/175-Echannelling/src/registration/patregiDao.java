package registration;

import java.sql.Connection;
import java.sql.SQLException;

import com.model.Patient;

import java.sql.PreparedStatement;

import src.DBConnection;


public class patregiDao {


	public String registerUser(Patient patient) //passing object

{
	String name = patient.getName();
	String email = patient.getEmail();
	String pword = patient.getPassword();
	String did = patient.getDid();
	String contact = patient.getContact();

	String bday =patient.getDob();
	String gender = patient.getGender();
	String age = patient.getAge();
	String ms = patient.getMarital();
	String address =patient.getPaddress();
	
	Connection con = null;
	PreparedStatement preparedStatement = null;

	try
	{
		con = DBConnection.createConnection();
		String query = "insert into table_patient(pname,email,password,phone,pdob,gender,age,marital,address,did) values (?,?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
		preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		preparedStatement.setString(1,name);
		preparedStatement.setString(2,email);
		preparedStatement.setString(3,pword);
		preparedStatement.setString(4,contact);
		preparedStatement.setString(5,bday);

		preparedStatement.setString(6,gender);
		preparedStatement.setString(7,age);
		preparedStatement.setString(8,ms);
		preparedStatement.setString(9,address);

		preparedStatement.setString(10,did);
		
				
		int i= preparedStatement.executeUpdate();


		if (i!=0)  //Just to ensure data has been inserted into the database
			
			return "SUCCESS"; 
		
	}
	
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	
	return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
}
	
	
	
	
	
	
	
	
	
	
}