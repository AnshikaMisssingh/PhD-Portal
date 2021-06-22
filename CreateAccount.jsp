<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<style>
table{
		margin-left: 100px;
	}
	tr, td{
		padding: 10px;
	}

</style>

<body topmargin="140">
<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100% 100%">
<br><br>
	<form action="Admin.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Back"></form><br>
	<form action="Log.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Logout"></form>
	<br>&emsp;&emsp;&emsp;&emsp;<a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<center>
	<table>
	
	<font size=6><font color="power blue"><b>&emsp;&emsp;&emsp;&ensp;ENTER DETAILS</b></font></font>
	
    <form action="Create" method="post">
	<tr>
	<td>Email Id<font color="red">*</font>:</td> <td><input type="email" name="id" required="required"></td>
	</tr>
	<tr>
	<td>Password<font color="red">*</font>:</td> <td><input type="password" name="password" required="required"></td>
	</tr>
	<tr>
	<td>Permissions<font color="red">*</font>:</td> <td><input type="text" name="permissions" required="required"></td>
	</tr>
	<tr>
	<td>UserID<font color="red">*</font>:</td> <td><input type="text" name="userid" required="required"></td>
	</tr>
	<tr>
	<td>Role<font color="red">*</font>:</td> <td><input type="text" name="role" required="required"></td>
	</tr>
	
	</table>
	<input type="submit" value="Create Account">&emsp;
	<input type="reset" value="RESET">
</form>
<br><br>&emsp;&emsp;&emsp;
<%
 String file_name=(String)request.getParameter("id");
 if(file_name!=null){
 out.println("Account Created successfuly");
 }
 %>

 </center>
</body>
</body>
</html>