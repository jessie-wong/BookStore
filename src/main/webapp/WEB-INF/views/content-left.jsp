<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"> </script>
<script type="text/javascript">
		var count = 2;
		$(function () {
			$.ajax({
				type: "get",
				data:{count: count},
				url: "/index/leftData",
				dataType: "json",
				success: function (data) {
					var content = document.getElementById("content-left");
					for (var i in  data) {
						var goods = data[i];
						var item_div = document.createElement("div");
						item_div.className = "item";
						var item_left_div = document.createElement("div");
						item_left_div.className = "item-left";
						item_left_div.innerHTML = "<a href=\"/books/showDetail?id="+goods.goodsid+"\"><img src = \"/resources/images/banner/"+goods.photo+"\"></a>";
						var item_right_div = document.createElement("div");
						item_right_div.className = "item-right";
						var box_top = document.createElement("div");
						box_top.className = "box_top";
						var box_center = document.createElement("div");
						box_center.className = "box_center";
						var orange = document.createElement("div");
						orange.className="orange";
						orange.innerHTML = "简介:";
						var details_p = document.createElement("p");
						details_p.className = "details";
						details_p.innerHTML = goods.breifintroduction;
						var orange2 = document.createElement("div");
						orange2.className = "orange2";
						orange2.innerHTML = "<a href=\"#\" class = \"orange2\">--更多信息--</a>";
						box_center.appendChild(orange);
						box_center.appendChild(details_p);
						box_center.appendChild(orange2);
						var box_bottom = document.createElement("div");
						box_bottom.className = "box_bottom";
						item_right_div.appendChild(box_top);
						item_right_div.appendChild(box_center);
						item_right_div.appendChild(box_bottom);
						item_div.appendChild(item_left_div);
						item_div.appendChild(item_right_div);
						content.appendChild(item_div);
					}
				},
				error: function (data) {

				}
			})
		});
</script>
<div id="content-left">
	<div class="gray">
		<img src="/resources/images/bullet1.gif">好书一瞥
		<div class=""></div>
	</div>

</div>