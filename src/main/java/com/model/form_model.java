package com.model;

import java.io.InputStream;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.controller.house_info_form;
import com.entity.book_form_entity;
import com.entity.form_entity;
import com.entity.house_info;



public class form_model 
{
	Connection conn;
	public form_model(Connection conn) 
	{
		super();
		this.conn=conn;
		
	}
	
	/* user registration */
	public boolean insert(form_entity f) throws SQLException
	{
		boolean b=false;
		String sql="insert into register (name,email,password,re_password) values(?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);

		p.setString(1, f.getName());  
		p.setString(2, f.getEmail());
		p.setString(3, f.getPassword());
		p.setString(4, f.getRe_passsword());
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;
		
	}

	/* user login */
	public String login(String email,String password) throws SQLException 
	{
		form_entity r=null;
		String s=null;
		String sql="select * from register where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);
		 
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			r=new form_entity();
			r.setName(rs.getString("name"));
			r.setEmail(rs.getString("email"));;
			r.setPassword(rs.getString("password"));
			r.setRe_passsword(rs.getString("re_password"));
			
			if(email.equals(r.getEmail()) && password.equals(r.getPassword()))
			{
				s=r.getName();
				break;
				
			}
		}
		
	
      		
		return s;
	}

	
	
	/* admin registartion */
	public boolean admin_insert(form_entity f) throws SQLException 
	{
		boolean b=false;
		String sql="insert into admin1 (name,phone,email,password) values(?,?,?,?)";
		PreparedStatement p=conn.prepareStatement(sql);

		p.setString(1, f.getName());
		p.setString(2, f.getPhone());
		p.setString(3, f.getEmail());
		p.setString(4, f.getPassword());
		
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;
	}

	/* admin login */
	public String admin_login(String email, String password) throws SQLException
	{
		form_entity r=null;
		String s=null;
		String sql="select * from admin1 where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);
		 
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			r=new form_entity();
			r.setName(rs.getString("name"));
			r.setEmail(rs.getString("email"));;
			r.setPassword(rs.getString("password"));
			
			
			if(email.equals(r.getEmail()) && password.equals(r.getPassword()))
			{
				s=r.getName();
				break;
				
			}
		}
		
	
      		
		return s;
	}
	
	
	/* display */
	public List<form_entity> select() throws SQLException
	{
	     List<form_entity> al=new ArrayList<form_entity>();
	     form_entity e=null;
	     String sql="select * from admin1";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new form_entity(); 
		  e.setId(rs.getInt(1));
		  e.setPhone(rs.getString(2));
		  e.setName(rs.getString(3));
		  e.setEmail(rs.getString(4));
		  e.setPassword(rs.getString(5));
		  
          //Display values
         al.add(e);
		  
	  }
	return al;

	
	}
	
	
	
	/* admin login detail in profile page of dashboard */
	public List<form_entity> show(int id) throws SQLException
	{
		List<form_entity> al=new ArrayList<form_entity>();
		form_entity e=null;
		String sql = "select * from admin1 where id=?;";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		  {
			  e = new form_entity(); 
			  e.setId(rs.getInt(1));
			  e.setName(rs.getString(2));
			  e.setPhone(rs.getString(3));
			 
			  e.setEmail(rs.getString(4));
			  e.setPassword(rs.getString(5));
			  
	          //Display values
	         al.add(e);
			  
		  }
		
		return al;
	}
	
	
	
	/* update admindetail */
	public boolean update(form_entity f) throws SQLException 
	{
		boolean b=false;
		String sql="update admin1 set name=?,phone=?,email=?,password=? where id=?";
		PreparedStatement p=conn.prepareStatement(sql);
//		ResultSet rs=p.executeQuery();
		p.setString(1, f.getName());  
		p.setString(2, f.getPhone());
		p.setString(3, f.getEmail());
		p.setString(4, f.getPassword());
		p.setInt(5, f.getId());
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("updated");
			b=true;
			
		}
		
		
		
			
		return b;
	}
	
	
	
	/* insert house_info */
	public int house_info1(InputStream file,house_info h) throws SQLException
	{
		String sql="insert into house_info(property_id,property_name,img1,location,Amenities,property_type,Furnishing_status,rent,phone,agent_name,agent_email,agent_phone,area) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		int row=0;
		
		try {
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setString(1, h.getProperty_Id());
		ps.setString(2, h.getProperty_name());
		
		/* img1 */
		if(file!=null)
		{
			ps.setBlob(3,file);
		}
		
		
		
		
		ps.setString(4, h.getLocation());
		ps.setString(5, h.getAmenities());
		
		ps.setString(6, h.getProperty_type());
		
		/* ps.setString(7, h.getArea()); */
		ps.setString(7,h.getStatus());
		ps.setString(8, h.getRent());
		ps.setString(9, h.getPhone());
		
		
		ps.setString(10, h.getAgent_name());
		ps.setString(11, h.getAgent_email());
		ps.setString(12, h.getAgent_phone());
		ps.setString(13, h.getArea());
		
		
		
		row=ps.executeUpdate();
		System.out.println("promodel enter");
		}catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return row;
		
	}
	
	
	
	/* house show */
	public List<house_info> select1_house() throws SQLException
	{
	     List<house_info> al=new ArrayList<house_info>();
	     house_info e=null;
	     String sql="select * from house_info";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new house_info(); 
		  e.setId(rs.getInt(1));
		  e.setProperty_Id(rs.getString(2));
		  
		  
		  e.setProperty_name(rs.getString(3));;
		  
		  java.sql.Blob blob=rs.getBlob(4);
			 if(blob!=null)
			 {
				 byte[] img=blob.getBytes(1,(int)blob.length());
				 e.setImg1(img);
			 }
		  
		  e.setLocation(rs.getString(5));
		  e.setAmenities(rs.getString(6));
		  e.setProperty_type(rs.getString(7));
		  
		  
		  e.setStatus(rs.getString(8));
		  e.setRent(rs.getString(9));
		  e.setPhone(rs.getString(10));
		  
		  e.setAgent_name(rs.getString(11));
		  e.setAgent_email(rs.getString(12));
		  e.setAgent_phone(rs.getString(13));
		  e.setArea(rs.getString(14));
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
		
	}
	
	
	/* get id for visiting detail for booking form */
	public List<house_info> book_getId(int id) throws SQLException
	{
		List<house_info> al=new ArrayList<house_info>();
		house_info f=null;
		String sql = "select * from house_info where id=?;";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);   
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			f=new house_info();
			f.setId(rs.getInt(1));
			f.setProperty_Id(rs.getString(2));
			f.setProperty_name(rs.getString(3));
			
			 java.sql.Blob blob=rs.getBlob(4);
			 if(blob!=null)
			 {
				 byte[] img=blob.getBytes(1,(int)blob.length());
				 f.setImg1(img);
			 }
			f.setLocation(rs.getString(5));
			
			f.setAmenities(rs.getString(6));
			f.setProperty_type(rs.getString(7));
			f.setStatus(rs.getString(8));
			f.setRent(rs.getString(9));
			f.setPhone(rs.getString(10));
			f.setAgent_name(rs.getString(11));
			f.setAgent_email(rs.getString(12));
			f.setAgent_phone(rs.getString(13));
			f.setArea(rs.getString(14));
			
			
			
			
			al.add(f);
		}
		
		return al;
	}

	
	/* user visiting booking */
	public boolean book_insert(book_form_entity f) throws SQLException
	{
		boolean b=false;
		String sql="insert into book_form(id,agent_name,name,address,gender,email,phone,v_date,v_time,reason) values(?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement p=conn.prepareStatement(sql);
		p.setString(1, f.getId());
		p.setString(2, f.getAgent_name());
		p.setString(3, f.getName());
		p.setString(4, f.getAddress());
		p.setString(5, f.getGender());
		p.setString(6, f.getEmail());
		p.setString(7, f.getPhone());
		p.setString(8, f.getVisiting_date());
		p.setString(9, f.getVisiting_time());
		p.setString(10, f.getReason());
		
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("inserted");
			b=true;
			
		}
		
		
		
			
		return b;
		
	}
	
	/* user request shown at admin user_request page */
	public List<book_form_entity> book_show_admin() throws SQLException
	{
	     List<book_form_entity> al=new ArrayList<book_form_entity>();
	     book_form_entity e=null;
	     String sql="select * from book_form";
	  PreparedStatement stmt = conn.prepareStatement(sql);
	  
	  ResultSet rs=stmt.executeQuery();
	  
	  while(rs.next())
	  {
		  e = new book_form_entity(); 
		  
		  e.setUnique_id(rs.getInt(1));
		  e.setId(rs.getString(2));
		  e.setAgent_name(rs.getString(3));
		  e.setName(rs.getString(4));
		  e.setAddress(rs.getString(5));
		  e.setGender(rs.getString(6));
		  e.setEmail(rs.getString(7));
		  e.setPhone(rs.getString(8));
		  e.setVisiting_date(rs.getString(9));
		  e.setVisiting_time(rs.getString(10));
		  e.setReason(rs.getString(11));
		  
		  
		 
		  
		  
		  
		 
		  
          //Display values
         al.add(e);
		  
	  }
	return al;
	   
	
	}

	public List<house_info> prod_search(String name)throws SQLException 
	{
		List<house_info> al=new ArrayList<house_info>();
		house_info e =null;
		String sname=null;
		String sql=" select * from house_info where property_name=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, name);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			e = new house_info();
			e.setId(rs.getInt("id"));
			 e.setProperty_Id(rs.getString("property_id"));
			  
			  
			 e.setProperty_name(rs.getString("property_name"));
			  
			  java.sql.Blob blob=rs.getBlob("img1");
				 if(blob!=null)
				 {
					 byte[] img=blob.getBytes(1,(int)blob.length());
					 e.setImg1(img);
				 }
			  
			  e.setLocation(rs.getString("location"));
			  e.setAmenities(rs.getString("Amenities"));
			  e.setProperty_type(rs.getString("property_type"));
			  
			  
			  e.setStatus(rs.getString("furnishing_status"));
			  e.setRent(rs.getString("rent"));
			  e.setPhone(rs.getString("phone"));
			
			
			
			
			
			
			
			if(name.equals(e.getProperty_name()))
			{
				sname=e.getProperty_name();
				break;
			}
			
			al.add(e);
		}
		
		return al;
	}

	public boolean admin_update(form_entity f)throws SQLException 
	{
		boolean b=false;
		String sql="update admin1 set name=?,phone=?,email=?,password=? where id=?";
		PreparedStatement p=conn.prepareStatement(sql);
//		ResultSet rs=p.executeQuery();
		p.setString(1, f.getName());  
		p.setString(2, f.getPhone());
		p.setString(3, f.getEmail());
		p.setString(4, f.getPassword());
		p.setInt(5, f.getId());
		
		int i=p.executeUpdate();
		if(i==1)
		{
			System.out.println("updated");
			b=true;
			
		}
		
		
		
			
		return b;
	}
}


	
