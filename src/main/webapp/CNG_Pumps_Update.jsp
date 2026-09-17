<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.Date, java.util.UUID, java.text.SimpleDateFormat, com.java.*" %>
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
            margin-top: 2rem; /* Adjusted margin for better separation */
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

    .booking-form {
        background: rgba(255, 255, 255, 0.95);
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        margin-top: 2rem;
        backdrop-filter: blur(5px);
    }

    .booking-form h2 {
        font-size: 1.5rem;
        margin-bottom: 1rem;
    }

    .booking-form form {
        max-width: 400px;
        width: 100%;
        margin: 0 auto;
    }

    .booking-form label {
        display: block;
        margin-bottom: 0.5rem;
        text-align: left;
    }

    .booking-form input[type="number"] {
        width: 100%;
        padding: 0.75rem;
        margin-bottom: 1rem;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: rgba(255, 255, 255, 0.8);
        backdrop-filter: blur(5px);
    }

    .booking-form button {
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

    .booking-form button:hover {
        background: linear-gradient(90deg, #0056b3, #004080);
        transform: scale(1.05);
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
                <table class="table table-striped">
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
                            PreparedStatement p = con.prepareStatement("SELECT * from cng_pump where pemail=?");
                            p.setString(1, User.getPemail());
                            ResultSet rs = p.executeQuery();

                            while (rs.next()) {
                        %>
                        <tr>
                            <td><%= rs.getString("pname") %></td>
                            <td><%= rs.getString("paddress") %></td>
                            <td><%= rs.getString("pcity") %></td>
                            <td><%= rs.getString("ptaluka") %></td>
                            <td><%= rs.getString("pdistrict") %></td>
                            <td><%= rs.getString("opentime") %></td>
                            <td><%= rs.getString("closetime") %></td>
                            <td><%= rs.getString("pmob") %></td>
                           
                            <td><%= rs.getString("cngkg") %></td>
                            <td><%= rs.getString("pemail") %></td>
                            <td>
                                <!-- Book Now Button -->
                                <form action="UpdateConfirmation.jsp" method="post">
                                    <input type="hidden" name="pemail" value="<%= User.getPemail() %>">
                                    <input type="hidden" name="cngkg" value="<%= rs.getString("cngkg") %>">
                                    <button type="submit" class="btn btn-primary">Update Now</button>
                                </form>
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
                <div class="booking-form">
                    <h2>Update CNG</h2>
                    <form action="UpdateConfirmation.jsp" method="post">
                       
                        <br>
                        <label for="cngkg">CNG KG:</label><br>
                        <input type="number" id="cngkg" name="cngkg">
                        <br>
                       
                        <button type="submit">Confirm </button>
                    </form>
                </div>
            </main>
      
          

           <!-- Footer -->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-start">
                            <p class="mb-0">
                                <a class="text-muted" href="#" target="_blank"><strong>CNG Booking System</strong></a> &copy;
                            </p>
                        </div>
                        <div class="col-6 text-end">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <a class="text-muted" href="#" target="_blank">Support</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="#" target="_blank">Help Center</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="#" target="_blank">Privacy</a>
                                </li>
                                <li class="list-inline-item">
                                    <a class="text-muted" href="#" target="_blank">Terms</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
 
    <!-- Bootstrap JS and dependencies -->
    <!-- Scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
    
  
