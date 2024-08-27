<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>이상형 월드컵 게임</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/minigame_css/Main.css">
</head>
<body>
    <div class="header-container">
        <h1>Round: ${round}</h1>
        <h2>식사: ${meal}</h2>
    </div>

    <div class="container">
        <c:if test="${candidates.size() >= 2}">
            <div class="food-item">
                <input type="image" id="image1" src="${candidates[0].imageUrl}" onclick="selectImage(${candidates[0].id})">
            </div>
            <div class="vs-text">VS</div>
            <div class="food-item">
                <input type="image" id="image2" src="${candidates[1].imageUrl}" onclick="selectImage(${candidates[1].id})">
            </div>
        </c:if>
        <c:if test="${candidates.size() < 2}">
            <p>이미지를 로드하는 중 문제가 발생했습니다. 다시 시도해 주세요.</p>
        </c:if>
    </div>

    <script>
        function selectImage(winnerId) {
            window.location.hrefs = "<%= request.getContextPath() %>/result?winnerId=" + winnerId;
        }
    </script>
</body>
</html>