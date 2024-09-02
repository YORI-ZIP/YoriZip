<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>오늘의 메뉴 선정 완료</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/result.css">
</head>
<body>
<div class="container">
    <!-- 왼쪽 섹션: 이미지와 텍스트 -->
    <div class="left-section">
        <img src="${pageContext.request.contextPath}/static/images/bibimbab.png" alt="선택된 음식">
        <p class="my-pick">마이 픽</p>
        <div class="buttons">
            <button class="action-button">다시하기</button>
            <button class="action-button">돌아가기</button>
        </div>
    </div>

    <!-- 오른쪽 섹션: 순위 리스트 -->
    <div class="right-section">
        <h2>순위</h2>
        <ul class="ranking">
            <li>1등 비빔밥 <span class="medal gold">🥇</span></li>
            <li>2등 라면 <span class="medal silver">🥈</span></li>
            <li>3등 김치찌개</li>
            <li>4등 파스타</li>
        </ul>
    </div>
</div>
</body>
</html>