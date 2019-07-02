package com.login.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class LoginDao {

	String sql="select*from admin_table where admin_Name=? and pword=?";
	String url="jdbc:mysql://localhost:3306/ecare"; //Name of the data base is "ecare"
	String username="nifi";
	String password="nifi123";
	
	public boolean check(String uname,String pass)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs=st.executeQuery();
			if(rs.next())
			{
				
				return true;
			}
			
		}
		
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
		return false;
		
	}
	
	
}
