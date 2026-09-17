<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Date, java.util.UUID, java.text.SimpleDateFormat, com.java.*" %>
<!DOCTYPE html>
<html lang="en">

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
            padding: 20px;
            box-sizing: border-box;
        }

        .booking-details {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }

        .booking-details h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .booking-form label {
            display: block;
            margin-top: 10px;
            font-weight: 600;
        }

        .booking-form input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .booking-form button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .booking-form button:hover {
            background-color: #0056b3;
            transform: scale(1.02);
        }

        .confirmation-details p {
            margin: 10px 0;
            font-size: 16px;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 0;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.02);
        }
    </style>
</head>

<body>
      <%
                if (request.getMethod().equalsIgnoreCase("post")) {
                    try {
                        // Retrieve form data
                        String pname = request.getParameter("pname");
                        String cngkg = request.getParameter("cngkg");
                        String bookingRef = UUID.randomUUID().toString();
                        String bookingDate = request.getParameter("booking_date");
                        String bookingTime = request.getParameter("booking_time");
                        String pemail = request.getParameter("pemail");
                        String uname = User.getUUemail();

                        // Save booking details to the database
                        Connection con = ConnectionDB.dbcon();
                        PreparedStatement ps = con.prepareStatement("INSERT INTO booking (pname, cngkg, uname, booking_ref, booking_date, booking_time, pemail) VALUES (?, ?, ?, ?, ?, ?, ?)");
                        ps.setString(1, pname);
                        ps.setString(2, cngkg);
                        ps.setString(3, uname);
                        ps.setString(4, bookingRef);
                        ps.setString(5, bookingDate);
                        ps.setString(6, bookingTime);
                        ps.setString(7, pemail);

                        int i = ps.executeUpdate();

                        if (i > 0) {
            %>
          
            <div class="confirmation-details">
                <p>Your booking has been confirmed!</p>
                <p>Booking Reference: <%= bookingRef %></p>
                <p>CNG Pump Name: <%= pname %></p>
                <p>CNG Amount (kg): <%= cngkg %></p>
                <p>User Email: <%= uname %></p>
                <p>Booking Date: <%= bookingDate %></p>
                <p>Booking Time: <%= bookingTime %></p>
                <p>Pump Email: <%= pemail %></p>
                <a href="v.jsp" class="btn">Back to View CNG Pumps</a>
                <a href="DownloadPDF?bookingRef=<%= bookingRef %>" class="btn">Download Booking Details as PDF</a>
            </div>
          <%
                        } else {
            %>
            <div class="confirmation-details">
                <p>Failed to confirm booking. Please try again.</p>
                <a href="User_Book.jsp" class="btn">Try Again</a>
            </div>
            <%
                        }
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                }
            %>
           
        </div>
    </div>
</body>

</html>
