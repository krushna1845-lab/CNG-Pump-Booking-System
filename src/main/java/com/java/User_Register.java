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
 * Servlet implementation class User_Register
 */
@WebServlet("/User_Register")
public class User_Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User_Register() {
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
	
		String uname = request.getParameter("uname");
		String uemail = request.getParameter("uemail");
		String umob = request.getParameter("umob");
		int upass = Integer.parseInt(request.getParameter("upass"));
		String ucity = request.getParameter("ucity");
		  try {
			  Connection con = ConnectionDB.dbcon();
				PreparedStatement p = con.prepareStatement("insert into user values(?,?,?,?,?)");
				p.setString(1,uname);
				p.setString(2, uemail);
				p.setString(3, umob);
				p.setInt(4, upass);
				p.setString(5, ucity);
			   
			    int j=p.executeUpdate();
			                 			
			                     		if(j>0)
			                 	    		{
			                 		    	     response.sendRedirect("User_Login.html");
			                 			
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