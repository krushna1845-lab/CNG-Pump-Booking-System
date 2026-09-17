<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.java.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin & Dashboard Template based on Bootstrap 5">
    <meta name="author" content="AdminKit">
    <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="shortcut icon" href="img/icons/icon-48x48.png" />
    <link rel="canonical" href="https://demo-basic.adminkit.io/" />

    <title>CNG Booking</title>

    <link href="css/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

    <style>
        body {
            background-image: url('img/photos/unsplash-2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            font-family: 'Inter', sans-serif;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .wrapper {
            display: flex;
            width: 100%;
            min-height: 100vh;
            backdrop-filter: blur(10px);
        }

        .sidebar {
            width: 250px;
            background: rgba(52, 58, 64, 0.9);
            color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .sidebar .sidebar-brand {
            font-size: 1.5rem;
            padding: 1.5rem 1rem;
            display: block;
            background: rgba(108, 117, 125, 0.9);
            text-align: center;
            color: #fff;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .sidebar .sidebar-nav {
            padding: 1rem;
        }

        .sidebar .sidebar-item {
            margin-bottom: 1rem;
        }

        .sidebar .sidebar-link {
            color: #adb5bd;
            text-decoration: none;
            padding: 0.75rem;
            display: block;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }

        .sidebar .sidebar-link:hover,
        .sidebar .sidebar-item.active .sidebar-link {
            background: rgba(73, 80, 87, 0.9);
            color: #fff;
        }

        .main {
            flex-grow: 1;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 2rem;
            backdrop-filter: blur(10px);
            overflow-x: auto; /* Added for horizontal overflow */
        }

        .navbar {
            background: rgba(255, 255, 255, 0.9);
            padding: 1rem;
            border-bottom: 1px solid #e3e6f0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .navbar .navbar-nav .nav-item .nav-link {
            color: #343a40;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }

        .navbar .navbar-nav .nav-item .nav-link:hover {
            background: rgba(233, 236, 239, 0.9);
        }

        .card {
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            margin-bottom: 2rem;
            backdrop-filter: blur(5px);
        }

        .footer {
            background: rgba(248, 249, 252, 0.9);
            padding: 1rem 2rem;
            border-top: 1px solid #e3e6f0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .footer .text-muted {
            color: #6c757d;
        }

        .text-dark {
            color: #343a40 !important;
        }

        h1.h3 {
            font-size: 1.75rem;
            margin-bottom: 1rem;
        }

        h2.h4 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .avatar {
            border-radius: 50%;
            width: 40px;
            height: 40px;
        }

        .dropdown-menu {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-container {
            max-width: 400px;
            width: 100%;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            backdrop-filter: blur(5px);
            text-align: center;
        }

        .login-container h3 {
            font-size: 1.75rem;
            margin-bottom: 1.5rem;
        }

        .login-container label {
            display: block;
            margin-bottom: 0.5rem;
            text-align: left;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(5px);
        }

        .login-container button {
            width: 100%;
            padding: 0.75rem;
            border: none;
            border-radius: 5px;
            background: linear-gradient(90deg, #007bff, #0056b3);
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
        }

        .login-container button:hover {
            background: linear-gradient(90deg, #0056b3, #004080);
            transform: scale(1.05);
        }

        .social {
            display: flex;
            justify-content: space-between;
            margin-top: 1.5rem;
        }

        .social .go,
        .social .fb {
            width: 48%;
            padding: 0.75rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .social .go {
            background: #db4437;
            color: #fff;
        }

        .social .go:hover {
            background: #c33d2e;
            transform: scale(1.05);
        }

        .social .fb {
            background: #4267B2;
            color: #fff;
        }

        .social .fb:hover {
            background: #365899;
            transform: scale(1.05);
        }

        .social a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .social a:hover {
            color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2rem;
        }

        th, td {
            padding: 1rem;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: rgba(233, 236, 239, 0.9);
        }

        .btn {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
        }

        .btn-approve {
            background: #28a745;
            color: #fff;
        }

        .btn-approve:hover {
            background: #218838;
            transform: scale(1.05);
        }

        table.stylish-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            overflow: hidden;
        }

        table.stylish-table thead th {
            background: rgba(52, 58, 64, 0.8);
            color: #fff;
            padding: 1rem;
            text-align: left;
            border-bottom: 2px solid #dee2e6;
        }

        table.stylish-table tbody tr {
            transition: background 0.3s, transform 0.3s;
        }

        table.stylish-table tbody tr:hover {
            background: rgba(52, 58, 64, 0.1);
            transform: scale(1.01);
        }

        table.stylish-table tbody td {
            padding: 1rem;
            border-bottom: 1px solid #dee2e6;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }

            .sidebar .sidebar-nav {
                display: flex;
                justify-content: space-between;
                padding: 1rem;
            }

            .main {
                margin: 1rem;
                padding: 1rem;
            }

            .footer {
                margin: 1rem;
                padding: 1rem;
            }
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <nav id="sidebar" class="sidebar js-sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="index.html">
                    <span class="align-middle">CNG Booking</span>
                </a>

                <ul class="sidebar-nav">
                    <li class="sidebar-header">ADMIN</li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="ViewAll.jsp">
                            <i class="align-middle" data-feather="home"></i> <span class="align-middle">Approve CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="View.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="Delete_CNG_Pumps.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Delete CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="index.html">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Log Out</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="main">
            <h1 class="h3">Approve CNG Pumps</h1>
            <div class="card">
                <table class="stylish-table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Taluka</th>
                            <th>District</th>
                            <th>Open Time</th>
                            <th>Close Time</th>
                            <th>Mobile</th>
                        
                            <th>CNG KG</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            try {
                                Connection con = ConnectionDB.dbcon();
                                PreparedStatement ps = con.prepareStatement("SELECT * FROM cng_pump");
                                ResultSet r = ps.executeQuery();
                                while (r.next()) {
                        %>
                        <tr>
                            <td><%= r.getString("pname") %></td>
                            <td><%= r.getString("paddress") %></td>
                            <td><%= r.getString("pcity") %></td>
                            <td><%= r.getString("ptaluka") %></td>
                            <td><%= r.getString("pdistrict") %></td>
                            <td><%= r.getString("opentime") %></td>
                            <td><%= r.getString("closetime") %></td>
                            <td><%= r.getString("pmob") %></td>
                           
                            <td><%= r.getString("cngkg") %></td>
                            <td><%= r.getString("pemail") %></td>
                            <td>
                                <button class="btn btn-approve" onclick="approveBooking('<%= r.getString("pname") %>')">Approve</button>
                            </td>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                out.println(e);
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <footer class="footer">
                <div class="text-muted">© Krushna Manore. All rights reserved.</div>
            </footer>
        </div>
    </div>

    <script>
        function approveBooking(bookingRef) {
            // Add logic to approve the booking here
            alert('Booking with reference ' + bookingRef + ' has been approved.');
        }
    </script>
</body>

</html>
