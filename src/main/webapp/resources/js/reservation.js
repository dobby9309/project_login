'use strict';

function closeModal(event){
	document.querySelector('.reservation_modal').classList.add('hidden')
}

function openModal(event){

//모달에서 이벤트 실행(취소, 결제) -민철
let target = event.target
if(target.classList.contains('mo_cancel')){
	closeModal(event)
	return
}
//if(target.classList.contains('mo_move_payment')){
//	openPayMovementModal(event)
//}


//url, opt fetch - 민철
/*const reservation_idx =target.getAttribute('idx')

const url = cpath + '/reservation/' + idx
const opt = {
	method="GET",
	headers={
			'Content-Type' : 'application/json;charset=utf-8'
			
	}
}
fetch(url,opt)
.then(resp=>resp.json())
.then(json=>{
*/
	const item = document.querySelector('.modal_content')
	//modal.classList.toggle("hidden")
		item.innerHTML = `<div class="mo_content_info">`
		item.innerHTML += `<strong class="mo_info">예약내역 확인</strong>`
		
		item.innerHTML += `<hr>`
		
		item.innerHTML += `<div class="mo_content_info">`
			
		item.innerHTML += `<p class="mo_info_product">{dto.product}</p>`
		item.innerHTML += `<p class="mo_info_roomName">{dto.roomName} / {dto.day}박</p>`
		
		item.innerHTML += `<p class="mo_info_check_in"><span>체크인</span><strong>{dto.check_in}</strong></p>`
		item.innerHTML +=`<p class="mo_info_check_out"><span>체크아웃</span><strong>{dto.check_out}</strong></p>`
		item.innerHTML += `<hr>`
			
		item.innerHTML += `<ul><li><span>취소 및 환불이 불가<span>합니다.</li><br><li>예약 후 15분 이내 고객행복센터로 취소 요청 시 100% 환불 가능합니다.</li></ul>`
		
		item.innerHTML += `</div>`
		item.innerHTML += `<hr>`
		
		item.innerHTML += `<div class="mo_btn"><a href="" class="mo_cancel"><span id="cancel">취소</span></a><a href="#" class="mo_move_payment"><span>동의 후 결제</span></a></div>`
		
			
		document.querySelector('.reservation_modal').classList.remove('hidden')
}
	//test
	//전체 동의 후, 개별 동의 1개라도 체크가 안되어있을 시, 전체동의 체크 풀리는 핸들러(민철)
	function checkAll(){
	
	const agreeCheckAll = document.querySelector('#reservation_agree> label > input[name=agree_all]')
	const agreeArray = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
	if(event.target.checked === false){
		agreeCheckAll.checked = false;
	}
	
	
	//개별 동의가 모두 체크되었을 시 전체 동의 자동 체크 (민철)
	const allflag = (agreeArray[0].checked&&
			agreeArray[1].checked&&
			agreeArray[2].checked&&
			agreeArray[3].checked
	)
	if(allflag){
		agreeCheckAll.checked = true
	}else{
		agreeCheckAll.checked = false
	}
	
	

	
	//if(agree == agreeCount)
	
	
	
	
}

	//전체 동의를 체크하면, 개별 체크가 전부 체크 되는 핸들러(민철)
	function checkHandler(event){

	const agreeArray = document.querySelectorAll('#reservation_agree> label > input[name=agree]')
	const target = event.target
	for(let i = 0; i < agreeArray.length; i++){
		agreeArray[i].checked = target.checked;
	}

	/*if(target.checked)	agreeArray.forEach(box => box.setAttribute('checked', ''))
	else 				agreeArray.forEach(box => box.removeAttribute('checked'))
	*/
	}