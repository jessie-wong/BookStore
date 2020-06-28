<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String error = request.getParameter("error");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/register.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
        <div id="content-left">
            <div class="gray">
                <img src="/resources/images/bullet1.gif">注册
            </div>
            <div id="reg_top">
                <div class="item">
                    <div class="box_top"></div>
                    <div class="box_center">
                        <div class="orange">致辞:</div>
                        <p class="details">
                        欢迎加入Book Store商店，在这里你可以买到很多很多好玩又好看的书。不仅能增加你的知识，还能边看边玩。
                        </p>
                    </div>
                    <div class="box_bottom"></div>
                </div>
            </div>
            <div id="register">
                <c:if test="${error != null}">
                    <div style='font-size:15px;margin:3px 0 3px 1px;color:red;'>${error}</div>
                </c:if>
                <form action="/user/register" method="post">
                    <div class="reg_title">填写你的信息</div>
                    <div class="row1">
                        <label>用户名<span style="color: red; ">(必填)</span>:</label>&nbsp;
                        <input name="username">
                    </div>
                    <div>
                        <input type="radio" name="usertype" value="user" checked="checked"/>用户&nbsp;
                        <input type="radio" name="usertype" value="rooter"  />管理员
                    </div>
                    <div class="row2">
                        <label>密&nbsp;&nbsp;&nbsp;码<span style="color: red; ">(必填)</span>:</label>&nbsp;
                        <input type="password" name="password">
                    </div>
                    <div class="row2">
                        <label>真实姓名:</label>&nbsp;
                        <input name="truename">
                    </div>
                    <div class="row2">
                        <label>邮&nbsp;&nbsp;&nbsp;箱:</label>&nbsp;
                        <input name="email">
                    </div>
                    <div class="row2">
                        <label>手&nbsp;&nbsp;&nbsp;机:</label>&nbsp;
                        <input name="phone">
                    </div>
                    <div class="row2">
                        <label>地&nbsp;&nbsp;&nbsp;址:</label>&nbsp;
                        <input name="address">
                    </div>
                    <div class="row4">
                        <input type="submit" value="注册">
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
