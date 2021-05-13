<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="taglib.jsp"%>

<div class="left">
	<h2 class="leftH2">
		<span class="span1"></span>功能列表 <span></span>
	</h2>
	<nav>
		<ul class="list">
			<c:forEach items="${mlist}" var="m">
				<li><a href="${m.moduleMurl}" target="mainFrame">${m.moduleName}</a></li>
			</c:forEach>
		</ul>
	</nav>
</div>

