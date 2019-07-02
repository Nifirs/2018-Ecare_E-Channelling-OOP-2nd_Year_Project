package registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.model.Appointment;
import com.model.Doctor;
import com.model.Feed;
import com.model.Patient;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class docregiDao {


	private static Connection connect() {

		
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","nifi","nifi123");
			System.out.println("connected");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return con;
		
		
		
	}
	
	
	public static int registerdoctor(Doctor doctor, String sql) {

		int i=0;
		Connection  con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,doctor.getDname());

			ps.setString(2,doctor.getEmail());
			ps.setString(3,doctor.getPassword());
			ps.setString(4,doctor.getGender());
			ps.setString(5,doctor.getAge());
			ps.setString(6,doctor.getFees());
			ps.setString(7,doctor.getDepid());
			ps.setString(8,doctor.getDepartment());
			ps.setString(9,doctor.getDegree());
			ps.setString(10,doctor.getDaddress());
			ps.setString(11,doctor.getContact());
			ps.setString(12,doctor.getMarital());
			ps.setString(13,doctor.getDob());

			
		i=	ps.executeUpdate();
			
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
	}


	public static ResultSet logindoctor(Doctor doctor, String sql) {

		
		ResultSet rs=null;
		Connection con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,doctor.getDname());
			ps.setString(2,doctor.getPassword());
			
			rs=ps.executeQuery();
		
		
		
		
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		
		
		
		return rs;
	}


	public static int updatedoctor(Doctor doctor, String sql) {

		int i=0;
		
		Connection con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,doctor.getEmail());
			ps.setString(2,doctor.getGender());
			ps.setString(3,doctor.getAge());
			ps.setString(4,doctor.getFees());
			ps.setString(5,doctor.getDepid());
			ps.setString(6,doctor.getDepartment());
			ps.setString(7,doctor.getDegree());
			ps.setString(8,doctor.getDaddress());
			ps.setString(9,doctor.getContact());
			ps.setString(10,doctor.getMarital());
			ps.setString(11,doctor.getDob());
			
			ps.setString(12,doctor.getDname());
			

		i=ps.executeUpdate();		
		

		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		return i;
	}

/////////////////////////////////Doctor end//////////////////////////
	
	
	public static int registerpatient(Patient patient, String sql) {

		int i=0;
		Connection  con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,patient.getName());

			ps.setString(2,patient.getEmail());
			ps.setString(3,patient.getPassword());
			ps.setString(4,patient.getContact());
			ps.setString(5,patient.getDob());
			ps.setString(6,patient.getGender());
			ps.setString(7,patient.getAge());
			ps.setString(8,patient.getMarital());
			ps.setString(9,patient.getPaddress());
			ps.setString(10,patient.getDid());
		
			

			
		i=	ps.executeUpdate();
			
			
		
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		return i;
		
		
		
	
	}
public static ResultSet loginpatient(Patient patient, String sql) {

		
		ResultSet rs=null;
		Connection con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,patient.getName());
			ps.setString(2,patient.getPassword());
			
			rs=ps.executeQuery();
		
		
		
		
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		
		
		return rs;
	}


	public static int updatepatient(Patient patient, String sql) {

		int i=0;
		
		Connection con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			

			ps.setString(1,patient.getEmail());						
			ps.setString(2,patient.getContact());
			ps.setString(3,patient.getDob());
			ps.setString(4,patient.getGender());
			ps.setString(5,patient.getAge());
			ps.setString(6,patient.getMarital());
			ps.setString(7,patient.getPaddress());
			ps.setString(8,patient.getDid());
			ps.setString(9,patient.getName());
			

		i=ps.executeUpdate();		
		

		
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		
		return i;
	}

///////////////////////////////Patient end/////////////////////////////
	
	public static int bookappointment(Appointment app, String sql) {
		
		
		int i=0;
		Connection  con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,app.getPid());

			ps.setString(2,app.getPname());
			ps.setString(3,app.getDid());
			ps.setString(4,app.getDocname());
			ps.setString(5,app.getConsul_fee());
			ps.setString(6,app.getApp_time());
			ps.setString(7,app.getApp_date());
			
		
			
		i=	ps.executeUpdate();
			
			
		
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
		return i;
		
		
				
		
	}

/////////////////////////////Appointment end//////////////////////////////
	
	
	public static int getfeed(Feed feed, String sql) {
		

		int i=0;
		Connection  con=connect();
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,feed.getService());

			ps.setString(2,feed.getPerson_nature());
			ps.setString(3,feed.getFeed());
			ps.setString(4,feed.getHos_location());
			
		
			
		i=	ps.executeUpdate();
			
			
		
		} 
		
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		
		return i;
		
		
		
	}

	
		
	
}
