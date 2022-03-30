<%-- 
    Document   : DeleteSpecificdirectorhome
    Created on : 29 Mar, 2022, 10:00:10 AM
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
        <title>delete director</title>
    </head>
    <body style="background-color: black">
        <h1 style="color:lavender;font-family:cursive">Delete Specific Director Details</h1>
         <form action="Deletespecificdirector.jsp">
        <div class="mb-3 mt-3" >
      <label style="color:lightcyan;font-family:cursive">select ACT_ID:</label>
      <% Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
           String sql="select DIR_ID from director";
            ResultSet rs=stmt.executeQuery(sql); 

     %>
           <select name="DIR_ID" style="color:blue;font-family:cursive">
               <%while(rs.next())
               {%>
               <option><%=rs.getInt("DIR_ID")%></option>
               <%}%>
           </select>
               <% con.close();%>
     <br>
      <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
    </body>
</html>

