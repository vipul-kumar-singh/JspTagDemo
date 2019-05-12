<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- if theLocale is not empty, then read theLocale param sent by links, else read locale sent by browser http request -->
<c:set 
var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session"/>

<fmt:setLocale value="${theLocale}" />
<fmt:setBundle basename="com.jsptagdemo.i18n.resources.mylabels" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP - JSTL i18n tags demo</title>
</head>
<body>

	<a href="i18n-messages-test.jsp?theLocale=en_US">English (US))</a> | 
	<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a> | 
	<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE))</a>
	<hr>
	<fmt:message key="label.welcome"/><br/><br/>
	<fmt:message key="label.firstname"/> : <i>John</i><br/>
	<fmt:message key="label.lastname"/> : <i>Doe</i><br/><br/>
	<fmt:message key="label.greeting"/><br/><br/>
	<hr>
	Selected Locale: ${theLocale}
</body>
</html>