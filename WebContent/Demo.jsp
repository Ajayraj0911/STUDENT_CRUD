<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${error}
<form action="DemoController" method="post">
	<input type="text" name="txtName" placeholder="enter name"><input 
		type="submit" value="SUBMIT">
</form>
</body>
</html>