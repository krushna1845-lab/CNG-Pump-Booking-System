package com.java;
import java.sql.*;
public class ConnectionDB {

	static Connection conn = null;
	public static Connection dbcon()
	{
		if (conn==null)
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cng_booking","root","");
			}
			catch(Exception e)
			{
				e.printStackTrace();			
		}
	}
	return conn;
}
}