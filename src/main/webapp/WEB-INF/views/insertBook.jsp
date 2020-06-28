<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/insertbooks.css">
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
						<img src="/resources/images/bullet1.gif"> 添加书籍
					</div>
					<div id="contact">
						<form name="form1" action="/books/insertBook" method="post" enctype="multipart/form-data">
							<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>${error}</div>
							<div class="row3">
								<label>书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</label>&nbsp;<input name="goodsname">
							</div>
							<div class="row3">
								<label>书籍编号:</label>&nbsp;<input name="goodsid">
							</div>
							<div class="row3">
								<label>书籍价格:</label>&nbsp;<input name="goodsprice" value = "0">
							</div>
							<div class="row4">
								<label>所属种类:</label>&nbsp; <select name="category">
									<option value="编程语言">编程语言</option>
									<option value="历史">历史</option>
									<option value="名人传">名人传</option>
									<option value="文学">文学</option>
									<option value="诗歌">诗歌</option>
									<option value="教育">教育</option>
								</select>
							</div>
							<div class="row4">
								<label>书籍图片:</label><input type="file" name="photo">
							</div>
							<div class="row4">
								<label>书籍概要介绍:</label>
							</div>
							<div class="row5">
								<textarea name="breifintroduction"></textarea>
							</div>
							<div class="row4">
								<label>书籍详细介绍:</label>
							</div>
							<div class="row5">
								<textarea name="detailintroduction"></textarea>
							</div>
							<div class="row6" style="margin:15px 250px">
								<button type="submit" class="addBar"></button>
							</div>
						</form>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
