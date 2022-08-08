'use strict';
// 스크롤시 헤더 변경되는 함수
function scrollHandler(event) {
	let target = document.documentElement
	const header = document.querySelector('.header')
	
	if(target.scrollTop > 0) {
		header.classList.add('scroll')
	}
	else {
		header.classList.remove('scroll')
	}
}
// 대문페이지 숙소 유형 선택하는 함수
function mainLiHandler(event) {
	liarray.forEach(li => li.classList.remove('selected'))

	let target = event.target
	
    while(target.classList.contains('ml') == false) {
        target = target.parentNode
    }
	target.classList.add('selected')					
//	const index = liarray.indexOf(event.target)				
}
// 대문페이지 이벤트 이미지 슬라이드되는 함수
function slide(event) {
	const wrap = document.querySelector('.swiper-wrapper')

    let num = +wrap.dataset.num
    num += 962

    if(num > 3847) {
        wrap.style.transitionDuration = 'unset'
        num = 0
    }
    else {
        wrap.style.transitionDuration = '0.5s'
    }
    wrap.dataset.num = num

    wrap.style.transform = `translateX(${-num}px)`
}
// top버튼 누르면 제일 위로 올라가는 함수
function scrollToTop(event) {
	let target = document.documentElement
	
	target.scrollTop = 0
}
/* 탭 메뉴 */
function liHandler(event) {
	liarray.forEach(li => li.classList.remove('on'))
	
	event.target.classList.add('on')
	
	const index = liarray.indexOf(event.target)			

    divarray.forEach(div => div.classList.remove('on'))	
    divarray[index].classList.add('on')					
}
// list.jsp 가격 낮은 순, 가격 높은 순 정렬 버튼
function btnHandler(event) {
	btnArray.forEach(btn => btn.classList.remove('on'))
	
	let target = event.target
	
	while(target.classList.contains('sp')) {
		target = target.parentNode
	}
	
	target.classList.add('on')
}
// 사장님 한마디 더보기<->접기
function cmtbtnHandler(event) {
	const div = document.querySelector('.comment > div')
	if(div.classList.contains('clamp')) {
		cmtbtn.innerText = '접기'
			div.classList.remove('clamp')
	}
	else {
		cmtbtn.innerText = '더보기'
			div.classList.add('clamp')
	}
}
// list.jsp 지역 카테고리 선택
function loHandler(event) {
	loArray.forEach(lo => lo.classList.remove('on'))
	
	let target = event.target
	target.classList.add('on')
	
	const index = loArray.indexOf(target)
	
	dloArray.forEach(dlo => dlo.classList.remove('on'))
	dloArray[index].classList.add('on')
}
// 모달 제거하는 함수
function closeModal() {
	document.getElementById('modal').classList.add('hidden')
}
// 목록 페이지 지도 모달 함수
function openModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}
//상세 페이지 객실 이용 안내 모달
function dtopenModal(event) {
	document.getElementById('modal').classList.remove('hidden')
}
// 대문페이지 인원수 감소 함수
function dncount(event) {

	const resultElement = document.getElementById('result');
	const txtResultElement = document.getElementById('txtResult')
	let number = resultElement.innerText
	
	if(number > 1) {
		 number = parseInt(number) - 1
	}
	
	txtResultElement.style.color = '#F7323F'
	txtResultElement.innerText = number + '명'
	
	resultElement.innerText = number;
}
// 목록페이지 인원수 감소 함수
function listDncount(event) {
	const resultElement = document.getElementById('result');
	let number = resultElement.innerText
	
	if(number > 1) {
		 number = parseInt(number) - 1
	}
	
	resultElement.innerText = number;
}
// 대문 페이지 인원수 증가 함수
function upcount(event) {
	const resultElement = document.getElementById('result');
	const txtResultElement = document.getElementById('txtResult')
	let number = resultElement.innerText
	
	if(number < 4) {
		number = parseInt(number) + 1;
	}
	
	txtResultElement.style.color = '#F7323F'
	txtResultElement.innerText = number + '명'
	
	resultElement.innerText = number
}
// 목록페이지 인원수 감소 함수
function listUpcount(event) {
	const resultElement = document.getElementById('result');
	let number = resultElement.innerText
	
	if(number < 4) {
		number = parseInt(number) + 1;
	}
	
	resultElement.innerText = number
}
// 대문 페이지 숙소 지역 선택하는 함수 
function clickwhere(event) {
	const loc = document.querySelector('.selectctg > .loc')
	
	if(loc.classList.contains('hidden')) {
		loc.classList.remove('hidden')
	}
	else {
		loc.classList.add('hidden')
	}
}
function clickmany(event) {
	const many = document.querySelector('.selectctg > .many')
	
	if(many.classList.contains('hidden')) {
		many.classList.remove('hidden')
	}
	else {
		many.classList.add('hidden')
	}
}
function locationHandler(event) {
	let target = event.target
	const chgtxt = document.querySelector('.selectctg > .btn_loc > span')
	const loc = document.querySelector('.selectctg > .loc')
	
	const txt = target.innerText
	
	chgtxt.style.color = '#F7323F'
	chgtxt.innerText = txt
	loc.classList.add('hidden')
	
}
// 상세페이지 이미지 슬라이더 
function move_prev(event) {
	const btmWrap = document.querySelector('.gallery_btm_wrap')
	let btmNum = +btmWrap.dataset.num 
	
	const topWrap = document.querySelector('.gallery_top_wrap')
	let topNum = +topWrap.dataset.num
	
	
	
	
	if(btmNum > 0){
		btmNum -= 115	
		btmWrap.style.transitionDuration = '0.3s'
		btmWrap.dataset.num = btmNum
		if(btmNum < 920) {
			btmWrap.style.transitionDuration = '0'
			btmWrap.style.transform = `translateX(-${btmNum}px)`
		}
			
		topNum -= 490
		topWrap.dataset.num = topNum
		topWrap.style.transform = `translateX(-${topNum}px)`
	}
	
}
// 상세페이지 이미지 슬라이더
function move_next(event) {
	const btmWrap = document.querySelector('.gallery_btm_wrap')
//	const arr = Array.from(document.querySelectorAll('.item_img'))
	let btmNum = +btmWrap.dataset.num
	
	const topWrap = document.querySelector('.gallery_top_wrap')
	let topNum = +topWrap.dataset.num

	if(btmNum < 1265) {
		btmNum += 115
		btmWrap.style.transitionDuration = '0.3s'
		btmWrap.dataset.num = btmNum
		if(btmNum < 1035) btmWrap.style.transform = `translateX(${-btmNum}px)`
		
//			arr.push(arr.shift())	
			
		topNum += 490
		topWrap.dataset.num = topNum
		topWrap.style.transform = `translateX(${-topNum}px`
		
	}
}
