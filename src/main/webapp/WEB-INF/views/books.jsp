<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/books.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div id="books">
				<div class="title">
					<a href="/index">主页</a>>> 所有书籍
				</div>
				<div class="gray">
					<img src="/resources/images/bullet1.gif">全部书籍
				</div>
				<c:forEach items="${bookslist}" var="book">
					<div class="book">
						<div class="title" title="${book.goodsname}">${book.goodsname}</div>
						<div class="book-box">
							<a href="/books/showDetail?id=${book.goodsid}">
								<img src="/resources/images/banner/${book.photo}">
							</a>
						</div>
					</div>
				</c:forEach>
				<jsp:include page="page.jsp"></jsp:include>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
