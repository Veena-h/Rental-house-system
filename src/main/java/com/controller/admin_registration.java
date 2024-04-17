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
 * Servlet implementation class admin_registration
 */
@WebServlet("/admin_registration")
public class admin_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_registration() {
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
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		form_entity f=new form_entity();
		f.setName(name);
		f.setPhone(phone);
		f.setEmail(email);
		f.setPassword(password);
		
		
		
		form_model p=new form_model(form_conn.getconnection());
		boolean b=false;
		try {
			
			b=p.admin_insert(f);
			if(b)
			{
				response.sendRedirect("page-login.jsp");
			}else
			{
				response.sendRedirect("error.jsp");
			}
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
	}

}
