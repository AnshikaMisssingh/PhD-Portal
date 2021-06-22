<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> LOGIN SUCCESSFULL</title>
</head>
<body topmargin=200>
<body background = "background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<br><br>
	<form action="Evaluator.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Back"></form>
	<form action="changepass.jsp">&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Change Password">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<font size=6><font color="power blue"><b>Thesis Marks</b></font></font></form><br>
	<form action="Log.jsp">&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;<input type="submit" value="Logout"></form><br>
	&emsp;&emsp;&emsp;&emsp;<a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a>
	<br>
	<center>
	<form action="Evaluator.jsp">
	Candidate Name : <input type="text"><br><br>
	Student ID : <input type="text"><br><br>
	Project Title : <input type="text"><br><br>
	Evaluator Name : <input type="text"><br><br>
	Evaluator ID : <input type="text"><br><br>
	</form>
	<b>Either fill form or Upload the document.</b><br><br>
	<form action="FileUploadHandler" enctype="multipart/form-data" method="post">
	Enter File Name : <input type="text" name="file_name"><br><br>
 	Select : <input type="file" name="file2" /><br><br>
 	<input type="submit" value="Upload" /><br><br>
</form> 
 <%
 String file_name=(String)request.getParameter("filename");
 if(file_name!=null){
 out.println(file_name+" File uploaded successfuly");
 }
 %>
 	<form action="Evaluator.jsp">
	<b>Kindly Evaluate the candidates proposal on the scale of 1 to 5<br>
	(1: Poor, 2: Average, 3: Good, 4: Very Good, 5: Excellent) for each of the following criteria:</b><br><br>
	Suitability of the topic in context of the proposed research :<br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Originality of the proposed research : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Introductory background and Literature review : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Problem statement/objectives : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Appropriateness of research design and methodology : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Relevance to society/economy/environment/health : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Language of the proposal : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Quantum of work to engage student for 3 years : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	References (relevant and according to international standard format) : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	Overall quality of the proposal : <br><br> <input type="radio" value="5"><label for="5">5</label>
	<input type="radio" value="4"><label for="4">4</label><input type="radio" value="3"><label for="3">3</label>
	<input type="radio" value="2"><label for="2">2</label><input type="radio" value="1"><label for="1">1</label><br><br>
	<b>Recommendations (Kindly tick the appropriate box):</b> <br><br>
	The Candidate may be awarded the Degree the Doctor of Philosophy subject to his/her passing the viva-voce examination <input type="checkbox"><br><br>
	The Candidate may be awarded the Degree of Doctor of Philosophy subject to the condition that the corrections/modifications suggested<br>by me
	have been incorporated in the thesis and duly certified by the supervisor at the time of commencement of the viva-voce 
	examination <input type="checkbox"><br><br>
	The thesis may be sent back to the candidate for carrying out revision in the light of the comments I have made in my 
	report <input type="checkbox"><br><br>
	The thesis may be rejected : <input type="checkbox"><br><br>
	<input type="submit" value="Submit">
	</form>
	</center>

	
</body>
</body>
</html>
