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
	<c:set var="Date" value="<%=new java.util.Date()%>"></c:set>
	<fmt:formatDate value="${Date }" type="time"/>
	<br>
	<fmt:formatDate value="${Date }" type="both"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="short" timeStyle="short"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="medium" timeStyle="medium"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="short" timeStyle="short"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="medium" timeStyle="medium"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="long" timeStyle="long"/>
	<br>
	<fmt:formatDate value="${Date }" type="both" dateStyle="long" timeStyle="long"/>
	
	
	
</body>
</html>