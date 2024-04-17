package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.form_conn;
import com.entity.house_info;
import com.model.form_model;
import java.util.*;

/**
 * Servlet implementation class psearch_servlet
 */
@WebServlet("/psearch_servlet")
public class psearch_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public psearch_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name=request.getParameter("name3");
		try
		{
		form_model p=new form_model(form_conn.getconnection());
		List<house_info> al=p.prod_search(name);
		boolean b=al.isEmpty();
		
		if(b!=true)
		{
			response.sendRedirect("error.jsp");
			
		}else
		{
			response.sendRedirect("psearch.jsp?name3=" +name);
		}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
