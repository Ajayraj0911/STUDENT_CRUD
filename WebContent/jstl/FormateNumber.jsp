 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="salary" value="987654.3210"></c:set>
<ul>
	<li><fmt:formatNumber value="${salary }" type="currency"></fmt:formatNumber></li>
	<li><fmt:formatNumber value="${salary }" type="number" groupingUsed="true"></fmt:formatNumber></li>
	<li><fmt:formatNumber value="${salary }" type="number" maxIntegerDigits="2"></fmt:formatNumber></li>
	<li><fmt:formatNumber value="${salary }" type="percent" maxIntegerDigits="7"></fmt:formatNumber></li>
	<li><fmt:formatNumber value="${salary }" type="number" pattern="#.#$"></fmt:formatNumber></li>
	
</ul>
</body>
</html>