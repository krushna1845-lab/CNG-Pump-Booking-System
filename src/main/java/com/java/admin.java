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
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin() {
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
			String aemail = request.getParameter("aemail");
			String apass = request.getParameter("apass");
			
			Connection con = ConnectionDB.dbcon();
			PreparedStatement p = con.prepareStatement("select * from admin where aemail=? and apass=?");
			p.setString(1, aemail);
			p.setString(2, apass);
			ResultSet r = p.executeQuery();
			
			if(r.next())
			{
			    User.setUemail(r.getString("aemail"));
				response.sendRedirect("adminhome.html");
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
