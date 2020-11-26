<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ZSY
  Date: 2020/10/4
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>书籍展示</h1>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>remark</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="role" items="${roles}">
        <tr>
            <td>${role.id}</td>
            <td>${role.name}</td>
            <td>${role.remark}</td>
        </tr>
    </c:forEach>
    </tbody>

</table>
</body>
</html>
