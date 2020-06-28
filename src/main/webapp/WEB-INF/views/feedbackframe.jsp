<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/contact.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="images/bullet1.gif"> 留言板
			</div>
			<div id="contact_top">
				<div class="item">
					<div class="box_top"></div>
					<div class="box_center">
						<div class="orange">致辞:</div>
						<p class="details">欢迎给Book
							Store留言，如果您有什么意见或建议，我们将根据您的意见认真负责的改进。</p>
					</div>
					<div class="box_bottom"></div>
					<div class="add">
						<a href="contact.jsp">添加留言</a>
					</div>
				</div>
			</div>
			<iframe src="feedback.jsp" width="404px;" height="90%"
				style="border: none;"></iframe>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
