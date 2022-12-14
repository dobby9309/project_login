<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/header.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/approve.css">
    


</head>
<body>
<script src="${cpath }/resources/js/approve.js"></script>

<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<div class="reservation_approve_info">
	<div class="logo_img_div">
	
	</div>
	<div class="approve_wrap">
		<h2>예약 완료 내역</h2>
		<div class="btn_set">
			<button id="home_btn"><span>홈으로 돌아가기</span></button>
			<button id="pdf_btn"><span>PDF로 저장</span></button>
		</div>
	</div>	
			<p class="status">
			예약확정
			</p>
			
			<p class="info"><strong>숙소이름</strong></p>
			{dto.name}
			<p class="info"><strong>객실타입/기간</strong></p>
			{dto.roomname}/{dto.day}일
			<p class="info"><strong>체크인</strong></p>
			{dto.checkin}
			<img id="logo_img" src="${cpath }/resources/image/요기오때빨간색로고.png">
			<p class="info"><strong>체크아웃</strong></p>
			{dto.checkout}
			
			<p class="info"><strong>예약자</strong></p>
			{dto.name}
			<p class="info"><strong>전화번호</strong></p>
			{dto.phoneNumber}
			<ul>
				<li>휴대 번호는 예약한 숙소에 전송되며, 퇴실 후 7일간 보관됩니다.</li>
			</ul>
			<hr>
			<div class="price_info">
				<p><strong>결제 정보</strong></p>
				<div class="account">
				<p><strong>총 결제금액</strong></p>
				<p id="price_final"><strong>{price }원</strong></p>
				</div>
			<p class="cancel_info">예약 취소는 여기어때 앱에서 가능합니다.</p>
			</div>
		</div>	
	

</body>
<script>

	const pdf_btn = document.getElementById('pdf_btn')
	
	pdf_btn.addEventListener('click',PDFConvertHandler)



</script>
</html> 
