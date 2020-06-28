<%@ page language="java" import="java.util.*,net.vicp.zyl_me.model.UsersBean" pageEncoding="UTF-8"%>
<%
	/* HttpSession session_ = request.getSession();
	UserBean userBean = (UserBean) session.getAttribute("userBean"); */
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String error = request.getParameter("error");
	
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
				</div>
			</div>
			<div id="contact">
				<form name="form1" action="FeedBackServlet?" method="post">
					<div class="contact_title">需填满所有框</div>
					<%
						if ("feedbackAddWrong".equals(error)) {
							out.println("<font color=red>留言失败!需填满所有框！<font>");
						}
					%>
					<div class="row3">
						<label>标&nbsp;&nbsp;&nbsp;&nbsp;题:</label>&nbsp;<input name="subject">
					</div>
					<div class="row4">
						<label>正&nbsp;&nbsp;&nbsp;&nbsp;文:</label>
					</div>
					<div class="row5">
						<textarea name="message"></textarea>
					</div>
					<div class="row6" style="margin:15px 250px">
						<input type="submit" value="提交">
					</div>
				</form>
				<a href="feedbackframe.jsp">查看所有留言</a>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
