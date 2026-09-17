<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.java.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
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
            border: 1px solid #ddd;
            text-align: left;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(5px);
        }

        th {
            background: rgba(108, 117, 125, 0.9);
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background: rgba(233, 236, 239, 0.9);
        }

        tbody tr:nth-child(odd) {
            background: rgba(248, 249, 250, 0.9);
        }

        tbody tr:hover {
            background: rgba(73, 80, 87, 0.9);
            color: #fff;
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
        .container{
            width: 100%;
            height: 100vh;
            background: #e0f7fa;
            display: flex;
            align-items: center;
            justify-content: center;   
        }
        
        
        .popup{
            width: 400px;
            background: #e0f7fa;
            border-width: 100px;
            border-spacing: 5px;
            border-radius: 16px;
            position: absolute;
            top: 0%; 
            left: 50%; 
            transform: translate(-50%, -50%) scale(0.1);
            text-align: center;
            padding: 0 30px 30px;
            color: #333;
            visibility: hidden;
            transition: transform 0.4s, bottom 0.4s;
        }
        
        .open-popup{
            visibility: visible;
            top: 50%;
            transform: translate(-50%,-50%) scale(1);
        }
        
        .popup img{
            width: 100px;
            margin-top: -50px;
            border-radius: 50%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }
        
        .popup h2{
            font-size: 38px;
            font-weight: 500;
            margin: 30px 0 10px;
        }
        
        .popup button{
            width: 100%;
            margin-top: 50px;
            padding: 10px 0;
            background: #009688;
            color: #ffffff;
            border: 0;
            border-radius: 4px;
            outline: none;
            font-size: 25px;
            cursor: pointer;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
        
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
                    <li class="sidebar-header">PUMPS</li>
                    
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="View_CNG_Pumps_ctd.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="CNG_Pumps_Update.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Update CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="CNG_Pumps_ViewBooking.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View Booking</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="CNG_Pumps_Login.html">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Login OUT</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="main">
            <nav class="navbar navbar-expand navbar-light navbar-bg">
                <a class="sidebar-toggle js-sidebar-toggle">
                    <i class="hamburger align-self-center"></i>
                </a>

                <div class="navbar-collapse collapse">
                    <ul class="navbar-nav navbar-align">
                        <li class="nav-item dropdown">
                            <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                <i class="align-middle" data-feather="settings"></i>
                            </a>
                            <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyqEDp_ogPSU7wiVutAR54QRjfOovbpS8Wg&usqp=CAU" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark">Krushna Manore</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
                                <a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="index.html">Log out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="content">
                <table>
                    <thead>
                        <tr>
                           
                            <th>CNG KG</th>
                            <th>User email</th>
                            <th>Booking reference</th>
                            <th>Booking Time</th>
                            <th>Booking Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String pemail = User.getPemail();
                            try {
                                Connection con = ConnectionDB.dbcon();
                                PreparedStatement ps = con.prepareStatement("SELECT * FROM booking WHERE pemail = ?");
                                ps.setString(1, pemail);
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {
                        %>
                        <tr>
                           
                            <td><%= rs.getString("cngkg") %></td>
                            <td><%= rs.getString("uname") %></td>
                            <td><%= rs.getString("booking_ref") %></td>
                            <td><%= rs.getString("booking_time") %></td>
                            <td><%= rs.getString("booking_date") %></td>
                            <form action="CNG_Pumps_ViewBooking.jsp" method="post" onsubmit="openPopup(event)">
                            <td><button class="btn btn-approve" onclick="approveBooking('<%= rs.getString("booking_ref") %>')">Approve</button></td>
                            </form>
                        </tr>
                       
		   
		    
		<%  }
                            }         
                             catch (Exception e) {        
                            	
                                out.println(e);
                            }
      %>
                            
                    </tbody>
                </table>
            </main>

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-start">
                            <p class="mb-0">
                                <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>CNG Booking</strong></a> &copy;
                            </p>
                        </div>
                        <div class="col-6 text-end">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
     <div class="popup" id="popup">
		        <img src="icon-803718_1920.png" alt="Popup Image">
		        <h2>Task completed!</h2>
		        <p>details are been approved successfully . Thanks!</p>
		        <button class="btn btn-outline-primart" onclick="closePopup()">OK</button>
		    </div>

      <script>
		    let popup = document.getElementById("popup");
		
		    function openPopup(event, booking_ref ){
		        event.preventDefault();
		        popup.classList.add("open-popup");
		    }
		
		    function closePopup() {
		        document.getElementById("popup").classList.remove("open-popup");
		        window.location.href = "Delete.jsp?booking_ref=" + booking_ref;
		        
		    }
		       </script>
		    <!-- Scripts -->
		    <script src="js/app.js"></script>
		    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		
</body>

</html>
