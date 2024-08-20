<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YoriZip Header</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/header.css">
    
</head>
<body>
     <header>
        <div class="header-container">
            <div class="logo">
                <a href="#"><img src="${pageContext.request.contextPath}/static/images/logo.png" alt="YoriZip �ΰ�"></a>
            </div>
            <nav class="main-menu">
                <ul>
                    <li><a href="#">����ѳ�</a></li>
                    <li><a href="#">�޴ް���</a></li>
                    <li><a href="#">��ŷ����</a></li>
                    <li><a href="#">������ �޴�</a></li>
                </ul>
            </nav>
            <nav class="user-menu">
                <div class="search-icon">
                    <a href="#"><img src="${pageContext.request.contextPath}/static/images/search-icon.png" alt="�˻�"></a>
                </div>
                <ul>
                    <!-- �α��� ���¿� ���� ǥ���� �׸�� -->
                    <li class="auth">
                        <a href="#" class="login-link">�α���/</a>
                        <a href="#" class="signup-link">ȸ������</a>
                    </li>
                    <li class="support"><a href="#">������</a></li>
                    <li class="mypage" style="display: none;"><a href="#">����������</a></li>
                    <li class="logout" style="display: none;"><a href="#">�α׾ƿ�</a></li>
                </ul>
            </nav>
            <div class="hamburger-menu">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>

        <!-- ����� �޴� -->
        <div class="mobile-menu">
            <ul>
                <li><a href="#">����ѳ�</a></li>
                <li><a href="#">�޴ް���</a></li>
                <li><a href="#">��ŷ����</a></li>
                <li><a href="#">������ �޴�</a></li>
                <li class="auth-mobile"><a href="#">�α���/ȸ������</a></li>
                <li><a href="#">������</a></li>
                <li class="mypage-mobile" style="display: none;"><a href="#">����������</a></li>
                <li class="logout-mobile" style="display: none;"><a href="#">�α׾ƿ�</a></li>
            </ul>
        </div>
    </header>

    <script src="${pageContext.request.contextPath}/static/js/header.js"></script>
</body>
</html>
