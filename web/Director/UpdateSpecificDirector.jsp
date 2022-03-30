<%-- 
    Document   : UpdateSpecificDirector
    Created on : 29 Mar, 2022, 10:11:44 AM
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
        <h1 style="color:lavender;font-family:cursive">update Director Record</h1>
      
       <%   Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            int DIR_ID=Integer.parseInt(request.getParameter("DIR_ID"));
            String updata=request.getParameter("updatedetails");
            String upfield=request.getParameter("updatefield");
           boolean flag=false;
            if(updata.equals("DirectorName"))
            {
               String sqlselect = "update moviedatabase.director set DIR_NAME='"+upfield+"'where DIR_ID='" + DIR_ID + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("<p style='color:lavender;font-family:cursive'>'Record Updated'</p>");
                   flag=true;
               }
            }
            if(updata.equals("Directorphone"))
            {
                 String sqlselect = "update moviedatabase.director set DIR_PHONE='"+upfield+"'where DIR_ID='" + DIR_ID + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("<p style='color:lavender;font-family:cursive'>'Record Updated'</p>");
                   flag=true;
               }
            }
            if(flag=true)
            {
                 out.println("<script>alert('Record Updated!');</script>");
            }
            else
            {
                out.println("<script>alert('Record Not Found/Not Updated!');</script>");
            }
             stmt.close();
            con.close();
            %>
        
    </body>
</html>

