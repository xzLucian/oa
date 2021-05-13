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
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong> <span>部门管理 >> 部门修改页面</span>
    </div>
    <div class="providerAdd">
        <form id="moduleForm" name="moduleForm" method="post" action="/sys/dept/doUpdateDept">
            <input type="hidden" name="method" value="modifyexe">
            <input type="hidden" name="departmentId" value="${department.departmentId }" />
            <div>
                <label for="departmentName">部门名称：</label>
                <input type="text" name="departmentName" id="departmentName" value="${department.departmentName}">
                <font color="red"></font>
            </div>
            <div>
                <label for="departmentNumber">部门人数：</label>
                <input type="text" id="departmentNumber" name="departmentNumber" value="${department.departmentNumber}">
                <font color="red"></font>
            </div>

            <div>
                <label for="departmentTelephone">联系方式：</label>
                <input type="text" name="departmentTelephone" id="departmentTelephone" value="${department.departmentTelephone}"> <font color="red"></font>
            </div>
            <div class="providerAddBtn">
                <input type="submit" name="save" id="save" value="保存" /> <input
                    type="button" id="back" name="back" value="返回" onclick="history.back();"/>
            </div>
        </form>
    </div>

</div>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="calendar/WdatePicker.js"></script>
<script type="text/javascript" src="js/userlist.js"></script>
</body>
</html>
