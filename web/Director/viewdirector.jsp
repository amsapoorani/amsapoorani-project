<%-- 
    Document   : viewdirector
    Created on : 29 Mar, 2022, 9:50:59 AM
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
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">Actor details</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
           String sql="select * from director";
           ResultSet rs=stmt.executeQuery(sql);   
        %>
       
        <table border=2px style='color:lavender;font-family:cursive'>
            <tr>
                <th> Director id</th>
                       <th>Director name</th>
                       <th>Director phone</th>
          <%while (rs.next()) {%>
            <tr>
                <td><%=rs.getInt(1)%></td> 
                <td><%=rs.getString(2)%></td> 
                <td><%=rs.getString(3)%></td> 
            </tr>
            <% }%>
             </table>
             <%
            con.close();%>
    </body>
</html>
