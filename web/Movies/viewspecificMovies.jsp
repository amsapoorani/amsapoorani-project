<%-- 
    Document   : viewspecificMovies
    Created on : 29 Mar, 2022, 11:19:28 AM
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
        <title>view specific director</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">Actor details</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            int MOV_ID=Integer.parseInt(request.getParameter("MOV_ID"));
           String sql="select * from movies where MOV_ID='"+MOV_ID+"'";
           ResultSet rs=stmt.executeQuery(sql);   
        %>
       
      <table border=2px style='color:lavender;font-family:cursive'>
            <tr>
                <th> Movie id</th>
                       <th>Movie Title</th>
                       <th>Move Year</th>
                       <th>Move Language</th>
                       <th>Director Id</th>
          <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getString(2)%></td> 
                <td><%=rs.getString(3)%></td> 
                <td><%=rs.getString(4)%></td> 
                <td><%=rs.getInt(5)%></td> 
            </tr>
            <% }%>
             </table>
               <%
            con.close();%>
    </body>
</html>

