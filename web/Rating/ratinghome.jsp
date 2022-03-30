<%-- 
    Document   : Ratinghome
    Created on : 28 Mar, 2022, 3:55:10 PM
    Author     : VINOTH
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Rating</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.main {
 margin-left: 50PX;;
 
}
.rating-star {
    direction: rtl;
    font-size: 40px;
    unicode-bidi: bidi-override;
    display: inline-block;
}
.rating-star input {
    opacity: 0;
    position: relative;
    left: -30px;
    z-index: 2;
    cursor: pointer;
}
.rating-star span.star:before {
    color: #777777;
}
.rating-star span.star {
    display: inline-block;
    font-family: FontAwesome;
    font-style: normal;
    font-weight: normal;
    position: relative;
    z-index: 1;
}
.rating-star span {
    margin-left: -30px;
}
.rating-star span.star:before {
    color: #777777;
    content:"\f006";
}
.rating-star input:hover + span.star:before, .rating-star input:hover + span.star ~ span.star:before, .rating-star input:checked + span.star:before, .rating-star input:checked + span.star ~ span.star:before {
    color: #ffd100;
    content:"\f005";
}
 
.selected-rating{
    color: #ffd100;
    font-weight: bold;
    font-size: 42px;
}

</style>

</head>
<body style="background-color:black">

<div class="container mt-3">
    <h2 style="color:lavender;font-family:cursive">Movie Rating Details</h2>
    <form action="ratingconnective.jsp" method="get/post">
    <div class="mb-3 mt-3" style="color:lightgray;font-family:cursive">
      <label style="color:lightblue;font-family:cursive" >MOV_ID:</label>
      <input type="text" class="form-control" id="MOV_ID" placeholder="Enter MOVIE id" name="MOV_ID" required="">
    </div>
          <label style="color:lightblue;font-family:cursive" >MOVIE RATING:</label>
    <div class="main">  
 
<span class="rating-star">
<input type="radio" name="REV_STARS" value="5"><span class="star"></span>&nbsp;
 
    <input type="radio" name="REV_STARS" value="4"><span class="star"></span>&nbsp;
 
    <input type="radio" name="REV_STARS" value="3"><span class="star"></span>&nbsp;
 
    <input type="radio" name="REV_STARS" value="2"><span class="star"></span>&nbsp;
 
    <input type="radio" name="REV_STARS" value="1"><span class="star"></span>
</span>
    </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>    
 <script src="function.js" type="text/javascript"></script>
</body>
</html>