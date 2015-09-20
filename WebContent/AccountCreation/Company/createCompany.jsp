<%@page import="objects.DataAccessObject"%>

<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<!-- CSS reference -->
<link href='${pageContext.request.contextPath}/css/AccountCreation/Company/createCompany.css' rel='stylesheet' type='text/css'>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Create Your Profile</title>

</head>
<body>

<h2>Create Your Profile!</h2>
<h3>
We just need some basic information in order to create your account with us.<br>
</h3>
<p>(<span style = "color:red">*</span> - required)</p>

<!-- Variables -->
<%! DataAccessObject dao=new DataAccessObject(); %>
	
<!-- Session Object Request for Username/Password-->
	<%
	// Grab session object from request.
	session = request.getSession();
	//Collect the username (uname) entered by the user, from the session.
	String coid=String.valueOf(session.getAttribute("coid"));
	
	//Clean session of unwanted attributes
	session.removeAttribute("authenticatedUser");
	session.removeAttribute("CompanyMessage");
	%>

<!-- Print Prior Error Account Message If Needed -->
<%
	if (session.getAttribute("CompanyMessage") != null){
		out.println("<h5 id='Error'>" + session.getAttribute("CompanyMessage").toString() + "</h5>");
	}

	if(session.getAttribute("problemList")!= null){
		out.println("<h5 id='Error2'>" + session.getAttribute("problemList").toString() + "</h5>");
	}
%>

<!-- Form -->
<form name="NewCompanyForm" action="addCompany.jsp" method=POST>
	<table width="70%">
	<tr>
		<td> Company ID:</td>
		<td><%out.println(coid);%></td>
	</tr>
	<tr>
		<td>Company Name:<span style = "color:red">*</span></td>
		<td><input type='text' name='coName' value=''></td>
	</tr>
	<tr>
		<td>Established:</td>
		<td>
		<select name='coYearEstablished'>
			<option value='1900'>1900</option>
			<option value='1901'>1901</option>
			<option value='1902'>1902</option>
			<option value='1903'>1903</option>
			<option value='1904'>1904</option>
			<option value='1905'>1905</option>
			<option value='1906'>1906</option>
			<option value='1907'>1907</option>
			<option value='1908'>1908</option>
			<option value='1909'>1909</option>
			<option value='1910'>1910</option>
			<option value='1911'>1911</option>
			<option value='1912'>1912</option>
			<option value='1913'>1913</option>
			<option value='1914'>1914</option>
			<option value='1915'>1915</option>
			<option value='1916'>1916</option>
			<option value='1917'>1917</option>
			<option value='1918'>1918</option>
			<option value='1919'>1919</option>
			<option value='1920'>1920</option>
			<option value='1921'>1921</option>
			<option value='1922'>1922</option>
			<option value='1923'>1923</option>
			<option value='1924'>1924</option>
			<option value='1925'>1925</option>
			<option value='1926'>1926</option>
			<option value='1927'>1927</option>
			<option value='1928'>1928</option>
			<option value='1929'>1929</option>
			<option value='1930'>1930</option>
			<option value='1931'>1931</option>
			<option value='1932'>1932</option>
			<option value='1933'>1933</option>
			<option value='1934'>1934</option>
			<option value='1935'>1935</option>
			<option value='1936'>1936</option>
			<option value='1937'>1937</option>
			<option value='1938'>1938</option>
			<option value='1939'>1939</option>
			<option value='1940'>1940</option>
			<option value='1941'>1941</option>
			<option value='1942'>1942</option>
			<option value='1943'>1943</option>
			<option value='1944'>1944</option>
			<option value='1945'>1945</option>
			<option value='1946'>1946</option>
			<option value='1947'>1947</option>
			<option value='1948'>1948</option>
			<option value='1949'>1949</option>
			<option value='1950'>1950</option>
			<option value='1951'>1951</option>
			<option value='1952'>1952</option>
			<option value='1953'>1953</option>
			<option value='1954'>1954</option>
			<option value='1955'>1955</option>
			<option value='1956'>1956</option>
			<option value='1957'>1957</option>
			<option value='1958'>1958</option>
			<option value='1959'>1959</option>
			<option value='1960'>1960</option>
			<option value='1961'>1961</option>
			<option value='1962'>1962</option>
			<option value='1963'>1963</option>
			<option value='1964'>1964</option>
			<option value='1965'>1965</option>
			<option value='1966'>1966</option>
			<option value='1967'>1967</option>
			<option value='1968'>1968</option>
			<option value='1969'>1969</option>
			<option value='1970'>1970</option>
			<option value='1971'>1971</option>
			<option value='1972'>1972</option>
			<option value='1973'>1973</option>
			<option value='1974'>1974</option>
			<option value='1975'>1975</option>
			<option value='1976'>1976</option>
			<option value='1977'>1977</option>
			<option value='1978'>1978</option>
			<option value='1979'>1979</option>
			<option value='1980'>1980</option>
			<option value='1981'>1981</option>
			<option value='1982'>1982</option>
			<option value='1983'>1983</option>
			<option value='1984'>1984</option>
			<option value='1985'>1985</option>
			<option value='1986'>1986</option>
			<option value='1987'>1987</option>
			<option value='1988'>1988</option>
			<option value='1989'>1989</option>
			<option value='1990'>1990</option>
			<option value='1991'>1991</option>
			<option value='1992'>1992</option>
			<option value='1993'>1993</option>
			<option value='1994'>1994</option>
			<option value='1995'>1995</option>
			<option value='1996'>1996</option>
			<option value='1997'>1997</option>
			<option value='1998'>1998</option>
			<option value='1999'>1999</option>
			<option value='2000'>2000</option>
			<option value='2001'>2001</option>
			<option value='2002'>2002</option>
			<option value='2003'>2003</option>
			<option value='2004'>2004</option>
			<option value='2005'>2005</option>
			<option value='2006'>2006</option>
			<option value='2007'>2007</option>
			<option value='2008'>2008</option>
			<option value='2009'>2009</option>
			<option value='2010'>2010</option>
			<option value='2011'>2011</option>
			<option value='2012'>2012</option>
			<option value='2013'>2013</option>
			<option value='2014'>2014</option>
			<option value='2015' selected='selected'>2015</option>
			<option value='2016'>2016</option>
			<option value='2017'>2017</option>
			<option value='2018'>2018</option>
			<option value='2019'>2019</option>
			<option value='2020'>2020</option>
			<option value='2021'>2021</option>
			<option value='2022'>2022</option>
			<option value='2023'>2023</option>
			<option value='2024'>2024</option>
			<option value='2025'>2025</option>
			<option value='2026'>2026</option>
			<option value='2027'>2027</option>
			<option value='2028'>2028</option>
			<option value='2029'>2029</option>
			<option value='2030'>2030</option>
			<option value='2031'>2031</option>
			<option value='2032'>2032</option>
			<option value='2033'>2033</option>
			<option value='2034'>2034</option>
			<option value='2035'>2035</option>
			<option value='2036'>2036</option>
			<option value='2037'>2037</option>
			<option value='2038'>2038</option>
			<option value='2039'>2039</option>
			<option value='2040'>2040</option>
			<option value='2041'>2041</option>
			<option value='2042'>2042</option>
			<option value='2043'>2043</option>
			<option value='2044'>2044</option>
			<option value='2045'>2045</option>
			<option value='2046'>2046</option>
			<option value='2047'>2047</option>
			<option value='2048'>2048</option>
			<option value='2049'>2049</option>
			<option value='2050'>2050</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>Company Address:</td>
		<td><input type="text" name='coAddress' value=''></td>
	</tr>
	<tr>
		<td>Telephone:</td>
		<td><input type="text" name='coTel' value=''></td>
	</tr>
	<tr>	
		<td>Company Email:</td>
		<td><input type="text" name='coEmail' value=''></td>
	</tr>
	<tr>
		<td>Company Contact:</td>
		<td><input type="text" name='coContactName' value=''></td>
	</tr>
	<tr>
		<td>Company Website:</td>
		<td><input type="text" name='coUrl' value=''></td>
	</tr>
	<tr>
		<td>Company Social:</td>
		<td><input type="text" name='coSocial' value=''></td>
	</tr>
	<tr>
		<td>Company Description:</td>
		<td><textarea rows="5" cols="80" name='coDescription'></textarea>
	</tr>
	</table>
		
	<br>
	<input class='myButton' type="submit" name="submit" value="Create User">
</form>

</body>
</html>
