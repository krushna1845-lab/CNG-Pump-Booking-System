<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.util.Date, java.util.UUID, java.text.SimpleDateFormat, com.java.*" %>
<!DOCTYPE html>
<html>
<head>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Booking Confirmation</title>
    <link href="css/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
<style>
     
        body {
            background-image: url('img/photos/unsplash-2.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            font-family: 'Inter', sans-serif;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .wrapper {
            width: 100%;
            min-height: 100vh;
            backdrop-filter: blur(10px);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .booking-details {
            background: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .booking-details h2 {
            margin-bottom: 1rem;
        }

        .booking-details p {
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        .booking-details .btn {
            background-color: #007bff;
            color: #fff;
            border-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 1rem;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .booking-details .btn:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
          .booking-form {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .booking-form h2 {
            margin-bottom: 20px;
            font-size: 1.5rem;
            color: #343a40;
        }
        .booking-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
            color: #495057;
        }
        .booking-form input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        .booking-form button[type="submit"] {
            display: inline-block;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
        }
        .booking-form button[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        </style>
        </head>
<body>
<% 
 try {
            	 
                // Retrieve form data
                   String pemail  = request.getParameter("pemail");

                // Save booking details to the database
                Connection con = ConnectionDB.dbcon();
                
                // Update statement to add to existing cngkg
                PreparedStatement p = con.prepareStatement("DELETE FROM `cng_pump` WHERE pemail = ?");
  
                p.setString(1, pemail);
                
                int i = p.executeUpdate();
                
                // Display confirmation message
                if (i > 0) {
            %>
    <p>Deleted Succesfully!</p>
            
            <p>Pump Email: <%= pemail %></p>
            <a href="ViewAll.jsp" class="btn">Back to View CNG Pumps</a>
            <% } else { %>
            <p>Failed to confirm booking. Please try again.</p>
            <a href="adminhome.jsp" class="btn">Try Again</a>
            <% }
            } catch (Exception e) {
                out.println(e);
            }%>
              <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>