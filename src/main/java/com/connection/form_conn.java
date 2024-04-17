package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class form_conn 
{
	public static Connection conn;
	
	public static Connection getconnection() 
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rental","root","veena");
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}

}
