<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
            font-family: 'Pretendard', sans-serif;
            align-items: center;
            }
            
            
            ul {
            position:relative;
            margin-top: 70px;
        /*     right:40%;
            bottom:70%; */
		list-style:none;
		
		
   	}
 	li {
		display:inline-block;
		
	}
	li a {
		padding: 10px 25px;
		font-size: 13px;
		color: #000000;
		text-decoration: none;
	}
	.button {
		border: 1.5px solid #706363;
		margin-right: -5px;
		
	}
	a:hover {
		background:#967748;
		color:white;
	}


        .accordion {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            border-top: 2px solid #967748;
            border-bottom: 2px solid #967748;
            margin-top:70px;
        }

        .accordion-item {
            border-bottom: 1px solid #e2e2e2;
        }

        .accordion-item:last-child {
            border-bottom: none;
        }

        .accordion-header {
            padding: 15px;
            font-size: 13px;
            font-weight: bold;
            background-color: #fff;
            cursor: pointer;
            display: flex;
            align: left;
            align-items: center;
            justify-content: space-between;
        }

        .accordion-header::before {
            content: "Q.";
            color: #8b4e24;
            margin-right: 10px;
        }

        .accordion-header.active::after {
            content: "▲";
            font-size: 12px;
            color: #949494;
        }

        .accordion-header::after {
            content: "▼";
            font-size: 12px;
            margin-left: 10px;
            color: #949494;
        }

/* 		content는 기호만 넣을 수 있으므로 png 화살표를 넣고 싶으면 백그라운드로 넣어야함. */
		
		
        .accordion-content {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
            background-color: #f7f7f7;
            padding: 0 15px;
            font-size: 12px;
        }

        .accordion-content p {
            padding: 10px 0;
            margin: 0;
        }

        .accordion-header.active + .accordion-content {
            max-height: 200px; /* 충분한 높이로 설정하여 내용이 펼쳐지도록 함 */
            padding: 15px;
        }

</style>
</head>
<body>
<!-- 자주하는 질문 리스트   -->
	<center>
			<h2 align="center">공지사항</h2>
		
		<!-- 아코디언식 질문 -->
	 <div class="accordion">
	        <div class="accordion-item">
	            <div class="accordion-header">레시피 댓글, 후기에 노출되는 이름 변경 안 되나요?</div>
	            <div class="accordion-content">
	                <p>레시피 댓글과 후기에 표시되는 이름은 회원 정보에서 변경할 수 있습니다. '내 정보' 섹션에서 이름을 변경 후, 다시 댓글을 작성하면 새로운 이름으로 표시됩니다.</p>
	            </div>
	        </div>
	        <div class="accordion-item">
	            <div class="accordion-header">회원탈퇴는 어떻게 하나요?</div>
	            <div class="accordion-content">
	                <p>회원 탈퇴는 설정 메뉴에서 진행할 수 있습니다. '설정' -> '계정' -> '회원 탈퇴'를 순서대로 선택해 주세요. 탈퇴 후에는 복구가 불가능하니 신중히 선택해 주세요.</p>
	            </div>
	        </div>
	        <!-- 더 많은 항목 추가 가능 -->
	    </div>
	
	
	 <script>
	        const headers = document.querySelectorAll('.accordion-header');
	
	        headers.forEach(header => {
	            header.addEventListener('click', () => {
	                header.classList.toggle('active');
	                
	                const content = header.nextElementSibling;
	                
	                if (header.classList.contains('active')) {
	                    content.style.maxHeight = content.scrollHeight + 'px';
	                } else {
	                    content.style.maxHeight = 0; 
	                    
	                }
	            });
	        });
	    </script>
</body>
</html>