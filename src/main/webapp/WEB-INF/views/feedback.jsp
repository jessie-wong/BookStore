<%@page import="net.vicp.zyl_me.model.FeedBackBean"%>
<%@page import="net.vicp.zyl_me.model.FeedBackHander"%>
<%@page import="net.vicp.zyl_me.model.UserBeanHandler"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>  
<%
	UserBeanHandler userBeanHandler = new UserBeanHandler();
    FeedBackHander feedbackhander = new FeedBackHander();
    ArrayList<FeedBackBean> arr =feedbackhander.getFeedBacks();
	if (arr == null) {
		response.sendRedirect("FeedBackServlet");
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>
<head>
<link rel="stylesheet" href="css/feedback.css">
</head>
<body>
	<div id="feedback">
		<%
			for (int i = 0; i < arr.size(); i++) {
		%>
		<div class="item">
			<div class="box_top"></div>
			<div class="box_center">
				<div class="orange">
					<%
						if (userBeanHandler.getUserByUserName(arr.get(i).getName())
									.getUsertype().equals("rooter")) {
								out.println("<font color=red>管理员</font>");
							}
					%>
					<%=arr.get(i).getName()%>
					&nbsp;
					<%=arr.get(i).getTime()%></div>
				<p class="details">
					<font size=3px color=red><%=arr.get(i).getSubject()%></font><br><%=arr.get(i).getMsg()%></p>
			</div>
			<div class="box_bottom"></div>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>