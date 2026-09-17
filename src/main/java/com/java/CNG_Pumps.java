package com.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.java.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CNG_Pumps
 */
@WebServlet("/CNG_Pumps")
public class CNG_Pumps extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CNG_Pumps() {
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
			String pemail = request.getParameter("pemail");
			String ppass = request.getParameter("ppass");
			
			Connection con = ConnectionDB.dbcon();
			PreparedStatement p = con.prepareStatement("select * from cng_pump where pemail=? and ppass=?");
			p.setString(1, pemail);
			p.setString(2, ppass);
			ResultSet r = p.executeQuery();
			
			if(r.next())
			{
			    User.setPemail(r.getString("pemail"));
				response.sendRedirect("Pumpshome.html");
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
