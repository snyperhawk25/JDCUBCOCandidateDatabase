<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Candidate Database</title>

<style type="text/css">
body{
	font-family: Roboto;
	background-color: #F9F9F9; /* off white*/
}
td{
	padding: 5px;
	
	/*testing purposes only*/
	/*border: 1px solid #000000;*/
}
.divBox
{
    width: 120px;
    height: 60px;
    border: 2px solid #5F5F5F;
    background-color: #629DD1; /*JDCWUBCO blue*/
    font-weight: 700;
}
.divBox a
{
    width: 100%;
    height: 100%;
    text-align: center;
    text-decoration: none;
    display: block;
    color: #FFFFFF;
}
.divBox a:HOVER {
	/*
	background-color: #F0F0F0; /*light grey*/
	background-color: #A1C4E3; /*light JDC blue*/
}
.divBox a:VISITED a:ACTIVE a:AFTER {
	text-decoration: none;
}
</style>
</head>

<body>
<h2><u>JDC West UBC Okanagan Candidate Database</u></h2>

<h3> Please select one of the below options:</h3>

<table id='table'>
<tr>
	<td>
		<div class="divBox">
			<a href="login.jsp">Login</a>
		</div>
	</td>
	<td>
		Already a user? Log in to your account by clicking "Login".
	</td>
</tr>
<tr>
	<td>
		<div class="divBox">
		<a href="Recovery/recoveryLogin.jsp">Forgot Password</a>
		</div>
	</td>
	<td>
		Forgotten the password for your account? Click on "Forgot Password" to begin to reset your password.
	</td>
</tr>
<tr>
	<td>
		<div class="divBox">
		<a href="AccountCreation/Candidate/createCandidateCredentials.jsp">New Candidate</a>
		</div>
	</td>
	<td>
		Are you looking to start a profile, and have your resume viewed by companies looking to hire? Click on "New Candidate" to get started creating your profile.
	</td>
</tr>

<!-- Change Below to Company -->
<tr>
	<td>
		<div class="divBox">
		<a href="AccountCreation/Candidate/createCandidateCredentials.jsp">New Company</a>
		</div>
	</td>
	<td>
		Are you a corporate sponsor of JDC West UBC Okanagan, or looking to access the potential of JDC West UBC Okanagan's candidate pool? Click on "New Company" to begin creating an account for your organization.
	</td>
</tr>
</table>
</body>


</html>

<!-- 
JSP using MVC and JDBC
http://stackoverflow.com/questions/5003142/jsp-using-mvc-and-jdbc/5003701#5003701

Should eventually use a java.util.Properties file to connect to database instead of hardcoded user/password

PHPMyAdmin needs 2 versions of a user: host %, and host localhost. See user 'iamroot'

[DONE] Set up online repo.
 -->