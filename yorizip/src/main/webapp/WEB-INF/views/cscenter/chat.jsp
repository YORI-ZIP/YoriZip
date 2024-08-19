<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모달 채팅방</title>
    <style>
        body {
            font-family: 'Pretendard', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        /* 모달 오버레이 (투명한 배경) */
        .modal-overlay {
            display: none; /* 기본적으로 숨김 */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0); /* 투명한 배경 */
            z-index: 999; /* 모달보다 낮은 레이어 */
        }

        /* 모달 컨테이너 */
        .modal-container {
            position: fixed;
            bottom: 120px; /* 버튼 위에 모달을 띄우기 위해 버튼의 높이만큼 조정 */
            right: 50px; /* 이미지 버튼과 같은 right 위치 */
            width: 309px;
            height: 455px;
            background-color: #F7F7F8;
            border-radius: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            z-index: 1001; /* 이미지 버튼보다 아래에 위치 */
	       	overflow-y: scroll;
				
	        }
        
        	/* 스크롤바 안보이게 하기 */
			.modal-container::-webkit-scrollbar {
				display:none /* Chrome , Safari , Opera */
			}

        /* 헤더 스타일 */
        .modal-header {
            background-color: #f0f4f8;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: flex-start; /* 좌측 정렬 */
            gap: 10px; /* 이미지와 텍스트 사이 간격 */
        }

        .modal-header img {
            height: 50px; /* 로고 이미지의 높이 */
            margin: 5px;
        
        }

        .modal-header div {
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .modal-header h2 {
            font-size: 18px;
            margin: 0;
            font-weight: bold;
            color: #333;
        }

        .modal-header h4 {
            font-size: 13px;
            margin: 5px;
            color: #666666; /* 짙은 회색 */
            font-weight: normal;
            
            
        }

        /* 모달 본문  흰배경*/
        .modal-body {
       		position: absolute;
       		left: 4.36%;
			right: 4.13%;
			top: 19%;
			bottom: 23.18%;
            padding: 20px;
            font-size: 14px;
            width: 242px;
            height: 253px;
            background: #FFFFFF;
			box-shadow: 0px 0px 4.31655px rgba(0, 0, 0, 0.25);
			border-radius: 21.2289px;
			justify-content: center;
			overflow-y: scroll;
			
        }
        
        	/* 스크롤바 안보이게 하기 */
			.modal-body::-webkit-scrollbar {
				display:none /* Chrome , Safari , Opera */
			}
			
        .modal-body p {
            margin: 5px 0;
            font-size:11px;
        }
        
        .modal-body img {
         height: 30px; /* 로고 이미지의 높이 */
            margin: 5px;
           
        }
	.modal-body-head {
		display:flex;
		align-items: center;
	}
		        
		        
        /* 문의하기 버튼 */
        .modal-footer {
            display: flex;
            justify-content: center;
            padding: 20px;
            position: fixed; /* 고정 위치 */
            bottom: 250px;
            
        }

        .modal-footer button {
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
             width: 230px;
            height: 40px;
            
             font-family: 'Pretendard', sans-serif;
            position: absolute;
			left: 10.55%;
			right: 10.55%;
			top: 80.72%;
			bottom: 25.56%;
			
			background: linear-gradient(90deg, #30B97E 0%, #7CE1D0 109.13%);
			border-radius: 12.3694px;
        }

        /* 모달 열기 이미지 */
        .open-modal-img {
            width: 100px;
            height: 100px;
            cursor: pointer;
            position: fixed; /* 고정 위치 */
            bottom: 50px; /* 아래에서 50px 떨어짐 */
            right: 50px; /* 오른쪽에서 50px 떨어짐 */
            z-index: 999; /* 모달보다 위에 오도록 설정 */
            
        }

        /* 우측 하단 닫기 버튼 */
        .close-btn-fixed {
            position: fixed;
            bottom: 60px;
            right: 60px;
            background-color: #ffffff;
            border-radius: 30%;
            font-size: 20px;
            width: 50px;
            height: 50px;
            box-shadow: 0px 0px 7px 3px rgba(0, 0, 0, 0.3);
            border: none;
            cursor: pointer;
            z-index: 1002; /* 모든 요소보다 위에 오도록 설정 */
            display: none; /* 기본적으로 숨김 */
        }
        
        .nav_bar{
           position: absolute;
			left: 0%;
			right: 0%;
			top: 88.18%;
			bottom: 0%;
				
			background: rgba(255, 255, 255, 0.87);
			border-radius: 0px 0px 30px 30px;
        }
        .nav_bar img{
        position: absolute;
		width: 20px;
		height: 35px;
		left: 60px;
		bottom: 5px;
		
		
        }
        
          .nav_bar2 img{
        position: absolute;
		width: 20px;
		height: 35px;
		left: 150px;
		bottom: 5px;
		
		
        }
        
          .nav_bar3 img{
        position: absolute;
		width: 20px;
		height: 35px;
		left: 240px;
		bottom: 5px;
		
        }
        
        .chatbtn {
        font-family: 'Pretendard', sans-serif;
        border-radius: 12.3694px;
        background-color: #DDDDDD;
        margin-top: 10px;    
        border-color: grey;
        border: 1px solid;    
        height: 30px;
        
        /*히든요소, 버튼 누르면 펼쳐지는 옵션들*/
        	display: none;
			opacity: 0;
			transition: opacity 0.3s ease;
        }
        
            .chatbtn.show {
            display: block;
            opacity: 1;
        }
        
        .chatbtnMain {
            font-family: 'Pretendard', sans-serif;
            border-radius: 12.3694px;
            background-color: #CCCCCC;
            margin-top: 10px;    
            border-color: grey;
            border: 1px solid;    
            height: 30px;
            cursor: pointer;
        }
       
        
    </style>
</head>
<body>
    <!-- 모달 열기 이미지 -->
    <img src="resources/Group 252.png" alt="모달 열기 이미지" class="open-modal-img">

    <!-- 모달 오버레이 및 컨테이너 -->
    <div class="modal-overlay">
        <div class="modal-container">
            <div class="modal-header">
                <img src="resources/Group 290.png" alt="YORI:ZIP 로고">
                <div>
                    <h2>YORI:ZIP</h2>
                    <h4>운영시간 보기 ></h4>
                </div>
            </div>
            <div class="modal-body">
            <div class="modal-body-head">
            <img src="resources/Group 290.png" alt="YORI:ZIP 로고">
            <h4>YORI:ZIP</h4>
            </div>
                <p>안녕하세요. YORI:ZIP 고객센터입니다! 어떤 도움이 필요하신가요?</p>
                <p>[고객센터 운영 시간]<br>
                   채팅 상담: 9:00-17:30<br>
                   유선 상담: 10:00-17:00<br>
                   점심: 12:00-13:00<br>
                   주말/공휴일 OFF</p>
                    <button class="chatbtnMain" onclick="toggleButtons()" >자주 묻는 질문</button>
                    <button class="chatbtn" onclick="location.href='https://naver.com'">쿠킹일지는 어떻게 작성하나요?</button>
                    <button class="chatbtn" onclick="location.href='https://naver.com'">공지사항</button>
                    <button class="chatbtn" onclick="location.href='https://naver.com'">자주 묻는 질문</button>
                    <div class="modal-footer">
                <button>문의하기</button>
            </div>
            </div>
            
         
            <!-- 네비게이션바 -->
           <div class="nav_bar">
           <img src="resources/homeicon.png" alt="YORI:ZIP 로고" onclick="location.">
           
           </div>
           <div class="nav_bar2">
           <img src="resources/chaticon.png" alt="YORI:ZIP 로고">
           
           </div><div class="nav_bar3">
           <img src="resources/seticon.png" alt="YORI:ZIP 로고">
           
           </div>
           
        </div>
    </div>

    <!-- 우측 하단 닫기 버튼 -->
    <button class="close-btn-fixed">&times;</button>

    <script>
        const openModalImg = document.querySelector('.open-modal-img');
        const modalOverlay = document.querySelector('.modal-overlay');
        const closeBtnFixed = document.querySelector('.close-btn-fixed');

        // 이미지 클릭 시 모달 열기
        openModalImg.addEventListener('click', () => {
            modalOverlay.style.display = 'block';
            closeBtnFixed.style.display = 'block'; // X 버튼 표시
        });

        // 닫기 버튼 클릭 시 모달 닫기
        closeBtnFixed.addEventListener('click', () => {
            modalOverlay.style.display = 'none';
            closeBtnFixed.style.display = 'none'; // X 버튼 숨기기
        });
        
        /*토글버튼*/
        function toggleButtons() {
            var buttons = document.querySelectorAll('.chatbtn');
            buttons.forEach(function(button) {
                button.classList.toggle('show');
            });
        }
    </script>
</body>
</html>