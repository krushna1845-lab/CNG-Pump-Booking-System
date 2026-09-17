<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.UUID, com.java.*" %>
<%
    response.setContentType("application/json");
    PrintWriter out = response.getWriter();
    JSONObject json = new JSONObject();

    try {
        String pname = request.getParameter("pname");
        String cngkg = request.getParameter("cngkg");
        String bookingRef = UUID.randomUUID().toString();
        String bookingDate = request.getParameter("booking_date");
        String bookingTime = request.getParameter("booking_time");
        String pemail = request.getParameter("pemail");
        String uname = User.getUUemail();

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
            json.put("success", true);
            json.put("bookingRef", bookingRef);
            json.put("pname", pname);
            json.put("cngkg", cngkg);
            json.put("bookingDate", bookingDate);
            json.put("bookingTime", bookingTime);
            json.put("pemail", pemail);
        } else {
            json.put("success", false);
        }
    } catch (Exception e) {
        json.put("success", false);
        json.put("message", e.getMessage());
    }

    out.print(json.toString());
    out.flush();
%>

        </div>
    </div>
</body>

</html>
