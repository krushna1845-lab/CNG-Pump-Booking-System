package com.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Users
 */
@WebServlet("/Users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Users() {
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
try 
		
		{
			String uemail = request.getParameter("uemail");
			String upass = request.getParameter("upass");
			
			Connection con = ConnectionDB.dbcon();
			PreparedStatement p = con.prepareStatement("select * from user where uemail=? and upass=?");
			p.setString(1, uemail);
			p.setString(2, upass);
			ResultSet r = p.executeQuery();
			
			if(r.next())
			{
			    User.setUUemail(r.getString("uemail"));
				response.sendRedirect("Userhome.html");
			}
		else
		{
			response.sendRedirect("index.html");
		}
		
	}
  catch(Exception e)
		{
	     e.printStackTrace();
		}
}
}
