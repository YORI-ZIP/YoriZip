<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/liststyle.css" />
</head>
<body>
<!-- haeder -->
<jsp:include page="header.jsp" />
    <form class="container">
        <!-- ������ ��ŷ���� -->
        <div class="community_content_box">
            <div class="community_contentbox_content1">������ ��ŷ����</div>
            <div class="community_contentbox_content2">���� ���� �ö�� ������ 45��!</div>
        </div>

        <!-- �� ���� �ڽ� --> 
            <div class="community_mainlist1_box">
            	<img src="${pageContext.request.contextPath}/static/images/1.png">
            </div>
            <div class="community_mainlist2_box">
            	<img src="${pageContext.request.contextPath}/static/images/1.png">
            </div>


        <!-- ����Ʈ �׸�� -->
        <div class="community_list_box">
            <div class="community_list_box1">
                <div class="community_list1_image" id="opt1">
                	<img src="${pageContext.request.contextPath}/static/images/2.png">
                </div>
                <div class="community_list2_image" id="opt1">
                	<img src="${pageContext.request.contextPath}/static/images/2.png">
                </div>
                <div class="community_list3_image" id="opt1">
                	<img src="${pageContext.request.contextPath}/static/images/2.png">
                </div>
                <div class="community_list4_image" id="opt1">
                	<img src="${pageContext.request.contextPath}/static/images/2.png">
                </div>

                <div class="community_list5_image" id="opt2">
                	<img src="${pageContext.request.contextPath}/static/images/3.png">
                </div>
                <div class="community_list6_image" id="opt2">
                	<img src="${pageContext.request.contextPath}/static/images/3.png">
                </div>
                <div class="community_list7_image" id="opt2">
                	<img src="${pageContext.request.contextPath}/static/images/3.png">
                </div>
                <div class="community_list8_image" id="opt2">
                	<img src="${pageContext.request.contextPath}/static/images/3.png">
                </div>

                <div class="community_list9_image" id="opt3">
                	<img src="${pageContext.request.contextPath}/static/images/4.png">
                </div>
                <div class="community_list10_image" id="opt3">
                	<img src="${pageContext.request.contextPath}/static/images/4.png">
                </div>
                <div class="community_list11_image" id="opt3">
                	<img src="${pageContext.request.contextPath}/static/images/4.png">
                </div>
                <div class="community_list12_image" id="opt3">
                	<img src="${pageContext.request.contextPath}/static/images/4.png">
                </div>
            </div>
        </div>
        <table >
            <tr>
                <td class = "list_paging_table"><<  <   1 2 3 4 5   >  >></td>
                <td>
                    <div class="community_write">
                        <div class="community_write_box">
                            <div class="community_write_content">�۾���</div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
            <!-- footer -->
  		<jsp:include page="footer.jsp" />
</body>
</html>