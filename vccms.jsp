<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
	table{
		margin-left: 250px;
	}
	th, td{
		padding: 10px;
	}

</style>

<meta charset="ISO-8859-1">
<title>CMS DETAILS</title>
</head>


<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<form action="Log.jsp"><input type="submit" value="Logout"></form><br><a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a><br><br>
</body>

<body topmargin="150" leftmargin="300">


<table>

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();
		ResultSet rs= st.executeQuery("select hod_name, email, phone_no from department where department_id='CMS101'");
		while(rs.next())
		{
%>


<b>HOD NAME :</b> <%= rs.getString(1) %>&emsp;&emsp;
<b>EMAIL :</b> <%= rs.getString(2) %>&emsp;&emsp;
<b>PHONE NUMBER :</b> <%= rs.getString(3) %><br><br>

<%
	}
%>

<font size=5>SUPERVISOR DETAILS</font>	
<tr>
	<td><b>Supervisor Id</b></td>
	<td><b>Name</b></td>
</tr>	

<%		
		ResultSet rs0= st.executeQuery("select sup_id, name from supervisor where department_id='CMS101'");
		while(rs0.next())
		{
%>

<tr>
	<td><%= rs0.getString(1) %> &emsp;</td>
	<td><%= rs0.getString(2) %></td>
</tr>

<%	
		}
	}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
<br><br><br><br><br><br>
</body>

</html>