<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> LOGIN SUCCESSFULL</title>
</head>
<style>
table{
		margin-left: 100px;
	}
	tr, td{
		padding: 10px;
	}

</style>
<body topmargin=140>
<body background = "background.jpeg" style="background-repeat:no-repeat; background-size:100%">
<br><br>
	<form action="Evaluator.jsp">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Back"></form>
	&emsp;&emsp;&emsp;&emsp;<a href= "http://www.banasthali.org/banasthali/wcms/en/home/index.html"><input type="submit" value="Go To HomePage"></a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<font size=6><font color="power blue"><b>Thesis Marks</b></font></font></form><br>
	&emsp;&emsp;&emsp;&emsp;
	<br>
	<center>
	
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Either fill form or Upload the document.</b><br><br>
	<form action="FileUploadHandler" enctype="multipart/form-data" method="post">
	&emsp;&emsp;&emsp;&emsp;&emsp;Enter File Name</font> :<input type="text" name="file_name"><br><br>
 	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Select : <input type="file" name="file2" /><br><br>
 	&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Upload" /><br><br>
</form> 

<%
 String file_name=(String)request.getParameter("filename");
 if(file_name!=null){
 out.println(file_name+" File uploaded successfuly");
 }
 %>
 
	<table>
	<form action="ThesisServlet" method="post">
	<tr><td>Student Name<font color="red">*</font> :</td> <td><input type="text" name="sname" required="required"></td></tr>
	<tr><td>Student ID<font color="red">*</font> :</td> <td> <input type="text" name="sid" required="required"></td></tr>
	<tr><td>Project Title<font color="red">*</font> :</td> <td> <input type="text" name="title" rwquired="required"></td></tr>
	<tr><td>Evaluator Name<font color="red">*</font> :</td> <td> <input type="text" name="ename" required="required"></td></tr>
	<tr><td>Evaluator ID<font color="red">*</font> :</td> <td> <input type="text" name="eid" required="required"></td></tr>
	
	</table>
	<b>Kindly Evaluate the candidates proposal on the scale of 1 to 5<br>
	(1: Poor, 2: Average, 3: Good, 4: Very Good, 5: Excellent) for each of the following criteria:</b><br><br>
	Suitability of the topic in context of the proposed research<font color="red">*</font> :<br><br> 
	<input type="radio" name="suitability" value="5" required="required">5
	<input type="radio" name="suitability" value="4" required="required">4
	<input type="radio" name="suitability" value="3" required="required">3
	<input type="radio" name="suitability" value="2" required="required">2
	<input type="radio" name="suitability" value="1" required="required">1
	<br><br>
	
	Originality of the proposed research<font color="red">*</font> : <br><br> 
	<input type="radio" name="originality" value="5" required="required">5
	<input type="radio" name="originality" value="4" required="required">4
	<input type="radio" name="originality" value="3" required="required">3
	<input type="radio" name="originality" value="2" required="required">2
	<input type="radio" name="originality" value="1" required="required">1
	<br><br>
	
	Introductory background and Literature review<font color="red">*</font> : <br><br> 
	<input type="radio" name="introductory" value="5" required="required">5
	<input type="radio" name="introductory" value="4" required="required">4
	<input type="radio" name="introductory" value="3" required="required">3
	<input type="radio" name="introductory" value="2" required="required">2
	<input type="radio" name="introductory" value="1" required="required">1
	<br><br>
	
	Problem statement/objectives<font color="red">*</font> : <br><br> 
	<input type="radio" name="probstmt" value="5" required="required">5
	<input type="radio" name="probstmt" value="4" required="required">4
	<input type="radio" name="probstmt" value="3" required="required">3
	<input type="radio" name="probstmt" value="2" required="required">2
	<input type="radio" name="probstmt" value="1" required="required">1
	<br><br>
	
	Appropriateness of research design and methodology<font color="red">*</font> : <br><br> 
	<input type="radio" name="redesign" value="5" required="required">5
	<input type="radio" name="redesign" value="4" required="required">4
	<input type="radio" name="redesign" value="3" required="required">3
	<input type="radio" name="redesign" value="2" required="required">2
	<input type="radio" name="redesign" value="1" required="required">1
	<br><br>
	
	Relevance to society/economy/environment/health<font color="red">*</font> : <br><br> 
	<input type="radio" name="relevance" value="5" required="required">5
	<input type="radio" name="relevance" value="4" required="required">4
	<input type="radio" name="relevance" value="3" required="required">3
	<input type="radio" name="relevance" value="2" required="required">2
	<input type="radio" name="relevance" value="1" required="required">1
	<br><br>
	
	Language of the proposal<font color="red">*</font> : <br><br> 
	<input type="radio" name="language" value="5" required="required">5
	<input type="radio" name="language" value="4" required="required">4
	<input type="radio" name="language" value="3" required="required">3
	<input type="radio" name="language" value="2" required="required">2
	<input type="radio" name="language" value="1" required="required">1
	<br><br>
	
	Quantum of work to engage student for 3 years<font color="red">*</font> : <br><br> 
	<input type="radio" name="quantumwork" value="5" required="required">5
	<input type="radio" name="quantumwork" value="4" required="required">4
	<input type="radio" name="quantumwork" value="3" required="required">3
	<input type="radio" name="quantumwork" value="2" required="required">2
	<input type="radio" name="quantumwork" value="1" required="required">1
	<br><br>
	
	References (relevant and according to international standard format<font color="red">*</font>) : <br><br> 
	<input type="radio" name="references" value="5" required="required">5
	<input type="radio" name="references" value="4" required="required">4
	<input type="radio" name="references" value="3" required="required">3
	<input type="radio" name="references" value="2" required="required">2
	<input type="radio" name="references" value="1" required="required">1
	<br><br>
	
	Overall quality of the proposal<font color="red">*</font> : <br><br> 
	<input type="radio" name="overall" value="5" required="required">5
	<input type="radio" name="overall" value="4" required="required">4
	<input type="radio" name="overall" value="3" required="required">3
	<input type="radio" name="overall" value="2" required="required">2
	<input type="radio" name="overall" value="1" required="required">1
	<br><br>
	
	<b>Recommendations (Kindly tick appropriately):</b> <br><br>
	The Candidate may be awarded the Degree The Doctor of Philosophy subject to his/her passing the viva-voce examination<font color="red">*</font> <br>
	<input type="radio" name="award" value="YES" required="required">YES
	<input type="radio" name="award" value="NO" required="required">NO
	<br><br>
	The Candidate may be awarded the Degree of Doctor of Philosophy subject to the condition that the corrections/modifications suggested<br>by me
	have been incorporated in the thesis and duly certified by the supervisor at the time of commencement of the viva-voce 
	examination<font color="red">*</font> <br>
	<input type="radio" name="corrections" value="YES" required="required">YES
	<input type="radio" name="corrections" value="NO" required="required">NO
	<br><br>
	The thesis may be sent back to the candidate for carrying out revision<font color="red">*</font> <br>  
	<input type="radio" name="revise" value="YES" required="required">YES
	<input type="radio" name="revise" value="NO" required="required">NO
	<br><br>
	The thesis may be rejected<font color="red">*</font> <br> 
	<input type="radio" name="reject" value="YES" required="required">YES
	<input type="radio" name="reject" value="NO" required="required">NO
	<br><br>
	
	
	<input type="submit" value="Submit">
	</form>
	</center>

	
</body>
</body>
</html>
