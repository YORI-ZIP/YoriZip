<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/influencerstyle.css" />
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />
    <form class="container">
        <div class="influencers_box">
            <div class="influencers_content">�̹��� �޻�� ���÷��</div>
            <!--���÷�� �̹��� �ڽ�-->
            <div class="influencers1_box">
            <!-- ���÷�� �� �̹��� �� ���� ī��Ʈ-->
            <div class="influencers1_image">
                <span class="influencers1_list_count">+100</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers2_image">
                <span class="influencers1_list_count">+200</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers3_image">
                <span class="influencers1_list_count">+300</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers4_image">
                <span class="influencers1_list_count">+400</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers5_image">
                <span class="influencers1_list_count">+500</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers6_image">
                <span class="influencers1_list_count">+600</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            <div class="influencers7_image">
                <span class="influencers1_list_count">+700</span>
                <img src="${pageContext.request.contextPath}/static/images/person1.png">
                <span class="influencers_list_nickname">������</span>
            </div>
            </div>
        </div>
        <div class="influencers_content1">�̷� ���÷�𼭴� ���?
            <span class="influencers_content2">����� �Բ� ��õ�ϴ� ���� ���÷��</span>
        </div>
        <div class="influencers_box2">

            <!--���÷�� �ڽ�-->
            <div class="influencers2_box">
            <!-- ���÷�� �� �̹��� �� ���� ī��Ʈ-->
            <div class="influencers_box_form">
                <div class="influencers1_image">
                    <span class="influencers1_list_count">+100</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers2_image">
                    <span class="influencers1_list_count">+200</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers3_image">
                    <span class="influencers1_list_count">+300</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers4_image">
                    <span class="influencers1_list_count">+400</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers5_image">
                    <span class="influencers1_list_count">+500</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers6_image">
                    <span class="influencers1_list_count">+600</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers7_image">
                    <span class="influencers1_list_count">+700</span>
                    <img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers_list_nickname">������</span>
                </div>
            </div>        
        </div>
    </form>

<!-- footer -->
  <jsp:include page="footer.jsp" />
</body>
</html>