
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"> </script>

<div id="header">
	<div class="blank">
		<div id="container">
			<div class="search bar">
				<form action="/books/searchBooks" method="post">
					<input type="text" placeholder="请输入您要搜索的书籍名" style="border:2px solid #d3886a;" name="bookname">
					<button type="submit"></button>
				</form>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${user != null}">
			<div class="welcome">
				<a href="/user/myAccount">欢迎你，
					<c:if test="${'rooter' == user.usertype}">
						管理员
					</c:if>
						${user.username}
				</a>
				<a href="/user/logout">注销</a>
			</div>
		</c:when>
		<c:otherwise>
			<div id="login">
				<form action="/user/login" method="post">
					<div>
						账号: <input name="username">
					</div>
					<div>
						密码: <input name="password" type="password">
					</div>
					<div>
						<input type="radio" name="usertype" value="user" checked="checked"/>用户&nbsp;
						<input type="radio" name="usertype" value="rooter"  />管理员
					</div>
					<div id="denglu">
						<input type="submit" value="登陆">
					</div>
				</form>
			</div>
		</c:otherwise>
	</c:choose>
	<div id="menu">
		<ul>
			<li><a href="/index">主页</a></li>
			<li><a href="/about">关于</a></li>
			<li><a href="/books/allbooks">书籍</a></li>
			<c:if test="${user != null && user.usertype == 'rooter'}">
				<li><a href="/books/insertBook">管理员界面</a>
					<ul>
						<li><a href="/books/insertBook">添加书籍</a></li>
						<li><a href="/books/deleteBook">删除书籍</a></li>
						<%-- <li><a href="/user/userManagement">用户管理</a></li> --%>
					</ul>
				</li>
			</c:if>
			<li><a href="/user/myAccount">我的账号</a></li>
			<li><a href="/user/register">注册</a></li>
			<%-- <li><a href="contact.jsp">留言</a></li> --%>
		</ul>
	</div>
</div>
<script>
	$(document).ready(function () {
		var curr_location = location.href.toLocaleLowerCase();
		$("#menu ul li").each(function () {

			//看当前的a标签的href在当前location中存不存在
			var curr_a = $(this).children("a").attr("href").toLocaleLowerCase();

			if (curr_location.indexOf(curr_a) != -1 && curr_a != "") {
				//从当前location标签匹配到了当前a
				//此处控制选中项的样式
				$(this).children("a").addClass("selected");
			}else{
				$(this).children("a").removeClass("selected");
			}
		});
	})
</script>