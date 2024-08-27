<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>결과</title>
</head>
<body>
    <h1>최종 우승자</h1>
    <div>
        <img src="${winner.imageUrl}" alt="Winner"/>
        <h2>${winner.name}</h2>
    </div>
    <a href="<%= request.getContextPath() %>/game?round=8">다시하기</a>
</body>
</html>