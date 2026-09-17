<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.java.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CNG Booking</title>
    <link href="css/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Global Styles */
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
            display: flex;
            width: 100%;
            min-height: 100vh;
            backdrop-filter: blur(10px);
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background: rgba(52, 58, 64, 0.9);
            color: #fff;
        }

        .sidebar .sidebar-brand {
            font-size: 1.5rem;
            padding: 1.5rem 1rem;
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
        .sidebar-item.active .sidebar-link {
            background: rgba(73, 80, 87, 0.9);
            color: #fff;
        }

        /* Main Content Styles */
        .main {
            flex-grow: 1;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 2rem;
            backdrop-filter: blur(10px);
        }

        /* Navbar Styles */
        .navbar {
            background: rgba(255, 255, 255, 0.9);
            padding: 1rem;
            border-bottom: 1px solid #e3e6f0;
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

        /* Table and Form Styles */
        table {
            width: 100%;
            margin-top: 1rem;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 10px; /* Increased padding for better readability */
        }

        th {
            background-color: #f8f9fa;
            text-align: left; /* Align text left in table headers */
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .search-form {
            margin-bottom: 1rem;
            display: flex;
            align-items: center;
        }

        .search-form input[type="text"],
        .search-form button {
            padding: 10px; /* Increased padding for better usability */
            margin-right: 10px; /* Adjusted margin for spacing */
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px; /* Adjusted font size */
        }

        .search-form button {
            background-color: #007bff; /* Blue background for button */
            color: #fff; /* White text color */
            border-color: #007bff; /* Matching border color */
            cursor: pointer; /* Pointer cursor on hover */
        }

        .search-form button:hover {
            background-color: #0056b3; /* Darker blue on hover */
            border-color: #0056b3; /* Darker border on hover */
        }

        /* Footer Styles */
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
    </style>
</head>

<body>
    <div class="wrapper">
        <!-- Sidebar -->
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
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="View.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">View CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="Delete_CNG_Pumps.jsp">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Delete CNG Pumps</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="index.html">
                            <i class="align-middle" data-feather="log-in"></i> <span class="align-middle">Login OUT</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="main">
            <!-- Navbar -->
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
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUyqEDp_ogPSU7wiVutAR54QRjfOovbpS8Wg&usqp=CAU" class="avatar img-fluid rounded me-1" alt="User" /> <span class="text-dark">Krushna Manore</span>
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

            <!-- Content Area -->
            <main class="content">
                <h1 class="h3 mb-3">CNG Pumps</h1>

                <!-- Search Form -->
                <form class="search-form" method="get">
                    <input type="text" name="city" placeholder="Search by city" value="<%= request.getParameter("city") != null ? request.getParameter("city") : "" %>">
                    <input type="text" name="taluka" placeholder="Search by taluka" value="<%= request.getParameter("taluka") != null ? request.getParameter("taluka") : "" %>">
                    <button type="submit">Search</button>
                </form>

                <!-- Table -->
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Taluka</th>
                        <th>District</th>
                        <th>Open Time</th>
                        <th>Close Time</th>
                        <th>Mobile</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>CNG KG</th>
                        <th>Email</th>
                    </tr>
                    <%
                        try {
                            Connection con = ConnectionDB.dbcon();
                            String city = request.getParameter("city");
                            String taluka = request.getParameter("taluka");
                            String district = request.getParameter("district");
                            String query = "SELECT * FROM cng_pump";
                            if (city != null && !city.isEmpty()) {
                                query += " WHERE pcity = ?";
                            }
                            if (taluka != null && !taluka.isEmpty()) {
                                if (city == null || city.isEmpty()) {
                                    query += " WHERE ptaluka = ?";
                                } else {
                                    query += " AND ptaluka = ?";
                                }
                            }

                            PreparedStatement p = con.prepareStatement(query);

                            int parameterIndex = 1;
                            if (city != null && !city.isEmpty()) {
                                p.setString(parameterIndex++, city);
                            }
                            if (taluka != null && !taluka.isEmpty()) {
                                p.setString(parameterIndex++, taluka);
                            }
                           
                            ResultSet r = p.executeQuery();

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
                        <td><%= r.getString("lat") %></td>
                        <td><%= r.getString("longg") %></td>
                        <td><%= r.getString("cngkg") %></td>
                        <td><%= r.getString("pemail") %></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                </table>
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

    <!-- Scripts -->
    <script src="js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
