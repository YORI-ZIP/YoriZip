<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" href="resources/css/main/header.css">
<title>header</title>
</head>
<body>
	<header>
		<div class="header-container">
		<div class="logo">
			<a href="#"><img src="logo" alt="YoriZip 로고"></a>
		</div>
		<nav class="main-menu">
			<ul>
				<li><a href="#">든든한끼</a><li>
				<li><a href="#">달달간식</a><li>
				<li><a href="#">쿠킹일지</a><li>
				<li><a href="#">오늘의 메뉴</a><li>			
			</ul>
		</nav>
		<nav class="user-menu">
			<div class="search-icon">
				<a href="#"><img src="searchicon" alt="검색"></a>
			</div>
			<ul>
				<li class="auth">
				<a href="#" class="login-link">로그인/회원가입</a>
				<a href="#" class="signup-link">고객센터</a>
				</li>
				<li class="cscenter"><a href="#">고객센터</a>
				<li class="mypage" style="display: none;"><a href="#">마이페이지</a>
				<li class="logout" style="display: none;"><a href="#">로그아웃</a>
			</ul>
		</nav>
		<div class="hamburger-menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
		</div>
		
		<!-- 모바일 메뉴  -->
		<div class="mobile-menu">
			<ul>
				<li><a href="#">든든한끼</a></li>
				<li><a href="#">달달간식</a></li>
				<li><a href="#">쿠킹일지</a></li>
				<li><a href="#">오늘의 메뉴</a></li>
				<li class="auth-mobile"><a href="#">로그인/회원가입</a></li>
				<li><a href="#">고객센터</a></li>
				<li class="mypage-mobile" style="display: none;"><a href="#">마이페이지</a></li>
				<li class="logout-mobile" style="display: nonel"><a href="#">로그아웃</a></li>
			</ul>
		
		</div>	
	</header>
	<srcipt src=""></srcipt>
</body>
</html>