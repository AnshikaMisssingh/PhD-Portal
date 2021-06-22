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
		margin-left: 100px;
	}
	th, td{
		padding: 15px;
	}

</style>

<meta charset="ISO-8859-1">
<title>STUDENT DETAILS</title>
</head>


<body background="background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<form action="Student.jsp"><input type="submit" value="Back"></form><br>




<body topmargin="150" leftmargin="300">

<table>

<font size=5>STUDENT ACADEMIC DETAILS</font>	

<tr>
	<td><b>Id</b></td>
	<td><b>Name</b></td>
	<td><b>Research Topic</b></td>
	<td><b>Department Id</b></td>
	<td><b>Eligibility</b></td>
	<td><b>Master Degree College</b></td>
	<td><b>CGPA</b></td>
	<td><b>Passing Year of Masters</b></td>
</tr>	

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();	
		ResultSet rs0= st.executeQuery("select student_id, name, research_topic, department_id, eligibility, master_degree_college, cgpa_or_percentage, passing_year_of_master from student_academic where student_id='PDHTC19421'");
		while(rs0.next())
		{
%>

<tr>
	<td><%= rs0.getString(1) %> &emsp;</td>
	<td><%= rs0.getString(2) %> &emsp;</td>
	<td><%= rs0.getString(3) %> &emsp;</td>
	<td><%= rs0.getString(4) %> &emsp;</td>
	<td><%= rs0.getString(5) %> &emsp;</td>
	<td><%= rs0.getString(6) %> &emsp;</td>
	<td><%= rs0.getString(7) %> &emsp;</td>
	<td><%= rs0.getString(8) %></td>
</tr>

<%
		}
%>

<tr>
	<td><b>Application Date</b></td>
	<td><b>Current Job Status</b></td>
	<td><b>Banasthalite</b></td>
	<td><b>Synopsis Submission</b></td>
	<td><b>Revision</b></td>
	<td><b>Thesis Submission</b></td>
	<td><b>Viva Date</b></td>
	<td><b>Status</b></td>
		
</tr>	

<%		
		ResultSet rs1= st.executeQuery("select application_submission, Current_job_status, Banasthalite, synopsis_submission, revision, thesis_submission, viva_date, status from student_Academic where student_id='PDHTC19421'");
		while(rs1.next())
		{
%>

<tr>
	<td><%= rs1.getString(1) %> &emsp;</td>
	<td><%= rs1.getString(2) %> &emsp;</td>
	<td><%= rs1.getString(3) %> &emsp;</td>
	<td><%= rs1.getString(4) %> &emsp;</td>
	<td><%= rs1.getString(5) %> &emsp;</td>
	<td><%= rs1.getString(6) %> &emsp;</td>
	<td><%= rs1.getString(7) %> &emsp;</td>
	<td><%= rs1.getString(8) %></td>
</tr>

<%
		}
%>
</table>

<table>
<font size=5>STUDENT PERSONAL DETAILS</font>
<tr>
	<td><b>Age</b></td>
	<td><b>DOB</b></td>
	<td><b>Religion</b></td>
	<td><b>Category</b></td>
	<td><b>Father Name</b></td>
	<td><b>Mother Name</b></td>
	<td><b>Correspondence Address</b></td>
</tr>	

<%		
		ResultSet rs2= st.executeQuery("select age, dob, religion, category, father_name, mother_name, corresponding_address from student_personal where student_id='PDHTC19421'");
		while(rs2.next())
		{
%>

<tr>
	<td><%= rs2.getString(1) %> &emsp;</td>
	<td><%= rs2.getString(2) %> &emsp;</td>
	<td><%= rs2.getString(3) %> &emsp;</td>
	<td><%= rs2.getString(4) %> &emsp;</td>
	<td><%= rs2.getString(5) %> &emsp;</td>
	<td><%= rs2.getString(6) %> &emsp;</td>
	<td><%= rs2.getString(7) %><br></td>
</tr>

<%
		}
%>

<tr>
	<td><b>Permanent Address</b></td>
	<td><b>Email</b></td>
	<td><b>Alternate Email</b></td>
	<td><b>Mobile Number</b></td>
	<td><b>Gurdian Mob. No.</b></td>
	<td><b>Hostel Name</b></td>
</tr>	

<%		
		ResultSet rs3= st.executeQuery("select permanent_address, email, alternate_email, mob_no, guardian_mobno, hostel_name from student_personal where student_id='PDHTC19421'");
		while(rs3.next())
		{
%>

<tr>
	<td><%= rs3.getString(1) %> &emsp;</td>
	<td><%= rs3.getString(2) %> &emsp;</td>
	<td><%= rs3.getString(3) %> &emsp;</td>
	<td><%= rs3.getString(4) %> &emsp;</td>
	<td><%= rs3.getString(5) %> &emsp;</td>
	<td><%= rs3.getString(6) %><br></td>
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