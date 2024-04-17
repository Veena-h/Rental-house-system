package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.form_conn;
import com.entity.book_form_entity;
import com.model.form_model;

/**
 * Servlet implementation class book_form_servlet
 */
@WebServlet("/book_form_servlet")
public class book_form_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public book_form_servlet() {
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
	     String id=request.getParameter("id");
	     String agent_name=request.getParameter("agent-name");
	     String name=request.getParameter("name");
	     String address=request.getParameter("address");
	     String gender=request.getParameter("gender");
	     String email=request.getParameter("email");
	     String phone=request.getParameter("phone");
	     String visiting_date=request.getParameter("date");
	     String visiting_time=request.getParameter("time");
	     String reason=request.getParameter("reason");

	     
	     book_form_entity b=new book_form_entity();
	     b.setId(id);
	     b.setAgent_name(agent_name);
	     b.setName(name);
	     b.setAddress(address);
	     b.setGender(gender);
	     b.setEmail(email);
	     b.setPhone(phone);
	     b.setVisiting_date(visiting_date);
	     b.setVisiting_time(visiting_time);
	     b.setReason(reason);
	     
	     form_model p=new form_model(form_conn.getconnection());
			boolean b1=false;
			try {
				
				b1=p.book_insert(b);
				if(b1)
				{
					response.sendRedirect("thank_u.jsp");
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