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
<title>Insert title here</title>
</head>

<body>

<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">



<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();
		ResultSet rs= st.executeQuery("select sup_id, name from supervisor where department_id='AI101'");
		while(rs.next())
		{
%>

<body topmargin="150" leftmargin="500">

Id : <%= rs.getString(1) %> &emsp;
Name : <%= rs.getString(2) %><br>

</body>

<%
		}
%>
<br><br>
<table >
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
	<td><%= rs1.getString(2) %><br></td>
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
</html>