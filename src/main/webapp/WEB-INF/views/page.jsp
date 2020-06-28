<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<link rel="stylesheet" href="/resources/css/page.css">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<nav class="pagination" >
    <ul>
        <li id="present" value="${page.page}">当前页：${page.page}</li>
        <li class="active"><a href="${basePath}?page=1">首页&nbsp;1</a></li>
        <c:if test="${page.page gt 1}">
            <li class="pages" ><a id="pres" href="${basePath}?page=${page.page-1}">上一页</a></li>
        </c:if>
        <c:if test="${page.page lt page.totalPage}">
            <li class="pages" ><a id="next" href="${basePath}?page=${page.page+1}">下一页</a></li>
        </c:if>
        <li class="active"><a href="${basePath}?page=${page.totalPage}">尾页&nbsp;${page.totalPage}</a></li>
        <li><span>共 ${page.total}本</span></li>
    </ul>
</nav>