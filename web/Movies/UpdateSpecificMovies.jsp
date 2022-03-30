<%-- 
    Document   : UpdateSpecificMovies
    Created on : 29 Mar, 2022, 11:30:57 AM
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
        <h1 style="color:lavender;font-family:cursive">update Movies Record</h1>
      
       <%   Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/moviedatabase","root","root");
            Statement stmt=con.createStatement();
            int MOV_ID=Integer.parseInt(request.getParameter("MOV_ID"));
            String updata=request.getParameter("updatedetails");
            String upfield=request.getParameter("updatefield");
           boolean flag=false;
            if(updata.equals("MovieTitle"))
            {
               String sqlselect = "update moviedatabase.movies set MOV_TITLE='"+upfield+"'where MOV_ID='" + MOV_ID + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("<p style='color:lavender;font-family:cursive'>'Record Updated'</p>");
                   flag=true;
               }
            }
            if(updata.equals("MovieYear"))
            {
                 String sqlselect = "update moviedatabase.movies set MOV_YEAR='"+upfield+"'where MOV_ID='" + MOV_ID + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("<p style='color:lavender;font-family:cursive'>'Record Updated'</p>");
                   flag=true;
               }
            }
             if(updata.equals("MovieLanguage"))
            {
                 String sqlselect = "update moviedatabase.movies set MOV_LANG='"+upfield+"'where MOV_ID='" + MOV_ID + "'";
               int i= stmt.executeUpdate(sqlselect);
               if(i>0)
               {
                   out.println("<p style='color:lavender;font-family:cursive'>'Record Updated'</p>");
                   flag=true;
               }
            }
              if(updata.equals("MovieLink"))
            {
                 String sqlselect = "update moviedatabase.movies set MOV_LINK='"+upfield+"'where MOV_ID='" + MOV_ID + "'";
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


