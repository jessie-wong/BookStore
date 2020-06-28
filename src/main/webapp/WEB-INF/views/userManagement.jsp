<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="net.vicp.zyl_me.model.UsersBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%
	/* HttpSession session_ = request.getSession();
	UserBean userBean = (UserBean) session.getAttribute("userBean"); */
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	HttpSession session_u = request.getSession();
	UsersBean userbean = (UsersBean) session_u.getAttribute("user");
	if (userbean == null) {
		request.getRequestDispatcher("/user/myAccount")
				.forward(request, response);
		return;
	} else {
%>
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/rootmanagement.css">
<link rel="stylesheet" href="/resources/css/deletebooks.css">

</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<%
				if (userbean.getUsertype().equals("user")) {
						out.println("<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>您不是管理员不能进行该操作！</div>");
					} else {
			%>
			<div class="gray">
				<img src="/resources/images/bullet1.gif"> 用户管理
			</div>
			<!-- 所有用户 -->

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
			<%
				}
				}
			%>

			</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
