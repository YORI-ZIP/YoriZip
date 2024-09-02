<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>미니게임</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Index_style.css">

</head>

<body>
<div>
<header>
 <jsp:include page="header.jsp" />
</header>
</div>
<div class="menu-recommendation">
    <h1>메뉴 추천</h1>
    <p>월드컵</p>
    <!-- post 방식 url에 데이터 노출하지 않고 데이터 전송 -->
    <form action="Main2.jsp" method="post">
        <select id="meal" name="meal">
            <option value="점심">점심</option>
            <option value="저녁">저녁</option>
        </select>

        <select id="round" name="round">
            <option value="8">8강</option>
            <option value="16">16강</option>
        </select>

        <button type="submit">시작</button>
    </form>
</div>

<div>
    <footer>
     <jsp:include page="footer.jsp" />
    </footer>
</div>
</body>
</html>
