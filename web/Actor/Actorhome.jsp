<%-- 
    Document   : Actorhome
    Created on : 28 Mar, 2022, 3:55:10 PM
    Author     : VINOTH
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Actor</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-color:black">

<div class="container mt-3">
    <h2 style="color:lavender;font-family:cursive">Actor Details</h2>
    <form action="Actorconnective.jsp" method="get/post">
    <div class="mb-3 mt-3" style="color:lightgray;font-family:cursive">
      <label style="color:lightblue;font-family:cursive" >ACT_ID:</label>
      <input type="text" class="form-control" id="ACT_ID" placeholder="Enter Actor id" name="ACT_ID" required>
    </div>
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >ACT_NAME:</label>
      <input type="text" class="form-control" id="ACT_NAME" placeholder="Enter Actor name" name="ACT_NAME" required>
    </div>
    <div class="mb-3">
      <label style="color:lightblue;font-family:cursive" >ACT_GENDER:</label>
      <input type="radio"  id="ACT_GENDER" value="Male" name="ACT_GENDER"> 
      <label style="color:lightblue;font-family:cursive" >Male</label> </button>
          <input type="radio"  id="ACT_GENDER" value="Female" name="ACT_GENDER">
          <label style="color:lightblue;font-family:cursive" >Female</label></button>
    </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

</body>
</html>