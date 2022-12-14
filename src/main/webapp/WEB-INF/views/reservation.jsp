<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/header.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/reservation.css">



</head>
<body>
<script src="${cpath }/resources/js/reservation.js"></script>

<div id="reservation_root">
	<div class="left">
		<div class="form_skin">
			<h3>예약자 정보</h3>
			
			<form id="reservation_form">
				<strong>예약자 이름</strong>
				<p><input type="text" name="userName" placeholder="체크인시 필요한 정보입니다." maxlength="20"><p>
				<strong>휴대폰 번호</strong>
				<p><input type="text" name="phoneNumber" placeholder="체크인시 필요한 정보입니다." maxlength="20"><p>
			</form>
		</div>
		<hr>
		<div class="form_skin">
			<h3>결제 수단 선택</h3>
			<select id="payment_select" class="select_type" >
		
						<option data-minprice="0" selected="selected" value="KAKAO" >
                          	  카카오페이
                        </option>
                        
                        <option data-minprice="0" value="TOSS" >
                        	    토스
                        </option>
                        <option data-minprice="0" value="CARD" >
                         	   신용/체크카드             
                        </option>
                        <option data-minprice="0" value="CELLPHONE" >
                          	  휴대폰결제
                        </option>
               </select>
		</div>
		<div id="reservation_agree">
			<label><input type="checkbox" name="agree_all" class="inp_chk"><span>전체 동의</span></label>
			<label><input type="checkbox" name="agree" class="inp_chk"><span>숙소 이용 규칙 및 취소/환불규정 동의<span id="sec_span">(필수)</span></span></label>
			<label><input type="checkbox" name="agree" class="inp_chk"><span>개인정보 수집 및 이용 동의<span id="sec_span">(필수)</span></span></label>
			<label><input type="checkbox" name="agree" class="inp_chk"><span>개인 정보 제 3자 제공 동의<span id="sec_span">(필수)</span></span></label>
			<label><input type="checkbox" name="agree" class="inp_chk"><span>만 14세 이상 확인<span id="sec_span">(필수)</span></span></label>
		</div>
		
	
	</div>
	
	<div class="right">
		<div class="reservation_info">
			<p><strong>숙소이름</strong></p>
			{dto.name}
			<p><strong>객실타입/기간</strong></p>
			{dto.roomname}/{dto.day}일
			<p><strong>체크인</strong></p>
			{dto.checkin}
			<p><strong>체크아웃</strong></p>
			{dto.checkout}
			<hr>
			<div class="reservation_price_info">
			<p><strong>총 결제 금액(VAT 포함)</strong></p>
			<p id="price_final"><strong>{price }원</strong></p>
			</div>
			<ul>
				<li>해당 객실가는 세금,봉사료가 포함된 금액입니다</li>
				<li>결제완료 후 예약자 이름으로 바로 체크인 하시면 됩니다</li>
			</ul>
			<p><button type="button" class="reservation_btn right_red">결제하기</button></p>
		</div>
	 </div>
	 <div class="reservation_modal hidden">
	 	<div class="modal_content">
	 	</div>
	 	<div class="modal_overlay"></div>
	 </div>


</div>


<%@ include file="footer.jsp" %>

<script>

	
	//전체동의 체크
	const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
	const agreeCheck = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
	//모달창
	const reservation_btn = document.querySelector('.reservation_btn')
	const mo_cancel = document.querySelector('.mo_btn > .mo_cancel')
	
	
	agreeCheckAll.addEventListener('change',checkHandler)
	agreeCheck.forEach(dto=>dto.addEventListener('change',checkAll))
 	reservation_btn.addEventListener('click',openModal)
  	mo_cancel.addEventListener('click',closeModal)
</script>


