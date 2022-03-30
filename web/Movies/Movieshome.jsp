<%-- 
    Document   : MoviesHome
    Created on : 28 Mar, 2022, 3:55:10 PM
    Author     : VINOTH
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>movies</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-color:black">

<div class="container mt-3">
    <h2 style="color:lavender;font-family:cursive">Movies Details</h2>
    <form action="Moviesconnective.jsp" method="get/post">
    <div class="mb-3 mt-3" style="color:lightgray;font-family:cursive">
      <label style="color:lightblue;font-family:cursive" >MOV_ID:</label>
      <input type="text" class="form-control" id="MOV_ID" placeholder="Enter movie id" name="MOV_ID" required="">
    </div>
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >MOV_TITLE:</label>
      <input type="text" class="form-control" id="MOV_TITLE" placeholder="Enter movie name" name="MOV_TITLE" required="">
    </div>
        <div class="mb-3">
      
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >MOV_YEAR:</label>
      <input type="YEAR"  id="MOV_YEAR" class="form-control" name="MOV_YEAR" required=""  > 
    </div>
        <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >MOV_LANG:</label>
      <input type="text"  id="MOV_LANG" class="form-control" name="MOV_LANG" required=""  > 
    </div>
       <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >DIR_ID:</label>
      <input type="text"  id="DIR_ID" class="form-control" name="DIR_ID" required=""   > 
    </div> 
             <div class="mb-3">
            <label style="color:lightblue;font-family:cursive" >MOV_LINK:</label>
      <input type="text" class="form-control" id="MOV_LINK" placeholder="Enter movie Link" name="MOV_LINK" required="">
    </div>
   
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>