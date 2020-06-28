<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="net.vicp.zyl_me.model.UsersBean"%>
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/deletebooks.css">

</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<c:choose>
				<c:when test="${user.usertype eq 'user'}">
					<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>您不是管理员不能进行该操作！</div>
				</c:when>
				<c:otherwise>
					<div class="gray">
						<img src="/resources/images/bullet1.gif"> 删除书籍
					</div>
					<!-- 要删除书籍搜索框 -->
					<div id="deletesearch">
						<form action="/books/searchDeleteBooks" method="post">
							<input type="text" placeholder="请输入您要搜索的书籍名" name="bookname">
							<button type="submit"></button>
						</form>
					</div>
					<!-- 待删除书籍 -->
					<c:if test="${error != null}">
					<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>${error}</div>
					</c:if>
					<!-- 显示所有书籍 -->
					<div class="deletebook">
						<form action="/books/deleteBook" method="post" name="form">
							<table class="bookshow">
								<tr>
									<th></th>
									<th>ID</th>
									<th>书名</th>
								</tr>
								<c:forEach items="${bookslist}" var="goodsbean">
								<tr>
									<td><input type="checkbox" value="${goodsbean.goodsid}" name="deletebox"></td>
									<td><span>${goodsbean.goodsid}</span></td>
									<td><span>${goodsbean.goodsname}</span></td>
								</tr>
								</c:forEach>
							</table>
							<button type="submit"></button>
						</form>
					</div>
					<!-- 翻页标记 -->
					<jsp:include page="page.jsp"></jsp:include>
				</c:otherwise>
			</c:choose>
			</div>
			<jsp:include page="content-right.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>