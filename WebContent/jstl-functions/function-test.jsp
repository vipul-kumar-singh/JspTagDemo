<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Functions</title>
</head>
<body>
	<c:set var="data" value="luv2code"></c:set>

	Length of the string is	<b>${data}</b> = ${fn:length(data)}

	<br /><br/>
	 
	UpperCase of the string is <b>${data}</b> = ${fn:toUpperCase(data)}
	
	<br/><br/>
	
	Does the string <b>${data}</b> starts with <b>luv</b>? =  ${fn:startsWith(data,"luv")}
</body>
</html>