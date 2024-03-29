<%--
  Created by IntelliJ IDEA.
  User: hi
  Date: 2024-02-08
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Todo List</title>
</head>
<body>
<h3>회원 정보</h3>

<ul>
    <c:forEach items="${dtoList}" var="dto">
        <li>No : <a href="/todo/read?tno=${dto.tno}">${dto.tno}</a></li>
        <li>이&nbsp;&nbsp;름 : ${dto.name}</li>
        <li>아이디 : ${dto.id}</li>
        <li>패스워드 : ${dto.password}</li>
        <li>나&nbsp;&nbsp;이 : ${dto.age}</li>
        <li>성&nbsp;&nbsp;&nbsp;별 : <c:if test = "${dto.gender == true}">남</c:if>
            <c:if test = "${dto.gender != true}">여</c:if></li>
        <li>취&nbsp;&nbsp;&nbsp;미 : ${dto.hobbies}</li>
        <li>여행 가고 싶은 나라 : ${dto.travel}</li>
        <li>비&nbsp;&nbsp;&nbsp;고 : ${dto.content}</li>
    </c:forEach>
</ul>

</body>
</html>
