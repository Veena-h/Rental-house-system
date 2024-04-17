package com.model;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.entity.image;
import com.mysql.cj.jdbc.Blob;

public class promodel 
{
	Connection conn;
	public promodel(Connection conn) 
	{
		super();
		this.conn=conn;
		// TODO Auto-generated constructor stub
	}
	
	
	public int insert(InputStream file) throws SQLException
	{
		String sql="insert into image(image) value(?)";
		int row=0;
		
		try {
		PreparedStatement ps=conn.prepareStatement(sql);
		
		if(file!=null)
		{
			ps.setBlob(1,file);
		}
		
		row=ps.executeUpdate();
		System.out.println("promodel enter");
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return row;
		
	}
	
	//retrive image from db
	public List<image> display() throws SQLException
	{
		
		
		  List<image> al=new ArrayList<image>();
		   
		     String sql="select id,image from image";
		  PreparedStatement stmt = conn.prepareStatement(sql);
		  
		  ResultSet rs=stmt.executeQuery();
		  
		  
		  while(rs.next())
		  {
			 image e = new image(); 
			  e.setId(rs.getInt(1));
			 
			java.sql.Blob blob=rs.getBlob(2);
			 if(blob!=null)
			 {
				 byte[] img=blob.getBytes(1,(int)blob.length());
				 e.setImage(img);
			 }
			 
			  
			  System.out.println("promodel enter");
	          //Display values
	         al.add(e);
			  
		  }
		 
		
		
		
		
		 return al;
	}
	
	
	
	
	
	
	

}
