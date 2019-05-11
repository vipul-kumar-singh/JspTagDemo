<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Functions : Split and Join</title>
</head>
<body>
	<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>
	
	<h3>Split Demo</h3>
	
	<c:set var="citiesArray" value="${fn:split(data,',')}"/>
	
	<c:forEach var="tempCity" items="${citiesArray}">
		${tempCity}<br/>
	</c:forEach>
	<br/><br/>
	
	<h3>Split Demo</h3>
	
	<c:set var="joinedData" value="${fn:join(citiesArray,'*')}"/>
	
	Result of joining : ${joinedData} .
	
</body>
</html>