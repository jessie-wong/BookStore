<%@page import="net.vicp.zyl_me.model.UsersBean"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
<link rel="stylesheet" href="css/deletebooksshow.css">
</head>
<body>
	<c:if test="${error != null}">
		<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>${error}</div>
	</c:if>
	<form action="/user/deleteUser" method="post">
		<table class="bookshow">
			<tr>
				<th></th>
				<th>用户名</th>
			</tr>
			<c:forEach items="${userlist}" var="usersbean">
			<tr>
				<td><input type="checkbox" value="${usersbean.username}"
					name="deletebox"></td>
				<td><span>${usersbean.username}</span></td>
			</tr>
			</c:forEach>
		</table>
		<input type="submit" value="删除">
	</form>
</body>

</html>
