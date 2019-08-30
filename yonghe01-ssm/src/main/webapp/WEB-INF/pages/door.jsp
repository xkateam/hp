<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
	<head>
		<title></title>
	</head>
	<body>
		<table>
			<c:forEach items="${doorList }" var="d">
			<tr>
				<td>${d.name}</td>
			</tr>
			</c:forEach>
			
		</table>
	</body>
</html>