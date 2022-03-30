<%-- 
    Document   : DeleteSpecificMovie_cast
    Created on : 29 Mar, 2022, 10:45:57 AM
    Author     : VINOTH
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">Delete Movie_cast Record</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            int ACT_ID=Integer.parseInt(request.getParameter("ACT_ID"));
            int MOV_ID=Integer.parseInt(request.getParameter("MOV_ID"));
           String sql="delete from movie_cast where ACT_ID='"+ACT_ID+"'and MOV_ID='"+MOV_ID+"'";
            int i=stmt.executeUpdate(sql);
            if(i>0)
            {
               out.println("<p style='color:lavender;font-family:cursive'>'Record Deleted Successfully!'</p>");
            }
           else
            {
               out.println("<p style='color:lavender;font-family:cursive'>'Record Not Found !'</p>");
            }
            con.close();
        %>
       
        
    </body>
</html>

