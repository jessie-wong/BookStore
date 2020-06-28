<%@ page language="java"
	import="java.util.*,net.vicp.zyl_me.model.GoodsBean,net.vicp.zyl_me.model.UsersBean,javax.servlet.http.HttpSession"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	HttpSession session_ = request.getSession();
	UsersBean userBean = (UsersBean) session_.getAttribute("userBean");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/myaccount.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="images/bullet1.gif">修改账户
			</div>
			<div id="myaccount">
				<div class="item">
					<div class="">
						<form method="post" action="UpdateAccountServlet">
							<table>
							<%
							String error=request.getParameter("error");
							if("updateerror".equals(error)){
								out.println("<tr><td><div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>修改失败！</div></td></tr>");
							}
							 %>
								<tr>
									<td class="left">我的账号:</td>
									<td><%=userBean.getUsername()%>
									</td>
								</tr>
								<tr>
									<td class="left">真实姓名:</td>
									<td><input name="truename" value="<%=userBean.getTruename()%>">
								</tr>
								<tr>
									<td class="left">电子邮件:</td>
									<td><input name="email" value="<%=userBean.getEmail()%>">
								</tr>
								<tr>
									<td class="left">电话号码:</td>
									<td><input name="phone" value="<%=userBean.getPhone()%>">
								</tr>
								<tr>
									<td class="left">用户住址:</td>
									<td><input name="address" value="<%=userBean.getAddress_()%>">
								</tr>
								<tr>
									<td></td>
									<td><input type="submit" value="完成"></td>
								</tr>
							</table>
						</form>
					</div>
				</div>

			</div>
			<img src="images/bookstore.png" class="touming">
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
