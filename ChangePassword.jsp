<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<body topmargin="140">
<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<br><br>
	<form action="Admin.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Back"></form><br>
	
	<form action="Log.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Logout"></form>
	&emsp;&emsp;&emsp;&emsp;<a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	
	<font size=6><font color="power blue"><b>Enter Details</b></font></font>
	
    <form action="change" method="post">
	<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	User Id<font color="red">*</font>: &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<input type="text" name="userid" required="required">
	<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	Password<font color="red">*</font>: &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;<input type="password" name="password1" required="required">
	<br><br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	
	Confirm Password<font color="red">*</font>: &emsp;&emsp;<input type="password" name="password2" required="required">
	<br><br> 
	
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;	
	<input type="submit" value="Change Password">&emsp;
	<input type="reset" value="RESET">
</form>
<br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;	

 <%
 String file_name=(String)request.getParameter("userid");
 if(file_name!=null){
 out.println("Password Changed successfuly");
 }
 %>
</body>
</body>
</html>