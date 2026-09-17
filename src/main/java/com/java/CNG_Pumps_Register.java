package com.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CNG_Pumps_Register
 */
@WebServlet("/CNG_Pumps_Register")
public class CNG_Pumps_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CNG_Pumps_Register() {
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
		// TODO Auto-generated method stub
		doGet(request, response);

		String pname = request.getParameter("pname");
		String paddress = request.getParameter("paddress");
		String pcity = request.getParameter("pcity");
		String ptaluka = request.getParameter("ptaluka");
		String pdistrict = request.getParameter("pdistrict");
		int opentime = Integer.parseInt(request.getParameter("opentime"));
		int closetime = Integer.parseInt(request.getParameter("closetime"));
		String pmob = request.getParameter("pmob");
		String lat = request.getParameter("lat");
		String longg =request.getParameter("long");
		int ppass = Integer.parseInt(request.getParameter("ppass"));
		int cngkg = Integer.parseInt(request.getParameter("cngkg"));
		String pemail = request.getParameter("pemail");
		int id = Integer.parseInt(request.getParameter("id"));
		  try {
			  Connection con = ConnectionDB.dbcon();
				PreparedStatement p = con.prepareStatement("insert into cng_pump values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				p.setString(1,pname);
				p.setString(2,paddress);
				p.setString(3,pcity);
				p.setString(4,ptaluka);
				p.setString(5,pdistrict);
				p.setInt(6,opentime);
				p.setInt(7,closetime);
				p.setString(8,pmob);
				p.setString(9,lat);
				p.setString(10,longg);
				p.setInt(11,ppass);
				p.setInt(12,cngkg);
				p.setString(13,pemail);
				p.setInt(14,id);
			    int j=p.executeUpdate();
			                 			
			                     		if(j>0)
			                 	    		{
			                 		    	     response.sendRedirect("CNG_Pumps_Login.html");
			                 			
			                 			    }
			                 			else
			                 			{
			                 				 response.sendRedirect("Fail.html");
			                 			}
			                 	}
			                 	
			                 
			  catch (Exception e) {
					
					e.printStackTrace();
				}
			
				
		  }
}