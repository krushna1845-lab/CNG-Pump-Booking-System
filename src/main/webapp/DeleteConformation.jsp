<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.java.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirmation</title>
</head>
<body>
 <% 
    // Get the id from the form
    String id = request.getParameter("id");
    
    try {
        Connection con = ConnectionDB.dbcon();
        
        // Prepare a delete statement using the id
        PreparedStatement p = con.prepareStatement("DELETE FROM cng_pump WHERE id = ?");
        p.setInt(1, Integer.parseInt(id));
        
        // Execute the delete statement
        int rowsDeleted = p.executeUpdate();
        
        // Check if deletion was successful
        if (rowsDeleted > 0) {
            out.println("<h1>Data deleted successfully.</h1>");
         %> <a href="Delete_CNG_Pumps.jsp">Back</a><% 
        } else {
            out.println("<h1>Failed to delete data.</h1>");
        }
        
        
    } catch (Exception e) {
        out.println(e);
    }
    %>
</body>
</html>
