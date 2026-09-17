<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fc;
            display: flex;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }
        .wrapper {
            display: flex;
            flex: 1;
            overflow: hidden;
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
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 2rem;
            overflow: auto;
        }
        .navbar {
            background: #fff;
            padding: 1rem;
            border-bottom: 1px solid #e3e6f0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .navbar .nav-link {
            color: #343a40;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }
        .navbar .nav-link:hover {
            background: #f0f0f0;
        }
        .content {
            margin-top: 20px;
        }
        .table {
            width: 100%;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        .table th,
        .table td {
            padding: 12px 15px;
            text-align: center;
            vertical-align: middle;
        }
        .table th {
            background-color: #f8f9fc;
            color: #495057;
            border-bottom: 2px solid #e9ecef;
        }
        .table td {
            background-color: #ffffff;
            border-bottom: 1px solid #e9ecef;
        }
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
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
        .footer {
            background: #f8f9fc;
            padding: 1rem 2rem;
            border-top: 1px solid #e3e6f0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .footer .text-muted {
            color: #6c757d;
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
                        <a class="sidebar-link" href="View_CNG_Pumps_ctd.jsp">
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
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyqEDp_ogPSU7wiVutAR54QRjfOovbpS8Wg&usqp=CAU" class="avatar img-fluid rounded me-1" alt="Krushna Manore" /> <span class="text-dark">Krushna Manore</span>
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
        if (con == null) {
            out.println("<tr><td colspan='11'>Error: Unable to establish a connection.</td></tr>");
        } else {
            PreparedStatement p = con.prepareStatement("SELECT * FROM cng_pump");
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
            <form action="DeleteConformation.jsp" method="post" style="margin: 0;">
                <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                <button type="submit" class="btn btn-danger btn-sm">Delete Now</button>
            </form>
        </td>
    </tr>
    <% 
            }
            rs.close();
            p.close();
           
        }
    } catch (SQLException e) {
        out.println("<tr><td colspan='11'>SQL Error: " + e.getMessage() + "</td></tr>");
    } catch (Exception e) {
        out.println("<tr><td colspan='11'>Error: " + e.getMessage() + "</td></tr>");
    }
    %>
</tbody>
                </table>
            </main>
           
        </div>
    </div>
    <script src="js/bootstrap.bundle.min.js"></script>
     <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
