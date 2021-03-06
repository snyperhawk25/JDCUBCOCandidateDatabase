<%@page import="objects.Candidate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="verify.verifyCanMap"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="objects.CanMap"%>
<%@page import="objects.DataAccessObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating User...</title>
</head>
<body>

<!-- //!@#$ check this file. Originated from addCandidate.jsp -->

<!-- Declared Vars -->
<%!
String name="";
boolean updated=false;
DataAccessObject dao=new DataAccessObject();
CanMap user=new CanMap();
%>

<!-- Session Object Request for Username/Password-->
	<%
	// Grab session object from request.
	session = request.getSession();
	
	//Collect the username (usr) and password (psw), entered by the user, from the session.
	//name = request.getParameter("username");
	//pswd = request.getParameter("password");
	String cid=String.valueOf(session.getAttribute("uid"));
	
	//Clean session of unwanted attributes
	session.removeAttribute("problemList");
	%>
<!-- Attempt to add the Candidate to the db -->
<%
	//collect the elements of the request into a CanMap
	user.put("cid",cid);
	user.put("cFirstName",request.getParameter("firstName"));
	user.put("cLastName", request.getParameter("lastName"));
	//Date Of Birth V1
	//String dob=request.getParameter("dateOfBirth");
	//Timestamp ts=Candidate.formTimestamp(dob); //see if formTimestamp
	
	//v2
	Integer year=Integer.parseInt(request.getParameter("yearOfBirth").toString());
	Integer month=Integer.parseInt(request.getParameter("monthOfBirth").toString());
	Integer day=Integer.parseInt(request.getParameter("dayOfBirth").toString());
	Timestamp ts=Candidate.formTimestamp(year,month,day);
	
	user.put("dob", ts.toString());  //using toString
	user.put("cYear", request.getParameter("yearOfStudy"));
	user.put("gender", request.getParameter("gender"));
	user.put("degree", request.getParameter("area"));
	user.put("cEmail", request.getParameter("emailAddress"));
	user.put("cResumeLink", request.getParameter("resumeHyperlink"));
	user.put("cPhoneNumber", request.getParameter("phoneNumber"));
	user.put("cDescription", request.getParameter("briefBiography"));
	user.put("cJobHistory", request.getParameter("jobHistory"));
	
	//user.put("cDateCreated", Timestamp.valueOf(LocalDateTime.now()).toString());
	//user.put("cDateLastModified", Timestamp.valueOf(LocalDateTime.now()).toString()); //didn't seem to work: Timestamp.valueOf("1000-1-1 00:00:00")
	
	//verify CanMap
	ArrayList<String> problems=verifyCanMap.verify(user);
	
	//update
	if(problems.isEmpty() || problems==null){
		updated=dao.updateCandidate(user);
	}else{
		//Add problems to session attribute
		String problemString="";
		for(String p: problems){
			problemString+="~ "+p+"\n";
		}
		session.setAttribute("problemList", problemString);
	}
%>

<!-- Redirect To Login Page -->
<% 
if(updated){
	out.println("<h1> Thank you "+request.getParameter("firstName")+" "+request.getParameter("lastName")+"! Information Updated.</h1>" ); 
	//request.getRequestDispatcher("../../protectedPage.jsp").forward(request, response); //This works only once.
	response.sendRedirect("../../protectedPage.jsp"); //This works for double
}else{
	session.setAttribute("UpdateMessage", "Some of the information you entered was not valid. Please try again.");
	out.println("<h1>Error.</h1>" ); 
	response.sendRedirect("editCandidate.jsp");
}
%>

</body>
</html>
<!-- 
${pageContext.request.contextPath}
 -->