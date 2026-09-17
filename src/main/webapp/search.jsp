<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.java.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <link href="css/app.css" rel="stylesheet">
</head>

<body>
    <div class="wrapper">
        <nav id="sidebar" class="sidebar js-sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="index.jsp">
                    <span class="align-middle">CNG Booking</span>
                </a>
                <ul class="sidebar-nav">
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="index.jsp">
                            <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                        </a>
                    </li>
                    <li class="sidebar-item active">
                        <a class="sidebar-link" href="search.jsp">
                            <i class="align-middle" data-feather="search"></i> <span class="align-middle">Search</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="mybookings.jsp">
                            <i class="align-middle" data-feather="calendar"></i> <span class="align-middle">My Bookings</span>
                        </a>
                    </li>
                    <li class="sidebar-item">
                        <a class="sidebar-link" href="logout.jsp">
                            <i class="align-middle" data-feather="log-out"></i> <span class="align-middle">Logout</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="main">
            <nav class="navbar navbar-expand navbar-light bg-white">
                <div class="navbar-collapse collapse">
                    <ul class="navbar-nav navbar-align">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded-circle me-1" alt="Charles Hall"> <span class="text-dark">Charles Hall</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="profile.jsp"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
                                <a class="dropdown-item" href="logout.jsp">Log out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="content">
                <div class="container-fluid p-0">
                    <h1 class="h3 mb-3">Search Results</h1>

                    <div class="card">
                        <div class="card-body">
                            <% 
                                String from = request.getParameter("from");
                                String to = request.getParameter("to");
                                String date = request.getParameter("date");

                                Connection con = null;
                                PreparedStatement pst = null;
                                ResultSet rs = null;
                                
                                try {
                                    con = Database.getConnection();
                                    String query = "SELECT * FROM bookings WHERE source=? AND destination=? AND date=?";
                                    pst = con.prepareStatement(query);
                                    pst.setString(1, from);
                                    pst.setString(2, to);
                                    pst.setString(3, date);
                                    rs = pst.executeQuery();

                                    if (!rs.isBeforeFirst()) {
                            %>
                                <p>No results found.</p>
                            <% 
                                    } else {
                            %>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Source</th>
                                            <th>Destination</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Price</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            <% 
                                        while (rs.next()) {
                            %>
                                        <tr>
                                            <td><%= rs.getInt("id") %></td>
                                            <td><%= rs.getString("source") %></td>
                                            <td><%= rs.getString("destination") %></td>
                                            <td><%= rs.getString("date") %></td>
                                            <td><%= rs.getString("time") %></td>
                                            <td><%= rs.getDouble("price") %></td>
                                            <td><a href="book.jsp?id=<%= rs.getInt("id") %>" class="btn btn-primary">Book</a></td>
                                        </tr>
                            <% 
                                        }
                                    }
                                } catch (SQLException e) {
                                    e.printStackTrace();
                                } finally {
                                    Database.close(rs, pst, con);
                                }
                            %>
                                    </tbody>
                                </table>
                        </div>
                    </div>
                </div>
            </main>

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-start">
                            <p class="mb-0">
                                <a class="text-muted" href="#" target="_blank"><strong>CNG Booking System</strong></a> &copy; 2024
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

    <script src="js/app.js"></script>
</body>

</html>
