<%--
  Created by IntelliJ IDEA.
  User: Obvious
  Date: 2015/9/10
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include.inc.jsp" %>
<html>
<head>
    <title></title>
</head>
<body>
<form:form action="${pageContext.request.contextPath }/car" method="post" modelAttribute="car">
    <input type="hidden" name="id">
    车名：<form:input path="carName"/>
    <input type="submit" value="提交"/>
</form:form>
</body>
</html>
