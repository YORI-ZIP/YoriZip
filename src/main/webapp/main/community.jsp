<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/communitystyle.css" /> 
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />

    <form class="container">
            <!-- ��� ��� ��ŷ ���� -->
        <button class="main_title" >��� ��� ��ŷ ����</a>
                <span class="main_title_num">123,456
                <span class="cooking_daily">></span>
            </span>
        </button>
            <!-- ������ ���� Ȯ���ϱ� �̸�Ƽ�� -->
        <div class="dibs_list"></div>
            
            <!-- ��ŷ���� �̹���1 -->
        <div class="img_box1" >
            <a href="#" style="text-decoration-line: none">
            	<img src="${pageContext.request.contextPath}/static/images/1.png">
            </a>
        </div>
            
            <!-- ��ŷ���� �̹����� -->
        <div class="cooking_list_box">
            <div class="img_box2">
            	<img src="${pageContext.request.contextPath}/static/images/2.png">
            </div>
            <div class="img_box3">
            	<img src="${pageContext.request.contextPath}/static/images/3.png">
            </div>
            <div class="img_box4">
            	<img src="${pageContext.request.contextPath}/static/images/4.png">
            </div>
            <div class="img_box5">
            	<img src="${pageContext.request.contextPath}/static/images/5.png">
            </div>
            <div class="img_box6">
            	<img src="${pageContext.request.contextPath}/static/images/6.png">
            </div>
            <div class="img_box7">
            	<img src="${pageContext.request.contextPath}/static/images/7.png">
            </div>
        </div>

            <!-- ��κ��� �ڽ� -->
        <div class="list_box">
            <button class="list_box_content">��� ����</button>
        </div>

            <!-- �ۼ��ϱ� �ڽ� -->
        <div class="insert_box">
            <button class="insert_box_content">�ۼ� �ϱ�</button>
        </div>
        <!-- ���÷�� ��-->
        <div class="influencers_box">
            <div class="minigame_box">
                <button class="minigame_content">
                    	�̴ϰ��� ����
                </button>
            </div>

            <div class="influencers_content1">��õ ���÷��</div>
            <div class="influencers_content2">�� ���� ���÷�� �ȷο� ></div>
            <!--���÷�� �ڽ�-->
            <div class="influencers1_box">
                <!-- ���÷�� �� �̹��� �� ���� ī��Ʈ-->
                <div class="influencers1_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+100</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers2_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+200</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers3_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+300</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers4_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+400</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers5_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+500</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers6_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+600</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <div class="influencers7_image">
                	<img src="${pageContext.request.contextPath}/static/images/person1.png">
                    <span class="influencers1_list_count">+700</span>
                    <span class="influencers_list_nickname">������</span>
                </div>
                <!--�ϴ� ��ư �� (���÷�� ����, ���� ����)-->
                <div class="recommand_influencers_list">
                    <!--���� ���� �ڽ�-->
                    <div class="recommand_influencers_box" onclick="communitylist.jsp">
                        <!--���� ���� ����-->
                        <span class="recommand_influencers_content">
                            	���� ���� Ȯ���ϱ�
                        </span>
                    </div>
                    <!-- �� ���� ���÷�� �����ϱ� �ڽ�-->
                    <div class="influencers_list_box" onclick="influencerlist.jsp">
                        <!-- �� ���� ���÷�� �����ϱ� ����-->
                        <span class="influencers_list_content">
                            	�� ���� ���÷�� �����ϱ�
                        </span>
                    </div>
                </div>
            </div>
        </div>
            <!-- footer -->
 <jsp:include page="footer.jsp" />
    </form>
</body>
</html>