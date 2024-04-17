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

import com.connection.form_conn;
import com.entity.house_info;
import com.model.form_model;

/**
 * Servlet implementation class house_info_form
 */
@WebServlet("/house_info_form")
@MultipartConfig(maxFileSize = 999999999)
public class house_info_form extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public house_info_form() {
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
		String property_Id = request.getParameter("property_id");
		String property_name = request.getParameter("property-name");

		/* image */
		InputStream in = null;
		String s = null;

		/* String img1=request.getParameter("img1"); */
		Part filePart1 = request.getPart("img1");
		String img1 = filePart1.getSubmittedFileName();
		System.out.println(filePart1);

		if (filePart1 != null) {
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());
			in = filePart1.getInputStream();
		}

		/*
		 * String img2=request.getParameter("img2"); Part filePart2 =
		 * request.getPart("img2"); String img2 = filePart1.getSubmittedFileName();
		 * System.out.println(filePart2);
		 * 
		 * if(filePart2!=null) { System.out.println(filePart2.getName());
		 * System.out.println(filePart2.getSize());
		 * System.out.println(filePart2.getContentType());
		 * in=filePart2.getInputStream(); }
		 * 
		 * 
		 * String img3=request.getParameter("img3"); Part filePart3 =
		 * request.getPart("img3"); String img3 = filePart1.getSubmittedFileName();
		 * System.out.println(filePart3);
		 * 
		 * if(filePart3!=null) { System.out.println(filePart3.getName());
		 * System.out.println(filePart3.getSize());
		 * System.out.println(filePart3.getContentType());
		 * in=filePart3.getInputStream(); }
		 */

		String location = request.getParameter("location");

		/* facilites-checkbox */
		String[] amentities = request.getParameterValues("facility");
		String chose_facilites = "";
		for (int i = 0; i < amentities.length; i++) {
			chose_facilites += amentities[i] + " ";
		}

		String property_type = request.getParameter("Property-Type");

		String area = request.getParameter("Area");

		/* checkbox */
		String[] Furnishing_status = request.getParameterValues("status");
		String chose_status = "";
		for (int i = 0; i < Furnishing_status.length; i++) {
			chose_status += Furnishing_status[i] + " ";
		}

		String property_rent = request.getParameter("rent");

		String phone = request.getParameter("phone");

		String agent_name = request.getParameter("agent_name");

		String agent_email = request.getParameter("agent_email");

		String agent_phone = request.getParameter("agent_phone");

		/* setter */
		house_info h = new house_info();
		h.setProperty_Id(property_Id);
		h.setProperty_name(property_name);
		h.setLocation(location);

		/* checkbox */
		h.setAmenities(chose_facilites);

		h.setProperty_type(property_type);
		h.setArea(area);

		/* checkbox */
		h.setStatus(chose_status);

		h.setRent(property_rent);
		h.setPhone(phone);
		h.setAgent_name(agent_name);
		h.setAgent_email(agent_email);
		h.setAgent_phone(agent_phone);

		try {

			form_model p = new form_model(form_conn.getconnection());
			int row = p.house_info1(in, h);

			if (row > 0) {
				response.sendRedirect("form-validation.jsp");
			}

		} catch (Exception e) { // TODO: handle exception e.printStackTrace(); }

			if (in != null) {
				in.close();
			}
			filePart1.delete();

		}

	}

}
