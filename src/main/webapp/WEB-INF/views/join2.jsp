<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="join.jsp" %>

<style>
    .layer_fix {
        font-size: 15px;
        line-height: 26px;
        color: rgba(0,0,0,0.87);
    }
    .layer_fix {
        display: block;
        overflow: hidden;
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        z-index: 400;
        width: 100%;
        min-width: 320px;
        height: 100%;
        background: #fff;
        touch-action: none;
    }
    .layer_fix section {
        width: 336px;
        margin: 100px auto 0 auto;
        display: block;
    }
    .layer_fix .fix_title {
        display: block !important;
        margin-bottom: 16px;
    }
    .layer_fix .fix_title {
        position: relative;
        background: #fff;
        border-bottom: none;
    }
    .fix_title {
        top: 0;
        left: 0;
        right: 0;
        z-index: 300;
        width: 336px;
        height: 44px;
        font-size: 18px;
        line-height: 44px;
        text-align: center;
    }
    .fix_title strong {
        font-size: 24px;
    }
    section p {
        font-size: 13px;
        width: 336px;
        height: 26px;
        margin: 0%;
        color: #000000DE;
    }
    .phone_confirm {
        margin-top: 16px;
        width: 336px;
        height: 82px;
    }
    .phone_confirm #sendCode strong {
        display: block;
        margin-bottom: 8px;
        font-size: 16px;
        font-weight: normal;
        color: rgba(0,0,0,0.87);
    }
    .phone_confirm section {
        position: relative;
        margin: 0 0 25px 0;
        padding-right: 110px;
        width: 336px;
        height: 48px;
        padding: 0;
        border: 0;
        box-sizing: border-box;
        display: block;
    }
    .inp_wrap {
        border: 1px solid rgba(0,0,0,0.08);
        padding: 8px 14px 8px 16px;
        position: relative;
        width: 226px;
        height: 48px;
        border-radius: 4px;
        margin: 0;
        box-sizing: border-box;
    }
    .inp_wrap input {
        border: none;
        background: none;
        width: 100%;
        margin-top: 5px;
        font-size: 18px;
        color: rgba(0,0,0,0.56);
        height: 20px;
        line-height: 1;
    }
    .pop_login button {
        border: none;
    }
    .btn_checked {
        display: none;
        position: absolute;
        top: 12px;
        right: 7px;
        width: 18px;
        height: 18px;
        text-indent: -9999px;
        background-color: #00A2AD;
        -webkit-mask-image: url('https://image.goodchoice.kr/images/30/svg/ic_check.svg');
        mask-size: 18px 18px;
    }
    .phone_confirm section .btn_confirm {
        position: absolute;
        top: 0;
        right: 0;
        width: 100px;
        height: 44px;
        border: none;
        border-radius: 4px;
        background: #ccc;
        font-size: 14px;
        font-weight: normal;
        color: #fff;
        font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
        padding: 0;
        cursor: pointer;
    }
    .phone_confirm > div:nth-of-type(2) {
        display: none;
        display: block;
        margin: 0;
        padding: 0;
        border: 0;
        box-sizing: border-box;
        -webkit-tap-highlight-color: rgba(0,0,0,0);
    }
    .phone_confirm strong {
        display: block;
        margin-bottom: 8px;
        font-size: 16px;
        font-weight: normal;
        color: rgba(0,0,0,0.87);
        margin: 0;
        padding: 0;
        border: 0;
        box-sizing: border-box;
        }
    .phone_confirm section span {
        display: inline-block;
        position: absolute;
        top: 0;
        right: 10px;
        height: 48px;
        line-height: 48px;
        color: #ff0055;
        margin: 0;
        padding: 0;
        border: 0;
        box-sizing: border-box;
    }
    input[type="hidden" i] {
        appearance: none;
        background-color: initial;
        cursor: default;
        display: none !important;
        padding: initial;
        border: initial;
    }
    .hidden {
    	display: none;
    }
    </style>

    <div class="layer_fix pop_login pop_mem_reserve">
        <section>
        <div class="fix_title">
            <strong>이메일 본인 확인</strong> <!-- 주석 -->
        </div>
    
        <p>
            원활한 서비스 제공을 위해, 이메일 주소를 입력해주세요.
        </p>
    
        <div class="phone_confirm">
            <div id="sendCode">
                <strong>이메일 주소</strong>
                <section>
                    <form id="sendMailForm" class="inp_wrap remove">
                        <input type="tel" id="phone_number" maxlength="13">
                    	<input type="submit" class="btn_send btn_confirm" value="인증번호 전송"> <!-- 활성화 클래스 'active' -->
<!--                         <button type="button" class="btn_checked">확인</button> -->
                    </form>
                </section>
            </div>
            <div id="verificationCode">
                <strong>인증번호</strong>
                <section>
                    <form id="authForm" class="inp_wrap remove hidden">
                        <input type="tel" id="digit" minlength="4" maxlength="4">
                        <span class="timer">&nbsp;</span>
	                    <input type="submit" class="btn_ok btn_confirm" data-verification-type="call" data-verification-next="joinTemplate" value="확인">
                    </form>
                </section>
            </div>
            <input type="hidden" id="phone_certification_point" value="SIGINUP" style="display: none;">
        </div>
    </section>
  </div>

<script>
	const sendMailForm = document.getElementById('sendMailForm')
	const authForm = document.getElementById('authForm')
	
	function submitHandler(event) {
		event.preventDefault()
		const formData = new FormData(event.target)
		const ob = {}
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		fetch('${cpath}/join2', {
			method: 'POST', 
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		})
		.then(resp => resp.text())
		.then(text => {
			alert(text)
			event.target.reset()
		})
		authForm.classList.remove('hidden')
		authForm.querySelector('input').focus()
		sendMailForm.querySelector('input').setAttribute('disabled', 'disabled')
	}
	
	sendMailForm.addEventListener('submit', submitHandler)
</script>


</body>
</html>