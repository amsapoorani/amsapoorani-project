<%-- 
    Document   : Rating
    Created on : 29 Mar, 2022, 11:45:05 AM
    Author     : VINOTH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>RATING</title>
    </head>
    <body style="background-color:black">
         <div Style="background-color:lightskyblue">
        <h1 style="color:blackack; font-family:monospace;font-size: 40px;">
           Movie Rating Details
        </h1>
              </div>
        <div class="container mt-3" style="margin-right:50px" >
  <ul class="nav">
      <li class="nav-item" >
      <a class="nav-link" href="ratinghome.jsp" style="color:lavenderblush" target="f1">ADD</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="viewMovieRating.jsp" style="color:lavenderblush" target="f1">view</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="viewSpecificRatinghome.jsp" style="color:lavenderblush" target="f1">view Specific</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="DeleteSpecificRatinghome.jsp" style="color:lavenderblush" target="f1">delete Specific</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="UpdateRatinghome.jsp" style="color:lavenderblush" target="f1">Update</a>
    </li>
  </ul>
</div>
   
        <iframe width="800" height="400" name="f1" style="border: 0;background-size: cover; background-color:black;">
     
</iframe>
    </body>
</html>
