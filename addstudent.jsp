<html>
<head>
<link href="css/head.css" rel="stylesheet">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<div class="topnav">
  <a class="home.jsp" href="#home">Home</a>
 <a href="index.jsp" >Login</a>
  <a href="#about">Logout</a>
  
</div>

<body >

<form action ="addstudent" method="post" style="margin-top: 200px">
  <div class="form-row" style="margin: 250px">
    <div class="col">
    <h1 style="color: black;margin-left: 250px;font-size: 40px">Add New Student</h1>
   <h1>Name</h1>
     <input type="text" class="form-control" name="name" placeholder="First name">
    </div>
    <div class="col">
    <h1>Father Name</h1>
      <input type="text" class="form-control"name="fname" placeholder="father name">
    </div>
     <div class="col">
    <h1>Roll Number</h1>
      <input type="text" class="form-control"name="roll" placeholder="Roll Number">
    </div>
     <div class="col">
    <h1>Mobile Number</h1>
      <input type="number" class="form-control"name="mobile" placeholder="Phone Number">
    </div>
     <div class="col">
    <h1>Email Adress</h1>
      <input type="email" class="form-control"name="email" placeholder="Enter Email">
    </div>
    
     <div class="col">
    <h1>College Name</h1>
      <input type="text" class="form-control"name="college" placeholder="College">
    </div>
    
    <br>
      <button type="submit" class="btn btn-primary mb-2" style="margin: 20px;margin-left:200px;padding-right:20px;padding-left:20px">Add</button>
  
  
  </div>
</form>
  <footer style="margin-left: 450px;">&copy; Copyright 2021 Made by Vishal</footer>
</body>

</html>