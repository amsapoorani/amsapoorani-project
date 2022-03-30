<%-- 
    Document   : viewSpecificMovie_cast
    Created on : 29 Mar, 2022, 10:36:52 AM
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
        <title>view specific Movie_cast</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">view specific Movie_cast</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            int ACT_ID=Integer.parseInt(request.getParameter("ACT_ID"));
            int MOV_ID=Integer.parseInt(request.getParameter("MOV_ID"));
           String sql="select * from movie_cast where ACT_ID='"+ACT_ID+"' and MOV_ID='"+MOV_ID+"' ";
           ResultSet rs=stmt.executeQuery(sql);   
        %>
       
        <table border=2px style='color:lavender;font-family:cursive'>
            <tr>
                <th> Actor id</th>
                       <th>Movie id</th>
                       <th>Role</th>
          <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getInt(2)%></td> 
                <td><%=rs.getString(3)%></td> 
            </tr>
            <% }%>
             </table>
             <%
            con.close();%>
    </body>
</html>

