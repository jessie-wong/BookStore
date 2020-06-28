<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/content.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/cart.css">

</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="/resources/images/bullet1.gif">我的购物车
			</div>
			<div id="cartcart">
				<table class="cart_table">
					<tbody>
						<tr class="cart_title">
							<td>图书封面</td>
							<td>书名</td>
							<td>单价</td>
							<td>数量</td>
							<td>总价</td>
						</tr>
						<c:forEach items="${cart.orders}" var="order">
							<tr>
								<td>
									<a href="/books/showDetail?id=${order.goodsid}">
										<img src="/resources/images/banner/${order.photo}" alt="" title="" border="0" class="cart_thumb">
									</a>
								</td>
								<td>${order.goodsname}</td>
								<td><fmt:formatNumber type="number" value="${order.price}" pattern="0.00" maxFractionDigits="2"/>￥</td>
								<td>
									<a href="/cart/addCart?goodsid=${order.goodsid}">+</a>
									<span>${order.count}</span>
									<a href="/cart/subCart?goodsid=${order.goodsid}">-</a>
								</td>
								<td><fmt:formatNumber type="number" value="${order.count*order.price}" pattern="0.00" maxFractionDigits="2"/>￥</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="4" class="cart_total"><span class="red">总数量:</span>
							</td>
							<td id="total_num">${cart.totalnum} 本</td>
						</tr>
						<tr>
							<td colspan="4" class="cart_total"><span class="red">总共:</span>
							</td>
							<td id="total_price"><fmt:formatNumber type="number" value="${cart.totalprice}" pattern="0.00" maxFractionDigits="2"/>￥</td>
						</tr>
					</tbody>
				</table>
				<a href="/books/allbooks" class="continue">&lt; 继续</a> <a href="#" class="checkout">结算&gt;</a>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
