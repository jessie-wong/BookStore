<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/myaccount.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="/resources/images/bullet1.gif">我的账户
			</div>
			<c:choose>
				<c:when test="${user == null}">
					<div id="loginlogin">
						<form action="/user/login" method="post">
							<c:choose>
								<c:when	test="${info == 'error'}">
									<div id = "error" style='font-size:15px;margin:3px 0 3px 1px;color:red;'>用户名或密码错误!</div>
								</c:when>
								<c:otherwise>
									<div style='font-size:15px;margin:3px 0 3px 1px;color:red;'>请先登录！</div>
								</c:otherwise>
							</c:choose>
							<div class="login_title">登入你的账户</div>
							<div class="row1">
								<label>用户名:</label>&nbsp; <input name="username">
							</div>
							<div class="row2">
								<label>密&nbsp;码:</label>&nbsp; <input type="password"	name="password" >
							</div>
							<div>
								<input type="radio" name="usertype" value="user" checked="checked" />用户&nbsp;
								<input type="radio" name="usertype" value="rooter" />管理员
							</div>
							<div class="row3">
								<input type="checkbox" name="remember">记住我
							</div>
							<div class="row4">
								<input type="submit" value="登陆">
							</div>
							<a href="/user/register" style="margin: auto 120px;"><input
								type="button" value="注册"></a>
						</form>
					</div>
				</c:when>
				<c:otherwise>
					<div id="myaccount">
						<div class="item">
							<div class="">
								<table>
									<tr>
										<td class="left">我的账号:</td><td><span class="username">${user.username}</span>
										</td>
									</tr>
									<tr>
										<td class="left">真实姓名:</td><td>${user.truename}</td>
									</tr>
									<tr>
										<td class="left">电子邮件:</td><td>${user.email}</td>
									</tr>
									<tr>
										<td class="left">电话号码:</td><td>${user.phone}</td>
									</tr>
									<tr>
										<td class="left">用户住址:</td><td>${user.address}</td>
									</tr>
									<tr>
										<td colspan="2" class="imgtd"></td>
									</tr>
								</table>
								<!--<a href="updateMyAccount.jsp">修改个人信息</a>-->
							</div>
						</div>
					</div>
					<img src="/resources/images/bookstore.png" class="touming">
				</c:otherwise>
			</c:choose>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
