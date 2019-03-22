<%@page import = "com.mvc.util.DBConnection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="https://fonts.googleapis.com/css?family=Exo+2" rel="stylesheet">
<html>
<head>
<style>
table{
  background-color:#E6E4E4;
  border:1px solid black;
  margin-left:26%;
  margin-right:20%;
  margin-top:-4%;
 padding:90px;
}
th{
  font-family: 'Exo 2', sans-serif;
font-size:125% !important;
}
th{
  margin:25px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking Details</title>
</head>
<body>

<div style="height:80px;"> <center><h1 style="font-size:300%;font-color:#fff;margin-left:5%;margin-top:22px;"><u>BOOKING TICKET</u></h1></center><br>
</div><br><br>


<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/skyroamer";
String userId = "root";
String password = "root";




try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{ 

	
	String ss=(String)session.getAttribute("contact");
		
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM booking where contactnumber="+ss;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table>
<tr bgcolor="#DEB887" style="margin-top:-200%;">


 <tr style="height:40px;">
 	<th>Booking ID</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("bookingid") %></th>
  </tr>


 <tr style="height:40px;">
 <th>First Name</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("firstname") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>Last Name</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("lastname") %></th>
  </tr>


 <tr style="height:40px;">
 <th>Age</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("age") %></th>
  </tr>


 <tr style="height:40px;">
 <th>Gender</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("gender") %></th>
  </tr>
  

 <tr style="height:40px;">
 <th>Trip Date</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("dateoftrip") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>Contact Number</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("contactnumber") %></th>
  </tr>
  
  
  
  
 <tr style="height:40px;">
 <th>Address</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("address") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>City</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("city") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>ZIP Code</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("zipcode") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>Passengers</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("numberofpassengers") %></th>
  </tr>
  
  
 <tr style="height:40px;">
 <th>Destination</th>
    <th  style = " border:1px solid black;"><%=resultSet.getString("destination") %></th>
  </tr>


</tr>
</table>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>




</body>
</html>
