<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.UUID, java.text.SimpleDateFormat, com.java.*" %>
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

        .confirmation-details {
            margin-top: 20px;
            padding: 20px;
            background-color: #f0f0f0;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
    <div class="wrapper">
        <div class="booking-details">
            <h2>Booking Confirmation</h2>
            <div class="booking-form">
                <h2>Book CNG</h2>
                <form action="BookingConfirmation.jsp" method="post">
                   
                    <label for="cngkg">CNG Amount (kg):</label>
                    <input type="number" id="cngkg" name="cngkg" min="1" required>
                    <label for="booking_ref">Booking Reference:</label>
                    <input type="text" id="booking_ref" name="booking_ref" required>
                    <label for="booking_time">Booking Time:</label>
                    <input type="time" id="booking_time" name="booking_time" required>
                    <label for="booking_date">Booking Date:</label>
                    <input type="date" id="booking_date" name="booking_date" required>
                    <label for="pemail">Pump Email:</label>
                    <input type="email" id="pemail" name="pemail" required>
                    <button type="submit">Confirm Booking</button>
                </form>
            </div>

            <%
                if (request.getMethod().equalsIgnoreCase("post")) {
                    try {
                        // Retrieve form data
                       
                        String cngkg = request.getParameter("cngkg");
                        String bookingRef = request.getParameter("booking_ref");
                        String bookingDate = request.getParameter("booking_date");
                        String bookingTime = request.getParameter("booking_time");
                        String pemail = request.getParameter("pemail");
                        String uname = User.getUUemail();

                        // Save booking details to the database
                        Connection con = ConnectionDB.dbcon();
                        PreparedStatement ps = con.prepareStatement("INSERT INTO booking ( cngkg, uname, booking_ref, booking_date, booking_time, pemail) VALUES ( ?, ?, ?, ?, ?, ?)");
                       
                        ps.setString(1, cngkg);
                        ps.setString(2, uname);
                        ps.setString(3, bookingRef);
                        ps.setString(4, bookingDate);
                        ps.setString(5, bookingTime);
                        ps.setString(6, pemail);

                        int i = ps.executeUpdate();

                        if (i > 0) {
            %>
            <div class="confirmation-details">
                <p>Your booking has been confirmed!</p>
                <p>Booking Reference: <%= bookingRef %></p>
                
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
                        e.getStackTrace();
                    }
                }
            %>
        </div>
    </div>
</body>

</html>
