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
        <strong>你现在所在的位置是:</strong> <span>模块管理 >> 模块修改页面</span>
    </div>
    <div class="providerAdd">
        <form id="deptForm" name="deptForm" method="post" action="/sys/module/doUpdateModule">
            <input type="hidden" name="method" value="modifyexe">
            <input type="hidden" name="moduleId" value="${module.moduleId }" />
            <div>
                <label for="moduleName">模块名称：</label>
                <input type="text" name="moduleName" id="moduleName" value="${module.moduleName}">
                <font color="red"></font>
            </div>
            <div>
                <label for="moduleMurl">模块地址：</label> <input type="text"
                                                            name="moduleMurl" id="moduleMurl" value="${module.moduleMurl}"> <font color="red"></font>
            </div>
            <div>
                <label for="moduleState">状态：</label> <input type="text"
                                                              name="moduleState" id="moduleState" value="${module.moduleState}">
            </div>
            <div>
                <label for="moduleCreatetime">创建时间：</label> <input type="text"
                                                              name="moduleCreatetime" id="moduleCreatetime" value="${module.moduleCreatetime}">
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
