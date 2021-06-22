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
<form action="Supervisor.jsp"><input type="submit" value="Back"></form><br><br>
<body topmargin="150" leftmargin="300">

<table>

<font size=5>THESIS DETAILS</font>	

<tr>
	<td><b>Student Name</b></td>
	<td><b>Student Id</b></td>
	<td><b>Project Name</b></td>
	<td><b>Evaluator Name</b></td>
	<td><b>Evaluator Id</b></td>
	<td><b>Suitability Score</b></td>
	<td><b>Originality Score</b></td>
	<td><b>Intro Background Score</b></td>
</tr>	

<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		Statement st= conn.createStatement();	
		ResultSet rs0= st.executeQuery("select student_name, student_id, project_name, evaluator_name, evaluator_id, suitability_score, originality_score, intro_bckgrnd_score from thesis_eval where student_id='PDHTC19421'");
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
	<td><%= rs0.getString(8) %> &emsp;</td>
</tr>

<%
		}
%>

<tr>
	<td><b>Problem Statement Score</b></td>
	<td><b>Design Method Score</b></td>
	<td><b>Relevancy Score</b></td>
	<td><b>Language Score</b></td>
	<td><b>Quantum Of Work Score</b></td>
	<td><b>Reference Score</b></td>
	<td><b>Overall Score</b></td>
	<td><b>Award Degree</b></td>
	
</tr>	

<%		
		ResultSet rs1= st.executeQuery("select problem_stmt_score, design_method_score, relevancy_score, language_score, quantum_of_work_score, reference_score, overall_score, award_degree from thesis_eval where student_id='PDHTC19421'");
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
	<td><%= rs1.getString(8) %> &emsp;</td>
</tr>

<%
		}
%>

<tr>
	<td><b>Award Degree After Change</b></td>
	<td><b>Revisions</b></td>
	<td><b>Rejection</b></td>
</tr>	

<%		
		ResultSet rs2= st.executeQuery("select award_degree_after_change, revisions, rejection from thesis_eval where student_id='PDHTC19421'");
		while(rs2.next())
		{
%>

<tr>
	<td><%= rs2.getString(1) %> &emsp;</td>
	<td><%= rs2.getString(2) %> &emsp;</td>
	<td><%= rs2.getString(3) %> </td>
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