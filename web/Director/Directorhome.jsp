<%-- 
    Document   : DirectorHome
    Created on : 28 Mar, 2022, 3:55:10 PM
    Author     : VINOTH
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Director</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-color:black">

<div class="container mt-3">
    <h2 style="color:lavender;font-family:cursive">Director Details</h2>
    <form action="Directorconnective.jsp" method="get/post">
    <div class="mb-3 mt-3" style="color:lightgray;font-family:cursive">
      <label style="color:lightblue;font-family:cursive" >DIR_ID:</label>
      <input type="text" class="form-control" id="DIR_ID" placeholder="Enter director id" name="DIR_ID" required>
    </div>
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >DIR_NAME:</label>
      <input type="text" class="form-control" id="DIR_NAME" placeholder="Enter Actor name" name="DIR_NAME"required>
    </div>
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >DIR_PHONE:</label>
      <input type="text"  id="DIR_PHONE" class="form-control" name="DIR_PHONE" max="10" min="10" placeholder="Enter phone number" required  > 
    </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>