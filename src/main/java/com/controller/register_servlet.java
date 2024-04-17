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


@WebServlet("/register_servlet")
public class register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register_servlet() {
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
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String re_password=request.getParameter("re_password");
		
		
		form_entity f=new form_entity();
		f.setName(name);
		f.setEmail(email);
		f.setPassword(password);
		f.setRe_passsword(re_password);
		
		
		form_model p=new form_model(form_conn.getconnection());
		boolean b=false;
		try {
			
			b=p.insert(f);
			if(b)
			{
				response.sendRedirect("f.jsp");
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
