<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Expletus+Sans|Megrim|Nunito+Sans|Sarabun" rel="stylesheet">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book A Tour</title>


<style>
body {margin:0;}

.navbar {
  z-index:1000;
  overflow: hidden;
  background-color:white;
  position: fixed;
  top: 0;
  width: 100%;
  box-shadow: -10px 15px 8px -15px #111;   
  padding:10px;
  display: inline-block;
  text-align: center;
  padding:25px;
}

.navbar a {
  color: black;
  text-decoration: none;
  font-size: 100%;
  line-height: 10px;
  border-top:0.5px solid black;
  font-family: 'Muli', sans-serif;
  margin:20px;
}

.navbar a:hover {
  color: black;
  border-top:2.5px solid black;
  font-weight:600;
}
</style>

</head>

<body>

<div class="navbar">
  <a href="#home">HOME</a>
  <a href="#news">ABOUT</a>
  <a href="#contact">BOOK A TOUR</a>
  <a href="#contact">SERVICES</a>
  <a href="#contact">SPECIAL EVENTS</a>     
  <a href="#contact">FAQs</a>
  <a href="#contact">CONTACT</a>
</div>

 <form name="form" action="BookingServlet" method="post" onsubmit="return validate()">
 <table align="center" style="margin-top:8%; border:1px solid black; padding:2%;"> 
<tr>
<td>First Name <span style="color:red">*</span></td>
  <td><input type="text" name="firstname" required></td>
  </tr>
<tr>
<td>Last Name <span style="color:red">*</span></td>
  <td><input type="text" name="lastname" required></td>
  </tr>
  <tr>
  <td>Age<span style="color:red">*</span></td>
   <td>
    <input type="text" name="age" required>
   </td>
   <tr>
<td>Gender<span style="color:red">*</span></td>
  <td>
   <select name="gender" style="height:20px;width:60px; height:25px;
  border-top:1px solid black;
  border-left:1.0px solid black;
  border-right:1.0px solid black;
  border-bottom:1.0px solid black;">
  <option >select</option>
        <option value="male">Male</option>
        <option value="female">Female</option>
      </select>
    
  </td>
  </tr>
  <tr>
<td>Date of Trip<span style="color:red">*</span></td>
  <td><input type="text" name="dateoftrip" required></td></tr>

<tr><td>Contact Number</td>
  <td><input type="text" name="contactnumber"></td></tr> 
  
<tr>
<td>Address</td>
      <td><input type="text" name="address"></td></tr>
  <tr>
 <td>City<span style="color:red">*</span></td>
   <td><input type="text" name="city" required></td></tr>
 <tr>
 <td>Zip Code<span style="color:red">*</span></td>
   <td><input type="text" name="zipcode" required></td>
</tr>

 <tr>
 <td>Number of passengers</td>
   <td><input type="text" name="numberofpassengers" required></td>
</tr>

<tr>
 <td>Roaming Destination</td>
   <td><input type="text" name="destination" required></td>
</tr>



<tr>
 <td><%=(request.getAttribute("errMessage") == null) ? ""
 : request.getAttribute("errMessage")%></td>
 </tr>
 <tr> </tr>
  <tr> </tr> <tr> </tr>
 <tr>
 <td>
 <input type="submit" value="Book"></input></td>                                                                            
 <td><input type="reset" value="Reset"></input></td>
 </tr>
</table>

</form>
</body>
<script> 
function validate()
{ 
 
 var contactnumber= document.form.contactnumber.value;

 
  if(contactnumber.length!=10)
 { 
 alert("Contact number must be 10 characters long."); 
 return false; 
 } 
 

 
 return true;
 } 
</script> 

</html>