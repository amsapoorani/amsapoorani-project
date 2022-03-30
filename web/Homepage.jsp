<%-- 
    Document   : Homepage
    Created on : 22 Mar, 2022, 7:20:16 PM
    Author     : VINOTH
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body  style="background-color:black">
    <div Style="background-color:black">
        <h1 style="color:lemonchiffon; font-family:monospace;font-size: 40px;">
            Movie Database Management System
        </h1>
        <div class="container mt-3" style="margin-right:50px" >
  <ul class="nav">
      <li class="nav-item" >
      <a class="nav-link" href="Actor\Actor.jsp" style="color:lavenderblush" target="f2">Actor</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Director\Director.jsp" style="color:lavenderblush" target="f2">Director</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Movies\movies.jsp" style="color:lavenderblush" target="f2">Movies</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="Movie_cast\movi_cast.jsp" style="color:lavenderblush" target="f2">Movie_cast</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="Rating\Rating.jsp" style="color:lavenderblush" target="f2">Rating</a>
    </li>
  </ul>
</div>

        
    </div>
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
     <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
      <button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image\Baahubali.jpeg" alt="Los Angeles" class="d-block" style="width:100%;height:350px">
      
    </div>
    <div class="carousel-item">
      <img src="image\two-years-bahubali.jpg" alt="Chicago" class="d-block" style="width:100%;height:350px">
       
    </div>
    <div class="carousel-item">
      <img src="image\master.jpg" alt="New York" class="d-block" style="width:100%;height:350px">
       
    </div>
      <div class="carousel-item">
      <img src="image\vettaikaran .jpg" alt="New York" class="d-block" style="width:100%;height:350px">
       
    </div>
      <div class="carousel-item">
      <img src="image\mirchi.jpg" alt="New York" class="d-block" style="width:100%;height:350px">
        
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

        <iframe width="1000" height="600" name="f2" style="border: 0;background-size: cover; background-color:black;">
     
</iframe>


</body>
</html>