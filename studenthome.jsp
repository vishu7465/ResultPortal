<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
 
  
  <%@ page import="com.vishu.Dao.*" %> 
   <%@ page import="com.vishu.Model.*" %> 
   <%@page import ="java.sql.*" %>
   <% Class.forName("com.mysql.jdbc.Driver"); %>
 <% 

 {
 
	 String roll=request.getParameter("roll");
 Connection con;
 
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam", "root", "root");
	PreparedStatement ps = con.prepareStatement("select * from newstudent inner join result where newstudent.roll=result.roll and newstudent.roll='"+roll+"'");
		
			ResultSet rs=ps.executeQuery();
			
		
				%>
					<% while(rs.next()){ %>
 
    <h2 style="margin-left: 450px;font-size: 32px;color: Green">Result </h2>
  <a title="print" alt="print" onclick="window.print();"target="blank" style="margin-left: 850px;font-size: 32px">Print Result</a>

 
 <table class="table table-dark" style="color: Red">
 <thead >
   <tr>
     <th>Name :<%=rs.getString(1) %></th>
     <th>Father' Name :<%=rs.getString(2) %></th>
    <th>Roll Number :<%=rs.getString(3) %></th>
       <th>Mobile Number :<%=rs.getString(4) %></th>
    </tr>
    </thread>
    <thread>
    <tr>
  
      <th>Email :<%=rs.getString(5) %></th>
       <th>College Name :<%=rs.getString(6) %></th>
        </tr>
   </thead>
    <tbody>
   <tr>
  
  <td>Subjects</td>
  <td>Exam</td>
  
  <td>Total Marks</td>
  <td>Minimum Marks</td>
  <td>Obtained Marks</td>
  
  
  </tr>
  <tr>
  <tr>
  
  <td>MathMatics-i</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(8) %></td>
  
  
  </tr>
  <tr>
  
  <td>Physics</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(9) %></td>
  
  
  </tr>
  <tr>
  
  <td>Data Structure</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(10) %></td>
  
  
  </tr>
  
    <tr>
  
  <td>Machanics</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(11) %></td>
  
  
  </tr>
    <tr>
  
  <td>Java</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(12) %></td>
  
  
  </tr>
           
      <tr>
  
  <td>Python</td>
  <td>Theory</td>
  
  <td>100</td>
  <td>30</td>
  <td><%=rs.getString(13) %></td>
  
  
  </tr>
    <br>
  </table>
  
    
    
  <table class="table table-dark" style="color: Blue"> 
          <thread>
        <tr>
  
  <td>Total</td>
  <td>Theory</td>
  <td>600</td>
  <td>200</td>
  <td><% int total = rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13); %></td>
  
  
  </tr>
  <tr>
       <td class="footer" >Percentage</td>
  
  <td><%= ((total*100)/600)%></td>
  
  
  </tr>
  
    </thread>
   
       <%
					}
 }
   %>
  </table>
  
</div>
  <footer style="margin-left: 450px;">&copy; Copyright 2021 Made by Vishal</footer>
</body>
</html>