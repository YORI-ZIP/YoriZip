<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/mypage.css">
</head>
<body>



    <!-- 팝업창 오버레이 -->
    <div id="myPageModal" class="modal-overlay">
        <div class="modal">

            <div class="profile-container">
            <img src="${pageContext.request.contextPath}/static/images/profile.png" alt="Icon" width="50">
            <h4>이름</h4>
             <button class="close-btn" onclick="closeModal()">X</button>
            </div>
            <p>닉네임</p>
            <hr>
            <div class="modal-menu">
                <a href="">회원정보 수정</a>
                <a href="">찜한 쿠킹일지</a>
                <a href="">나의 쿠킹일지</a>
                <a href="">스크랩 레시피</a>
                <a href=" ">로그아웃</a>
            </div>
        </div>
    </div>
	 <script src="${pageContext.request.contextPath}/static/js/mypage.js"></script>


</body>
</html>