<%-- 
    Document   : Moviesconnective
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
         <title>MOVIES details</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive" >Movies Details</h1>
        <% int MOV_ID = Integer.parseInt(request.getParameter("MOV_ID"));
            String MOV_TITLE = request.getParameter("MOV_TITLE");
            String MOV_YEAR = request.getParameter("MOV_YEAR");
            String MOV_LANG= request.getParameter("MOV_LANG");
            int DIR_ID = Integer.parseInt(request.getParameter("DIR_ID"));
             String MOV_LINK = request.getParameter("MOV_LINK");
        %>
        
        <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase", "root", "root");
            Statement stmt = con.createStatement();
            String sqlselect="select * from moviedatabase.movies  where MOV_ID='"+MOV_ID+"' ";
            ResultSet rs=stmt.executeQuery(sqlselect);
             if(rs.next())
            {
               out.println("<script>alert('id already there');</script>");
               %>
                 <jsp:include page="Movieshome.jsp"></jsp:include>  <% 
            }
            else
           {
            String sqlinsert = "insert into moviedatabase.movies values('" +MOV_ID+ "','" +MOV_TITLE+ "','" +MOV_YEAR+ "','" +MOV_LANG+ "','" +DIR_ID+ "','" +MOV_LINK+ "')";
            int i = stmt.executeUpdate(sqlinsert);
            if (i > 0) {
                out.println("<b style='color:lavender;font-family:cursive'>registration successfully</b>");
            } else {
                out.println("<b style='color:lavender;font-family:cursive'>not insert the record</b>");
            }
            }
            con.close();%>
    </body>
</html>
