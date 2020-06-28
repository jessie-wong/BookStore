<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<link rel="stylesheet" href="/resources/css/header.css">
	<link rel="stylesheet" href="/resources/css/content.css">
	<link rel="stylesheet" href="/resources/css/footer.css">
	<link rel="stylesheet" href="/resources/css/index.css">
</head>
<body>
	<c:import url="head.jsp"></c:import>
	<div id="content">
		 <c:import url="content-left.jsp"></c:import>
		 <c:import url="content-right.jsp"></c:import>
	</div>
	<c:import url="footer.jsp"></c:import>
</body>

</html>
