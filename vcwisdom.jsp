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
<title>WISDOM DETAILS</title>
</head>


<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<body topmargin="150" leftmargin="300">
<form action="Log.jsp"><input type="submit" value="Logout"></form><br><a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a><br><br>

<table>

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();
		ResultSet rs= st.executeQuery("select hod_name, email, phone_no from department where department_id='WISDOM101'");
		while(rs.next())
		{
%>


<b>HOD NAME :</b> <%= rs.getString(1) %>&emsp;&emsp;
<b>EMAIL :</b> <%= rs.getString(2) %>&emsp;&emsp;
<b>PHONE NUMBER :</b> <%= rs.getString(3) %><br><br>

<%	
		}
	}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</table>
<br><br><br><br><br><br><br><br><br><br>
</body>
</body>
</html>