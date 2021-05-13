<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<div class="page-bar">
	<c:if test="${pageInfo.pageNum>1}">
		<a href="javascript:page_nav(${pageInfo.formName},1);">首页</a>
		<a href="javascript:page_nav(${pageInfo.formName},<c:out value="${pageInfo.pageNum-1}"/>);">上一页</a>
	</c:if>
	<c:if test="${pageInfo.pageNum<=1}">
		首页&nbsp;&nbsp;上一页
	</c:if>
	<c:if test="${pageInfo.pageNum<pageInfo.pages}">
		<a
			href="javascript:page_nav(${pageInfo.formName},<c:out value="${pageInfo.pageNum+1}" />);">下一页</a>
		<a
			href="javascript:page_nav(${pageInfo.formName},<c:out value="${pageInfo.pages}"/>);">最后一页</a>
	</c:if>
	<c:if test="${pageInfo.pageNum>=pageInfo.pages}">
		下一页&nbsp;&nbsp;尾页
	</c:if>
	&nbsp;&nbsp; &nbsp;&nbsp;第 ${pageInfo.pageNum}页/共<span
		id="totalPageCount">${pageInfo.pages}</span>页&nbsp;&nbsp;共${pageInfo.total }条记录
</div>