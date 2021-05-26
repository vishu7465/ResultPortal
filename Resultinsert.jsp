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
  <a class="active" href="#home">Home</a>
 <a href="index.jsp" >Login</a>
  <a href="index.jsp">Logout</a>
  <a href="resultshow.jsp"> View Result</a>
</div>

<body >

<form action ="insertresult" method="post" style="margin-top: 200px">
  <div class="form-row" style="margin: 250px">
    <div class="col">
    <h1 style="color: black;margin-left: 250px;font-size: 40px">Enter Result</h1>
   <h1>Roll Number</h1>
     <input type="number" class="form-control" name="roll" placeholder="Roll Number">
    </div>
    <div class="col">
    <h1>MatheMatics-I</h1>
      <input type="number" class="form-control"name="sub1" >
    </div>
     <div class="col">
    <h1>Physics</h1>
      <input type="number" class="form-control"name="sub2" placeholder="">
    </div>
     <div class="col">
    <h1>Data Structures</h1>
      <input type="number" class="form-control"name="sub3" placeholder="">
    </div>
    
     <div class="col">
    <h1>Mechanics</h1>
      <input type="number" class="form-control"name="sub4" placeholder="">
    </div>
     <div class="col">
    <h1>Java</h1>
      <input type="number" class="form-control"name="sub5" placeholder="">
    </div>
     <div class="col">
    <h1>Python</h1>
      <input type="number" class="form-control"name="sub6" placeholder="">
    </div>
    <br>
      <button type="submit" class="btn btn-primary mb-2" style="margin: 20px;margin-left:200px;padding-right:20px;padding-left:20px">Add Result</button>
  
  
  
  
  </div>
</form>

</body>
<footer style="margin-left: 450px;">&copy; Copyright 2021 Made by Vishal</footer>
</html>