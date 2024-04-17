package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.form_conn;
import com.entity.form_entity;
import com.model.form_model;

/**
 * Servlet implementation class admindetail_update
 */
@WebServlet("/admindetail_update")
public class admindetail_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admindetail_update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String password =request.getParameter("password");
		
		System.out.println("servlet");
		form_entity f=new form_entity();
		f.setId(id);
		f.setName(name);
		f.setPhone(phone);
		f.setEmail(email);
		f.setPassword(password);
		
		
		form_model f1=new form_model(form_conn.getconnection());
		boolean b;
		try {
			
			b=f1.update(f);
			if(b)
			{
				response.sendRedirect("app-profile.jsp");
			}else {
				
				response.sendRedirect("error.jsp");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
