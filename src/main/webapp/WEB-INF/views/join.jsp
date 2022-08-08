<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>
<style>
        html, body {
            font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            font-size: 14px;
            line-height: 1;
            color: rgba(0,0,0,0.87);
            -webkit-text-size-adjust: none;
        }
        div {
            display: block;
        }
        .layer_fix > section {
            margin: 100px 791.500px 0px 791.500px;
            width: 336px;
            height: 477px;
        }
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
            font-size: 14px;
            line-height: 22px;
            color: rgba(0,0,0,0.87);
            touch-action: none;
        }
        .layer_fix .fix_title {
            display: block !important;
            margin-bottom: 16px;
        }
        .layer_fix .fix_title {
            position: relative;
            margin-bottom: 16px;
            background: #fff;
            border-bottom: none;
        }
        .fix_title {
            display: none;
        }
        .fix_title {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 300;
            width: 100%;
            height: 44px;
            background: #fff;
            font-size: 18px;
            line-height: 44px;
            text-align: center;
        }
        .fix_title > strong {
            width: 100%;
            height: 44px;
            font-size: 24px;
        }
        html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
        }
        strong {
            font-weight: bold;
        }
        article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
            display: block;
        }
        .terms_agree {
            margin-top: 20px;
        }
        .terms_agree .all_check {
            font-weight: bold;
        }
        .terms_agree > p {
            margin-bottom: 25px;
        }
        .terms_agree > p {
            position: relative;
        }
        * {
            outline: 0;
        }
        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }
        a, input, button, div, li, textarea, form, label, select {
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .terms_agree p label {
            display: inline-block;
            position: relative;
            font-size: 15px;
        }
        label {
            cursor: pointer;
        }
        input [type=checkbox] {
            display: none;
        }   
        input[type=checkbox].inp_chk_02{
            width:24px;
            height:24px;
            border:none;
            background:url("https://image.goodchoice.kr/images/web_v3/ico_chk.png") 0 0 no-repeat;
            background-size:24px auto;
            cursor:pointer
        }
        input[type=checkbox].inp_chk_02:checked {
            background: url("https://image.goodchoice.kr/images/web_v3/ico_chk.png") 0 -24px no-repeat;
            background-size: 24px auto;
        }

        .terms_agree input {
            top: -3px;
        }
        .terms_agree input {
            margin: 0 10px 0 0;
            vertical-align: top;
        }
        textarea, button, input, select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            border-radius: 0;
            font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
        }
        .terms_agree p span {
            color: rgb(242,17,76);
        }
        .terms_agree p a {
            display: inline-block;
            text-decoration: underline;
            color: rgba(0,0,0,0.87);
            font-size: 15px;
        }
        .layer_fix .btn_link {
            height: 56px;
            font-size: 16px;
            line-height: 56px;
        }
        .layer_fix .btn_link {
            display: block;
            width: 100%;
            height: 56px;
            margin-top: 16px;
            border-radius: 6px;
            font-size: 16px;
            line-height: 56px;
            color: #fff;
            text-align: center;
            border: none;
/*             background: #EFEFEF4D; */
            padding: 0;
            cursor: pointer;
        }
        .pop_login button {
            border: none;
        }
        button {
            padding: 0;
            cursor: pointer;
        }
        button:disabled {
            background-color: -internal-light-dark(rgba(239, 239, 239, 0.3), rgba(19, 1, 1, 0.3));
            color: -internal-light-dark(rgba(16, 16, 16, 0.3), rgba(255, 255, 255, 0.3));
            border-color: -internal-light-dark(rgba(118, 118, 118, 0.3), rgba(195, 195, 195, 0.3));
        }
        button {
            appearance: auto;
            writing-mode: horizontal-tb !important;
            text-rendering: auto;
            color: buttontext;
            letter-spacing: normal;
            word-spacing: normal;
            line-height: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            display: inline-block;
            text-align: center;
            align-items: flex-start;
            cursor: default;
            box-sizing: border-box;
            background-color: buttonface;
            margin: 0em;
            padding: 1px 6px;
            border-width: 2px;
            border-style: outset;
            border-color: buttonborder;
            border-image: initial;
        }
        button span {
            position: relative;
        }
        .gra_left_right_red {
            background: linear-gradient(to right, rgba(255,0,85,1) 1%,rgba(230,34,67,1) 100%);
        }
    </style>

</head>
<body class="pc">


 <script>
        function checkHandler(event) {
            // 전체 동의 버튼
            const allchkbox = document.getElementById('checkAll')
            
            // 하위 버튼들
            const checkbox = document.querySelectorAll('.terms_checkbox')
            
            // 다음 버튼
            const nextbtn = document.querySelector('.btn_link')
			
            let flag = false
            
			for(let i = 0; i < checkbox.length; i++) {
				checkbox[i].checked = event.target.checked
	            flag = checkbox[i].checked
			}
           	if(flag) {
            	nextbtn.classList.add('gra_left_right_red')
           	}
           	if(flag == false) {
           		nextbtn.classList.remove('gra_left_right_red')
           	}         
        }
        
        
        function chkHandler(event) {
        	// 전체 동의 버튼
        	const checkAll = document.getElementById('checkAll')
        	
        	// 하위 6개 버튼
        	const item = document.querySelectorAll('.terms_checkbox')
        	
        	// 다음 버튼
        	const nextbtn = document.querySelector('.btn_link')
        	
        	// 하위 6개 버튼 중 필수 요소 3개가 체크되면
        	let flag = (item[0].checked && item[1].checked && item[2].checked)
        	if(flag) {
            	nextbtn.classList.add('gra_left_right_red') // 다음 버튼에 색이 변하는 클래스를 추가해라
           	}
           	if(flag == false) { // 필수 요소 3개중 하나라도 체크되지 않으면
           		nextbtn.classList.remove('gra_left_right_red') // 다음 버튼에 색이 변하는 클래스를 제거해라
           	}
           	
           	// 하위 6개 버튼이 모두 체크되면
			allflag = (item[0].checked && item[1].checked && item[2].checked && item[3].checked && item[4].checked && item[5].checked)
			if(allflag) {
				checkAll.checked = true // 전체 동의 체크박스도 체크해라
			}
			else { // 하위 6개 버튼 중 하나라도 체크되지 않으면
				checkAll.checked = false // 전체 동의 체크박스 체크를 풀어라
			}
           	
        }
        
        function btnHandler(event) {
        	// 하위 6개 버튼
        	const item = document.querySelectorAll('.terms_checkbox')
        	const allchkbox = document.getElementById('checkAll')
        	
        	// 하위 6개 버튼 중 필수 요소 3개가 체크되면
        	let flag = (item[0].checked && item[1].checked && item[2].checked)
        	let highFlag = allchkbox.checked
        	
        	if(flag || highFlag) {
        		location.href = '${cpath}/join2'
        	}
		}
        
       
        
    </script>
    

    <div class="layer_fix pop_login pop_mem_reserve">
        <section>
            <div class="fix_title">
                <strong>요기어때 약관 동의</strong>
            </div>
    
            <div class="terms_agree">
                <p class="all_check">
                    <label><input type="checkbox" id="checkAll" class="inp_chk_02 chk_default">전체 동의</label>
                </p>
                <p>
                    <input type="checkbox" id="terms" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">이용약관 동의</a> <span>(필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="teenager" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">만 14세 이상 확인 </a><span> (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="privacy" value="N" class="inp_chk_02 chk_default terms_checkbox rq" require="">
                    <a href="">개인정보 수집 및 이용 동의 </a><span> (필수)</span>
                </p>
                <p>
                    <input type="checkbox" id="privacy_auxiliary_policy" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">개인정보 수집 및 이용 동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="marketing" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">마케팅 알림 수신동의</a> (선택)
                </p>
                <p>
                    <input type="checkbox" id="location" value="N" class="inp_chk_02 chk_default terms_checkbox">
                    <a href="">위치기반 서비스 이용약관 동의</a> (선택)
                </p>
    
                <button class="btn_link" id="terms_agree_btn" ><span>다음</span></button>
            </div>
        </section>
    </div>

    <script>
        // 첫번째 체크박스
        const checkAll = document.getElementById('checkAll')
        checkAll.addEventListener('change', checkHandler)
        
        // 하위 체크박스 요소들을 chkAll 변수로 불러와서
        const chkAll = document.querySelectorAll('.terms_checkbox')
        // chkAll 각 요소들을 btn이라고 할때 btn이 'change' event가 일어나면 chkHandler를 작동해라
        chkAll.forEach(btn => btn.addEventListener('change', chkHandler))

        const nextbtn = document.querySelector('.btn_link')
        nextbtn.addEventListener('click', btnHandler)
        
    </script>



</body>
</html>