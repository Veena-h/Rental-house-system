package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection1 
{

	public static Connection conn;
	public static Connection getconnection() 
	{
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/image1","root","veena");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
}
