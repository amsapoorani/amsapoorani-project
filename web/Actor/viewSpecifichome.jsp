<%-- 
    Document   : viewSpecifichome
    Created on : 29 Mar, 2022, 8:59:55 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">View Specific Actor Details</h1>
         <form action="viewspecificActor.jsp">
        <div class="mb-3 mt-3" >
      <label style="color:lightcyan;font-family:cursive">select ACT_ID:</label>
      <% Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            
           String sql="select ACT_ID from actor";
            ResultSet rs=stmt.executeQuery(sql); 

     %>
           <select name="ACT_ID" style="color:blue;font-family:cursive">
               <%while(rs.next())
               {%>
               <option><%=rs.getInt("ACT_ID")%></option>
               <%}%>
           </select>
               <% con.close();%>
     <br>
      <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
    </body>
</html>
