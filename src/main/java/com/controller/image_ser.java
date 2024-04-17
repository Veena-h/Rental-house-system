package com.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.connection1;
import com.entity.image;
import com.model.promodel;

/**
 * Servlet implementation class image_ser
 */

@WebServlet("/image_ser")
@MultipartConfig(maxFileSize = 999939220)

public class image_ser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public image_ser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		InputStream in=null;
		String s=null;
		
		Part filePart1 = request.getPart("file");
		String img1 = filePart1.getSubmittedFileName();
		
		System.out.println("image in servlet");
		System.out.println(img1);
		System.out.println(filePart1);

		 if(filePart1!=null) 
		  { System.out.println(filePart1.getName());
		  System.out.println(filePart1.getSize());
		  System.out.println(filePart1.getContentType()); 
		  in=filePart1.getInputStream();
		  }
		

		
		 
		
		 
		 
		 
		 
		  try {
		  
		 
		  promodel p=new promodel(connection1.getconnection()); 
		  int row=p.insert(in);
		  
		  if(row>0) { 
			  response.sendRedirect("show_img.jsp");
			  }
		  
		
		  
		  } catch (Exception e) { // TODO: handle exception e.printStackTrace(); }
		  
		  
				
				if(in!=null) {
					in.close();
					} 
				filePart1.delete();
				 
		 
	}
	}

}
