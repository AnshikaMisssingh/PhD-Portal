<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AIM N ACT DETAILS</title>
</head>
<style>
	table{
		margin-left: 250px;
	}
	th, td{
		padding: 10px;
	}

</style>


<form action="Log.jsp"><input type="submit" value="Logout"></form><br><a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a><br><br>



<body topmargin="150">
<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">
	
<body leftmargin="300">
<body>
<table>

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();
		ResultSet rs= st.executeQuery("select hod_name, email, phone_no from department where department_id='AI101'");
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
		ResultSet rs0= st.executeQuery("select sup_id, name from supervisor where department_id='AI101'");		while(rs0.next())
		{
%>

<tr>
	<td><%= rs0.getString(1) %> &emsp;</td>
	<td><%= rs0.getString(2) %></td>
</tr>

<%
		}
%>

<tr>
	<td><b>Supervisor</b></td>
	<td><b>Student</b></td>
</tr>	

<%		
		ResultSet rs1= st.executeQuery("select s.name, st.name from supervisor s inner join student_supervisor ss on ss.sup_id = s.sup_id inner join student_academic st on ss.student_id = st.student_id where ss.sup_id like 'AI%'");
		while(rs1.next())
		{
%>

<tr>
	<td><%= rs1.getString(1) %> &emsp;</td>
	<td><%= rs1.getString(2) %></td>
</tr>

<%
		}
%>
</table>

<table>
<font size=5>EVALUATOR DETAILS</font>
<tr>
	<td><b>Evaluator Id</b></td>
	<td><b>Name</b></td>
</tr>	

<%		
		ResultSet rs2= st.executeQuery("select evaluator_id, name from evaluator where department_id='AI101'");
		while(rs2.next())
		{
%>

<tr>
	<td><%= rs2.getString(1) %> &emsp;</td>
	<td><%= rs2.getString(2) %><br></td>
</tr>

<%
		}
%>

<tr>
	<td><b>Evaluator</b></td>
	<td><b>Student</b></td>
</tr>	

<%		
		ResultSet rs3= st.executeQuery("select e.name, st.name from evaluator e inner join student_evaluator es on es.evaluator_id = e.evaluator_id inner join student_academic st on es.student_id = st.student_id where es.evaluator_id like 'AI%'");
		while(rs3.next())
		{
%>

<tr>
	<td><%= rs3.getString(1) %> &emsp;</td>
	<td><%= rs3.getString(2) %><br></td>
</tr>

<%
		}
%>
</table>

<table>
<font size=5>STUDENT DETAILS</font>
<tr>
	<td><b>Student Id</b></td>
	<td><b>Name</b></td>
</tr>	

<%		
		ResultSet rs4= st.executeQuery("select student_id, name from student_academic where department_id='AI101'");
		while(rs4.next())
		{
%>

<tr>
	<td><%= rs4.getString(1) %> &emsp;</td>
	<td><%= rs4.getString(2) %><br></td>
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
</body>
</body>

</body>
</body>

</html>