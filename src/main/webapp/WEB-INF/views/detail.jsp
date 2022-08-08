<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> branch 'main' of https://github.com/yogi5tte/yogi5tte.git

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/detail.css">
		
		<div id="content" class="detail">
			<div class="top">
		    	<div class="left">
		        	<div class="gallery_pc">
		            	<div class="gallery_top">
<<<<<<< HEAD
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
		            	</div>
			            <div class="gallery_btm">
							<ul>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
			            </div>
			            <div class="button_next"></div>
			            <div class="button_prev"></div>
		        	</div>
		    	</div>
		    	<div class="right">
		        	<div class="info">
		            <h2>dto.motelName</h2>
		            <div class="score_cnt">
		                <span>dto.star</span>
						dto.starValue<b id="review_cnt">&nbsp;리뷰<em>dto.reviewNum</em></b>
		            </div>
		            <p class="address">dto.address</p>
		        	</div>
		            <!-- 업체 이벤트 -->
					<div class="map">
					    
		            </div>
		            <div class="comment"><strong>사장님 한마디</strong><button>더보기</button>
                		<div class="clamp">dto.sellerOneWord</div>
            		</div>
		        </div>
	    	</div>
		</div>
		<div class="tab">
			<button class="on">객실안내/예약</button>
	        <button>숙소정보</button>
	        <button class="tab_review">리뷰</button>
		</div>
	
		<div class="div_tab">
			<div class="on">
				<form>
					<article class="room_info">
						<div class="btn_date"></div>
						<div class="room">
							<p class="pic_view"><img class="lazy" src="//image.goodchoice.kr/resize_370x220/adimg_new/70794/447572/e08f40f32e03e55dd2c76f64debb010e.jpg"></p>
							<strong class="title">디럭스 더블(dto.roomName)</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>dto.price원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button"class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
					</article>
				</form>
			</div>
			<div>
				<article class="detail_info">
					<div class="accordion" id="accordionExample">
						<div class="accordion-item">
							<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									기본정보 및 요금정보
						    </button>
						    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
							    <div class="accordion-body">
							    	<section class="default_info" style="display: block;">
										<ul>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										</ul>
							        </section>
							    </div>
						    </div>
						</div>
						<div class="accordion-item">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								편의시설 및 서비스
							</button>
						    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
								<div class="accordion-body">
									<section class="table_wrap">
							    		<ul>
							    			<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
											<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
							    		</ul>
							    	</section>
						      	</div>
						    </div>
						</div>
					</div>
				</article>
			</div>
			<div>
				<article class="review">
					<div class="score_top">
						<strong>추천해요</strong>
						<div class="score_wrap">
							<div class="score_star star_45"></div>
							<div class="num">dto.star</div>
						</div>
						<p>
							전체 리뷰 <b>dto.reviewNum</b>
							<span>|</span>
							제휴점 답변 <b>dto.sellerReviewNum</b>
						</p>
					</div>
					<ul>
						<li>
							<div class="guest">
								<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
								<strong>리뷰제목</strong>
								<div class="score_wrap_sm">
									<div class="score_star star_50"></div>
									<div class="num">10.0</div>
								</div>
								<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
								<div class="txt">리뷰내용</div>
								<span class="date">	</span>
							</div>
						</li>
					</ul>
				</article>
			</div>
		</div>
		
<%@ include file="footer.jsp" %>

<!-- Modal -->
<div id="modal" class="hidden">
	<div class="content">
		<div class="fix_title">
			객실 이용 안내
			<button>닫기</button>
		</div>
		<div class="iscroll_up">
			<div class="scroller">
				<section>
					<strong>기본 정보</strong>
					<ul class="dot_txt">
						<li>기본정보1</li>
						<li>기본정보2</li>
						<li>기본정보3</li>
						<li>기본정보4</li>
					</ul>
				</section>
				<section>
					<strong>편의 시설</strong>
					<ul class="dot_txt">
						<li>TV, 쇼파, 금고, 옷장, 에어컨, 냉장고, 고급식기류, 욕조, 어메니티, 헤어드라이기, 세제, 누하스 안마의자 (일부객실), 커피머신, 몽제 매트리스 제공</li>
					</ul>
				</section>
				<section>
					<strong>선택 날짜</strong>
					<ul class="dot_txt">
						<li>dto.date</li>
					</ul>
				</section>
			</div>
		</div>
	</div>
	<div class="overlay"></div>
</div>
<!-- Modal -->

<script>
	const liarray = Array.from(document.querySelectorAll('.tab > button'))
	const divarray = Array.from(document.querySelectorAll('.div_tab > div'))
	const cmtbtn = document.querySelector('.comment > button')
	const overlay = document.querySelector('.overlay')
	const infbtn = document.querySelector('.price > button')
	
	liarray.forEach(li => li.addEventListener('click', liHandler))
	cmtbtn.addEventListener('click', cmtbtnHandler)
	overlay.addEventListener('click', closeModal)	
	infbtn.addEventListener('click', dtopenModal)
=======
    
<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/detail.css">


<!-- 달력 소스  -->
<link rel="stylesheet" type="text/css" media="all" href="${cpath }/resources/stylecss/daterangepicker.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script type="text/javascript" src="${cpath }/resources/js/daterangepicker.js"></script>

<!-- 지도 소스 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35832996ddcf2ae6df4b95be1e09b25a&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="${cpath }/resources/js/map.js"></script>


		<div id="content" class="detail">
			<div class="top">
		    	<div class="left">
		        	<div class="gallery_pc">
		            	<div class="gallery_top">
=======
>>>>>>> branch 'main' of https://github.com/yogi5tte/yogi5tte.git
							<div class="gallery_top_wrap" data-num="0">
								<div class="item_Limg" data-idx="1"><img src="${cpath }/resources/image/센텀드림월드1.jfif"></div>
								<div class="item_Limg" data-idx="2"><img src="${cpath }/resources/image/센텀드림월드2.jfif"></div>
								<div class="item_Limg" data-idx="3"><img src="${cpath }/resources/image/센텀드림월드3.jfif"></div>
								<div class="item_Limg" data-idx="4"><img src="${cpath }/resources/image/센텀드림월드4.jfif"></div>
								<div class="item_Limg" data-idx="5"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg" data-idx="6"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg" data-idx="7"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg" data-idx="8"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg" data-idx="9"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg" data-idx="10"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_Limg" data-idx="11"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_Limg" data-idx="12"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
							</div>
		            	</div>
			            <div class="gallery_btm">
							<div class="gallery_btm_wrap" data-num="0">
								<div class="item_img" data-idx="1"><img src="${cpath }/resources/image/센텀드림월드1.jfif"></div>
								<div class="item_img" data-idx="2"><img src="${cpath }/resources/image/센텀드림월드2.jfif"></div>
								<div class="item_img" data-idx="3"><img src="${cpath }/resources/image/센텀드림월드3.jfif"></div>
								<div class="item_img" data-idx="4"><img src="${cpath }/resources/image/센텀드림월드4.jfif"></div>
								<div class="item_img" data-idx="5"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img" data-idx="6"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img" data-idx="7"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img" data-idx="8"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img" data-idx="9"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img" data-idx="10"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
								<div class="item_img" data-idx="11"><img src="${cpath }/resources/image/kakao_login.png"></div>
								<div class="item_img" data-idx="12"><img src="${cpath }/resources/image/요기오때빨간색로고.png"></div>
							</div>
							
			            </div>
			          <button class="button_prev"></button>
			            <button class="button_next"></button>
		        	</div>
		    	</div>
		    	<div class="right">
		        	<div class="info">
		            <h2>더미 모텔</h2>
		            <div class="score_cnt">
		                <span>9.7</span>
						최고에요<b id="review_cnt">&nbsp;리뷰<em>5,555개</em></b>
		            </div>
		            <p class="address">더미 주소</p>
		        	</div>
		            <!-- 업체 이벤트 -->
					<div class="map" id="map">
					    
		            </div>
		            <div class="comment"><strong>사장님 한마디</strong><button>더보기</button>
                		<div class="clamp">사장님 한마디 적는 곳입니다. 사장님 한마디 적는 곳입니다. 사장님 한마디 적는 곳입니다. 사장님 한마디 적는 곳입니다. 사장님 한마디 적는 곳입니다. 사장님 한마디 적는 곳입니다.<br>
							 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자
							 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자 더보기와 접기를 위한 테스트 글자
						</div>
            		</div>
		        </div>
	    	</div>
		</div>
	
	<div class="tab">
		<button class="on">객실안내/예약</button>
        <button>숙소정보</button>
        <button class="tab_review">리뷰</button>
	</div>
	
	<div class="div_tab">
		<div class="on">
			<form>
				<article class="room_info">
					<div class="btn_date">
					<input id="daterangepicker" type="text" placeholder="예약날짜">
					</div>
					<div class="room">
							<p class="pic_view"><img class="lazy" src="//image.goodchoice.kr/resize_370x220/adimg_new/70794/447572/e08f40f32e03e55dd2c76f64debb010e.jpg"></p>
							<strong class="title">디럭스 더블(dto.roomName)</strong>
							<div class="info">
								<div class="motel">
									<div class="price">
										<strong>가격</strong>
										<div>
											<p><b>dto.price원</b></p>
										</div>
										<button type="button">객실 이용 안내</button>
									</div>
									<button type="button"class="gra_left_right_red">예약</button>
								</div>
							</div>
						</div>
				</article>
			</form>
		</div>
		<div>
			<article class="detail_info">
				<div class="accordion" id="accordionExample">
					<div class="accordion-item">
						<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								기본정보 및 요금정보
					    </button>
					    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						    <div class="accordion-body">
						    	<section class="default_info" style="display: block;">
									<ul>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
									</ul>
						        </section>
						    </div>
					    </div>
					</div>
					<div class="accordion-item">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							편의시설 및 서비스
						</button>
					    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<section class="table_wrap">
						    		<ul>
						    			<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
										<li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li><li>테스트</li>
						    		</ul>
						    	</section>
					      	</div>
					    </div>
					</div>
				</div>
			</article>
		</div>
		<div>
			<article class="review">
				<div class="score_top">
					<strong>추천해요</strong>
					<div class="score_wrap">
						<div class="score_star star_45"></div>
						<div class="num">9.3</div>
					</div>
					<p>
						전체 리뷰 <b>777</b>
						<span>|</span>
						제휴점 답변 <b>777</b>
					</p>
				</div>
				<ul>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
					</li>
					<li>
						<div class="guest">
							<p class="pic"><img src="//image.goodchoice.kr/profile/ico/ico_23.png"></p>
							<strong>리뷰제목</strong>
							<div class="score_wrap_sm">
								<div class="score_star star_50"></div>
								<div class="num">10.0</div>
							</div>
							<div class="name"><b>방이름 객실 이용 · </b>작성자닉네임</div>
							<div class="txt">리뷰내용</div>
							<span class="date">	</span>
						</div>
					</li>
				</ul>
			</article>
		</div>
	</div>
<%@ include file="footer.jsp" %>
	
<!-- Modal -->
<div id="modal" class="hidden">
	<div class="content">
		<div class="fix_title">
			객실 이용 안내
			<button>닫기</button>
		</div>
		<div class="iscroll_up">
			<div class="scroller">
				<section>
					<strong>기본 정보</strong>
					<ul class="dot_txt">
						<li>기본정보1</li>
						<li>기본정보2</li>
						<li>기본정보3</li>
						<li>기본정보4</li>
					</ul>
				</section>
				<section>
					<strong>편의 시설</strong>
					<ul class="dot_txt">
						<li>TV, 쇼파, 금고, 옷장, 에어컨, 냉장고, 고급식기류, 욕조, 어메니티, 헤어드라이기, 세제, 누하스 안마의자 (일부객실), 커피머신, 몽제 매트리스 제공</li>
					</ul>
				</section>
				<section>
					<strong>선택 날짜</strong>
					<ul class="dot_txt">
						<li>dto.date</li>
					</ul>
				</section>
			</div>
		</div>
	</div>
	<div class="overlay"></div>
</div>
<!-- Modal -->

<script>
	const liarray = Array.from(document.querySelectorAll('.tab > button'))
	const divarray = Array.from(document.querySelectorAll('.div_tab > div'))
	const btn = document.querySelectorAll('.tab > button')
	
	liarray.forEach(li => li.addEventListener('click', liHandler))
	
	const cmtbtn = document.querySelector('.comment > button')
	const overlay = document.querySelector('.overlay')
	const infbtn = document.querySelector('.price > button')
	
	cmtbtn.addEventListener('click', cmtbtnHandler)
	overlay.addEventListener('click', closeModal)	
	infbtn.addEventListener('click', dtopenModal)
	
	
	const nextBtn = document.querySelector('.button_next')
	nextBtn.onclick = move_next
	const prevBtn = document.querySelector('.button_prev')
	prevBtn.onclick = move_prev
</script>

<!-- 달력 호출 함수 -->
<script>
$('#daterangepicker').daterangepicker({
	"locale": {
		linkedCalendars: true,
		autoUpdateInput: true,
		showCustomRangeLabel: true,
		"format" : "YYYY-MM-DD",
		"separator": "~",
		"applyLabel": "확인",
		"cancelLabel": "취소",
		"fromLabel": "From",
		"toLabel": "To",
		"customRangeLabel": "Custom",
		"weekLabel": "W",
		"daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
		"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		
	},
	"startDate": new Date(),
	"endDate": new Date(),
	"drops": "auto"
	
}, function (start, end, label) {
	console.log('New date range selected:' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	
});
</script>

<!-- 지도 호출 함수 -->
<script>
var container = document.getElementById('map')
var options = {
	center: new kakao.maps.LatLng(35.167054, 129.132861),
	level: 3
}
var map = new kakao.maps.Map(container, options)
marker.setMap(map)

kakao.maps.event.addListener(marker, 'click', function(){
	infowindow.open(map, marker)
});

//clusterer.addMarker(marker)
<<<<<<< HEAD
>>>>>>> branch 'main' of https://github.com/yogi5tte/yogi5tte.git
=======
>>>>>>> branch 'main' of https://github.com/yogi5tte/yogi5tte.git

</script>

</body>
</html>