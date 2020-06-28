<%@ page language="java"
	import="java.util.*,net.vicp.zyl_me.model.GoodsBean,net.vicp.zyl_me.model.GoodsBeanHandler"
	pageEncoding="UTF-8"%>
<%
	/* HttpSession session_ = request.getSession();
	UserBean userBean = (UserBean) session.getAttribute("userBean"); */
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("utf-8");
	String result = request.getParameter("result");
	ArrayList<GoodsBean> arr = (ArrayList<GoodsBean>)session.getAttribute("deletebean");
%>
<html>
<head>
<link rel="stylesheet" href="css/deletebooksshow.css">
</head>
<body>
	<%
		if ("deletesuccess".equals(result)) {
			out.println("<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>删除成功!</div>");
		} else if ("deleteerror".equals(result)) {
			out.println("<div style='font-size:15px;margin:10px 0 3px 1px;color:red;text-align:center;'>删除失败!</div>");
		}
	%>
	<form action="DeleteBooksServlet" method="get">
		<table class="bookshow">
			<tr>
				<th></th>
				<th>ID</th>
				<th>书名</th>
			</tr>
			<%
				for (GoodsBean goodsbean :arr) {
			%>
			<tr>
				<td><input type="checkbox" value="<%=goodsbean.getGoodsid()%>"
					name="deletebox"></td>
				<td><span><%=goodsbean.getGoodsid()%></span></td>
				<td><span><%=goodsbean.getGoodsname()%></span></td>
			</tr>
			<%
				}
			%>
		</table>
		<input type="submit" value="删除">
	</form>
</body>

</html>
