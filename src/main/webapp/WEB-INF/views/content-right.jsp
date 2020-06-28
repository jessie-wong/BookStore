<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div id="content-right">
	<div id="cart">
		<img src="/resources/images/cart.gif">我的购物车
	</div>
	<div id="total">
		${cart.totalnum}x 物品
		<span class="red">| 总共: <fmt:formatNumber type="number" value="${cart.totalprice}" pattern="0.00" maxFractionDigits="2"/>￥</span>
	</div>
	<div id="view">
		<a href="/cart/showcart" class="red">查看购物车</a>
	</div>
	<%--
	<div class="middle">
		<img src="/resources/images/border.gif">
	</div>
	<div class="middle" id="banner">
		<script type="text/javascript" src="/resources/js/zyl.js"></script>
	</div> --%>
	<div class="middle">
		<img src="/resources/images/border.gif">
	</div>
	<br />
	<div id="bottom" class="gray">
		<div id="left">
			<img src="/resources/images/bullet4.gif">促销:
		</div>
	</div>
	<div id="right">
		<img src="/resources/images/bullet3.gif">种类:
		<table>
			<tr>
				<td><a href="/books/searchByCategory?category=编程语言">编程语言</a></td>
			</tr>
			<tr>
				<td><a href="/books/searchByCategory?category=历史">历史</a></td>
			</tr>
			<tr>
				<td><a href="/books/searchByCategory?category=名人传">名人传</a></td>
			</tr>
			<tr>
				<td><a href="/books/searchByCategory?category=文学">文学</a></td>
			</tr>
			<tr>
				<td><a href="/books/searchByCategory?category=诗歌">诗歌</a></td>
			</tr>
			<tr>
				<td><a href="/books/searchByCategory?category=教育">教育</a></td>
			</tr>
		</table>
	</div>
</div>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"> </script>
<script type="text/javascript">
	$(function () {
		$.ajax({
			type: "get",
			data:{},
			url: "/index/rightData",
			dataType: "json",
			success: function (data) {
				var content = document.getElementById("left");
				for (var i in  data) {
					var goods = data[i];
					var promotebook_div = document.createElement("div");
					promotebook_div.className = "promotebook";
					var title_div = document.createElement("div");
					title_div.className = "title";
					title_div.appendChild(document.createTextNode(goods.goodsname));
					promotebook_div.appendChild(title_div);
					var promotebook_box = document.createElement("div");
					promotebook_box.className = "promotebook-box";
					var a_detail = document.createElement("a");
					a_detail.href = "/books/showDetail?id="+goods.goodsid;
					var promote_span = document.createElement("span");
					promote_span.className = "promote";
					promote_span.innerHTML = "<img src=\"/resources/images/promo_icon.gif\">";
					a_detail.appendChild(promote_span);
					var img = document.createElement("img");
					img.src = "/resources/images/banner/" + goods.photo;
					a_detail.appendChild(img);
					promotebook_box.appendChild(a_detail);
					promotebook_div.appendChild(promotebook_box);
					content.appendChild(promotebook_div);
				}
			},
			error: function (data) {

			}
		})
	});
</script>