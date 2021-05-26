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
 
 Connection con;
 
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Exam", "root", "root");
	PreparedStatement ps = con.prepareStatement("select * from result ");
		
			ResultSet rs=ps.executeQuery();
			
		
				%>
					<% while(rs.next()){ %>
 
    <h2 style="margin-left: 450px;font-size: 32px;color: Green">Results</h2>
 
 <table class="table table-dark" style="color: Red">
 <thead >
   <tr>
     <th>Roll Number</th>
     <th>MatheMatics-I</th>
     <th>Physics</th>
      <th>Data Structures</th>
       <th>Mechanics</th>
        <th>Java</th>
        <th>Python</th>
  </tr>
   </thead>
    <tbody>
  <% while(rs.next()){ %>
  
    
      <tr>
        <td><%= rs.getString(1)  %></td>
        <td> <%=rs.getString(2)   %></td>
        <td><%=rs.getString(3)   %></td>
         <td> <%= rs.getString(4) %></td>
          <td> <%= rs.getString(5)  %></td>
           <td> <%= rs.getString(6)   %></td>
          <td> <%=rs.getString(7)  %></td>
           
      </tr>
    
   <% }
   }
   }%>
    
      
      
  </table>
  
</div>
</body>
<footer style="margin-left: 450px;">&copy; Copyright 2021 Made by Vishal</footer>
</html>