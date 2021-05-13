<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <base href="<%=path%>">
    <title>OA日常办公管理系统</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <link type="text/css" rel="stylesheet" href="css/public.css" />
</head>
<body>
<!--主体内容-->
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong> <span>部门管理 >> 部门添加页面</span>
    </div>
    <div class="providerAdd">
        <form id="deptForm" name="deptForm" method="post" action="sys/dept/addDept">
            <input type="hidden" name="method" value="add">
            <div>
                <label for="departmentId">部门编号：</label>
                <input type="text" name="departmentId" id="departmentId" value=""> <font color="red"></font>
            </div>
            <div>
                <label for="departmentName">部门名称：</label>
                <input type="text" name="departmentName" id="departmentName" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="departmentNumber">部门人数：</label>
                <input type="text" name="departmentNumber" id="departmentNumber" value=""> <font color="red"></font>
            </div>
            <div>
                <label for="departmentTelephone">联系方式：</label>
                <input type="text" name="departmentTelephone" id="departmentTelephone" value=""> <font color="red"></font>
            </div>
            <div class="providerAddBtn">
                <input type="submit" name="add" id="add" value="保存"> <input
                    type="button" id="back" name="back" value="返回"
                    onclick="history.back();">
            </div>
        </form>
    </div>
</div>


<script type="text/javascript" src="<%=path%>js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=path%>js/common.js"></script>
<script type="text/javascript" src="<%=path%>calendar/WdatePicker.js"></script>
</body>
</html>
