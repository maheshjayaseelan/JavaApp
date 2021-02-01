<%@ page session="true" %>
<html>
<head>
<title>Sample Application JSP Page</title>
</head>
<body bgcolor=white>

<table border="0">
<tr>
<td align=center>
<img src="images/tomcat.gif">
</td>
<td>
<h1>Sample Application JSP Page</h1>
This is the output of a JSP page that is part of the Hello, World
application.
</td>
</tr>
</table>
<%!int count = 0; %>
<%
Object sCountValue;
//HttpSession session = session.getSession();
sCountValue = session.getAttribute("RequestCount");
if (sCountValue != null)
	count = (Integer)sCountValue;
count = count+1;
session.setAttribute("RequestCount", count);
%>

<%= new String("Request Count : "+count) %>

</body>
</html>
