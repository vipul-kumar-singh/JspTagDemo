<%@page import="java.util.Date"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP Tag Test Demo</title>
</head>
<body>
	<c:set var="stuff" value="<%=new Date()%>"></c:set>

	Time on the server ${stuff}
</body>
</html>