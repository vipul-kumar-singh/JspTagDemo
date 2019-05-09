<%@page import="java.util.*,com.jsptagdemo.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	List<Student> data = new ArrayList<>();
	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "White", true));

	pageContext.setAttribute("myStudents", data);
%>
<!DOCTYPE html>
<html>
<head>
<title>If Student Test</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gold Customer</th>
		</tr>
		<c:forEach var="tempStudent" items="${myStudents}">
			<tr>
				<td>${tempStudent.firstName}</td>
				<td>${tempStudent.lastName}</td>
				<td align="center">
					<c:if test="${tempStudent.goldCustomer}">
						Special Discount : 20% off
					</c:if>
					<c:if test="${not tempStudent.goldCustomer}">
						-
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>