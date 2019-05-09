<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String[] cities = { "Mumbai", "Singapore", "Philadelphia" };
	pageContext.setAttribute("myCities", cities);
%>
<!DOCTYPE html>
<html>
<head>
<title>JSTL forEach Demo</title>
</head>
<body>
	<c:forEach var="tempCity" items="${myCities}">
		${tempCity}<br/>
	</c:forEach>
</body>
</html>