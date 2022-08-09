<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="join.jsp" %>

<style>
        div {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
        }
        .layer_fix.fix_disable {
             overflow: auto;
/*             position: relative; */
            touch-action: auto;
        }
        .layer_fix {
            font-size: 15px;
            line-height: 26px;
            color: rgba(0,0,0,0.87);
        }
        .layer_fix {
            display: block;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 400;
            width: 100%;
            min-width: 320px;
            height: 100%;
            background: #fff;
        }
        .layer_fix > section {
            width: 336px;
            margin: 100px auto 0 auto;
            box-sizing: border-box;
        }
        form {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
        }
        .layer_fix .fix_title {
            display: block !important;
            margin-bottom: 16px;
            position: relative;
            background: #fff;
            border-bottom: none;
        }
        h1 {
            display: block;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
        }
        .fix_title h1.page_head a {
            display: inline-block;
            width: 112px;
            height: 44px;
            background: url('resources/image/요기오때빨간색로고.png') no-repeat;
            background-size: 100px auto;
            text-indent: -9999px;
        }
        .fix_title h1.page_head {
            text-align: center;
        }
        strong {
            font-weight: bold;
        }
        .layer_fix .sub_title {
            display: block;
            margin: 30px 0 10px 0;
            font-size: 18px;
            text-align: center;
        }
        .join b {
            display: block;
            margin-bottom: 9px;
            font-size: 16px;
            font-weight: bold;
            color: rgba(0,0,0,0.56);
        }
        .join > div {
            margin-bottom: 38px;
        }
        .inp_type_2 {
            padding: 0 10px;
            position: relative;
            height: 48px;
            margin-bottom: 38px;
            padding: 0 16px;
            border: 1px solid rgba(0,0,0,0.08);
            border-radius: 6px;
            box-sizing: border-box;
        }
        .inp_type_2 input {
            position: relative;
            top: 13px;
            width: 100%;
            height: 20px;
            padding: 0;
            border: none;
            font-size: 18px;
            vertical-align: top;
            border-radius: 0;
            font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .validate_msg_label {
            margin-top: 20px;
            display: inline-block;
            font-size: 13px;
        }
        label {
            cursor: pointer;
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
        }
        .gra_left_right_red {
           background: linear-gradient(to right, rgba(255,0,85,1) 1%,rgba(230,34,67,1) 100%);
       }
        
    </style>
    </head>
    
    
    
    <div class="layer_fix pop_login pop_mem_reserve fix_disable">
        <section>
        <form id="joinForm" action="https://www.goodchoice.kr/user/joinProcess" autocomplete="off" method="post" novalidate="novalidate">
            <input type="hidden" name="yeogi_token" value="c99c88280b18f8f1e263d593326085b6">
    
            <input type="hidden" name="privacy_auxiliary_policy">
            <input type="hidden" name="location_policy">
            <input type="hidden" name="marketing_acceptance">
    
            <div class="fix_title">
                <h1 class="page_head"><a href="" title="여기어때">여기어때</a></h1>
            </div>
    
            <div class="join">
                <strong class="sub_title">회원가입</strong>
                <b>이메일 아이디</b>
                <div class="inp_type_2 form-errors"><!-- focus / err -->
                    <input type="email" name="uid" id="gcuseremail" placeholder="이메일 주소를 입력해주세요.">
                    <label id="gcuseremail_msg" class="validate_msg_label" style="color: red;"></label>
                </div>
    
                <b>비밀번호</b>
                <div class="inp_type_2 form-errors form-password-rule">
                    <input type="password" name="upw" placeholder="비밀번호를 입력해주세요." id="new_pw">
                    <label id="new_pw_msg" class="validate_msg_label"></label>
                </div>
    
                <b>비밀번호 확인</b>
                <div class="inp_type_2 form-errors">
                    <input type="password" name="upw_retry" placeholder="비밀번호를 입력해주세요." id="new_pw_re">
                    <label id="new_pw_re_msg" class="validate_msg_label"></label>
                </div>
    
                <b>닉네임</b>
                <div class="inp_type_2 form-errors btn-add">
                    <input type="text" id="unick" name="unick" required="" class="required" placeholder="닉네임을 입력하세요." data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true"><label id="unick-error" class="error help-block default_label_txt icon-ic_downwards_arrow" for="unick"></label>
                </div>
    
                <button type="button" id="joinBtn" class="btn_link btn_user_submit"><span>가입하기</span></button> <!-- style="background-color: rgb(250, 250, 250); color: rgba(0, 0, 0, 0.16); border: none; -->
            </div>
        </form>
    </section>
    </div>

   <script>
      const gcuseremail = document.getElementById('gcuseremail')
      const new_pw = document.getElementById('new_pw')
      const new_pw_re = document.getElementById('new_pw_re')
      const unick = document.getElementById('unick')
      const btn = document.getElementById('joinBtn')
      btn.disabled = true;
      
   </script>

</body>
</html>