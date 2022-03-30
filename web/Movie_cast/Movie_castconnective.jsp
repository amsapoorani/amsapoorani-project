<%-- 
    Document   : Movie_castconnective
    Created on : 28 Mar, 2022, 4:15:56 PM
    Author     : VINOTH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Actor details</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive" >Actor Details</h1>
        <% int ACT_ID = Integer.parseInt(request.getParameter("ACT_ID"));
         int MOV_ID = Integer.parseInt(request.getParameter("MOV_ID"));
            String ROLE = request.getParameter("ROLE");   
        %>
        
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase", "root", "root");
            Statement stmt = con.createStatement();
            String sqlinsert = "insert into moviedatabase.movie_cast values('" +ACT_ID+ "','" + MOV_ID+ "','" + ROLE + "')";
            int i = stmt.executeUpdate(sqlinsert);
            if (i > 0) {
                out.println("<b style='color:lavender;font-family:cursive'>registration successfully</b>");
            } else {
                out.println("<b style='color:lavender;font-family:cursive'>not insert the record</b>");
            }
            
            con.close();%>
    </body>
</html>
