<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="join.jsp" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<style>
            html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
        }
        html, body {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
            font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            font-size: 14px;
            line-height: 1;
            color: rgba(0,0,0,0.87);
            -webkit-text-size-adjust: none;
            display: block;
        }




        header {
            background: #f7323f;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            height: 72px;
            transition: 0.4s;
            z-index: 210;
        }
        header.scroll {
            background: #fff;
            box-shadow: 0px 2px 3px 0px rgb(0 0 0 / 10%);
        }
        header section {
            position: relative;
            width: 1024px;
            height: 64px;
            background: none;
            margin: 0 auto;
        }
        header section h1 a {
            position: absolute;
            top: 17px;
            left: 36px;
            width: 125px;
            height: 36px;
            margin: 0;
            background: url('resources/image/요기오때흰색로고.png') no-repeat;
            background-size: 100px auto;
        }
        header section h1 a {
            display: block;
            text-indent: -9999px;
        }
        header.scroll .gnb_pc li a, header.scroll .gnb_pc li button {
            color: rgba(0,0,0,0.87);
        }
        header.scroll section h1 a {
            background: url('resources/image/요기오때빨간색로고.png') no-repeat;
            background-size: 100px auto
        }
        header section .btn_menu {
            display: none;
        }
        .wrap {
            width: 100%;
            background: #fff;
        }
        .wrap.show {
            opacity: 1;
            visibility: visible;
        }
        .pc .gnb_pc {
            width: auto;
            text-align: right;
            display: inline-block;
            position: absolute;
            top: 27px;
            right: 34px; 
        }
        .gnb_pc li {
            display: inline-block;
            position: relative;
            min-width: 53px;
            min-height: 35px;
            margin-left: 30px;
            vertical-align: top;
        }
        .gnb_pc li button {
            border: none;
            padding: 0;
            background: none;
            font-size: 18px;
            line-height: 1;
            color: rgba(255,255,255,0.8);
            letter-spacing: 0;
        }
        .gnb_pc li button:hover {
            color: rgba(255, 255, 255, 1);
            opacity: 1;
        }
        .gnb_pc .list_03 {
            top: 30px;
            left: -65px;
            width: 184px;
        }
        .gnb_pc li ul {
            display: none;
            animation: menuAni 0.6s;
            position: absolute;
            top: 0;
            left: 0;
            border-radius: 5px;
            padding: 32px;
            background: #fff;
            text-align: left;
            box-shadow: 0px 3px 5px 0px rgb(0 0 0 / 20%);
        }
        @keyframes menuAni {
            0% {
            opacity: 0;
            }
            100% {
            opacity: 1;
            }
        }
        .gnb_pc .over:hover ul {
            display: block;
        }
        .gnb_pc li ul li {
            display: block; 
            min-width: auto;
            min-height: auto;
            margin: 0 0 14px 0;
        }
        .gnb_pc li a:hover {
            color: #fff;
        }
        .gnb_pc li ul li a:hover {
            color: rgba(0,0,0,0.87);
        }
        .gnb_pc li ul li a {
            overflow: visible !important;
            display: block;
            position: relative !important;
            top: auto !important;
            left: auto !important;
            width: auto !important;
            height: auto !important;
            margin: 0;
            font-size: 16px;
            color: rgba(0,0,0,0.87);
        }
        .gnb_pc li ul li a span{
            display:inline-block;
            padding-left:6px;
            font-weight:bold;
            color:rgb(230,28,81)
        }
        .gnb_pc li ul li:last-child {
            margin-bottom: 0;
        }
        .gnb_pc li a {
            display: inline-block;
            font-size: 18px;
            color: rgba(255, 255, 255, 0.8);
            letter-spacing: 0;
            text-decoration: none;
        }



        ul, ol, li {
            list-style: none;
        }
        .sub_top_wrap {
            height: 211px;
            background: #f7323f;
        }
        .sub_top {
            width: 1024px;
            height: 211px;
            margin: 0 auto;
            padding-top: 72px;
            border-radius: 0;
            background: none;
            position: relative;
        }
        .sub_top h2 {
            display: block;
            margin: 21px 0 0 31px;
            font-size: 38px;
            font-weight: normal;
            letter-spacing: -1px;
            color: #fff;
        }
        #content {
            overflow: hidden;
        }
        .my_wrap {
            padding-top: 54px;
        }
        .sub_wrap {
            min-height: 390px;
        }
        .sub_wrap {
            width: 1024px !important;
            margin: 0 auto 0 auto;
            padding-bottom: 50px;
        }
        .sub_wrap .sub_title {
            display: none;
            position: relative;
            height: 44px;
            background: #fff;
            font-size: 18px;
            line-height: 44px;
            text-align: center;
        }
        .sub_wrap nav {
            display: block;
            float: left;
            width: 238px;
            padding-left: 31px;
        }
        .sub_wrap nav ul li {
            margin-bottom: 26px;
        }
        .sub_wrap nav ul li a {
            display: block;
            font-size: 18px;
            color: rgba(0,0,0,0.56);
            text-decoration: none;
        }
        .sub_wrap .align_rt {
            float: right;
            width: 724px;
            margin-right: 31px;
        }
        .mypage {
            border-top: none;
            padding: 0;
            font-size: 18px;
            overflow: hidden;
        }
        .mypage .mypageForm__form-inputs-wrap {
            display: none;
        }
        .mypage form:first-child .top_area {
            position: relative;
            padding-top: 137px;
        }
        .mypage strong {
            padding: 0 0 43px 0;
            display: block;
        }
        .login_info {
            position: relative;
            text-align: left;
            top: 0;
            left: 0;
            width: 100%;
        }
        .login_info div {
            width: 128px;
            height: 128px;
            margin: 0 0 26px 0;
            display: inline-block;
            overflow: hidden;
            border-radius: 100%;
        }
        .login_info div img {
            width: 100%;
            height: 100%;
        }
        fieldset, img {
            border: 0;
        }
        .login_info p {
            padding-bottom: 42px;
            font-size: 15px;
            font-weight: bold;
            color: rgba(0,0,0,0.32);
        }
        .mypage .pw_input {
            position: relative;
        }
        .mypage .pw_input__title {
            padding-right: 240px;
        }
        .mypage .pw_input__title b {
            width: 120px;
            float: left;
        }
        .mypage b {
            margin-bottom: 12px;
            display: block;
            font-weight: normal;
        }
        .mypage .pw_input__title .title__uinfo {
            color: rgba(0,0,0,0.56);
            float: left;
        }
        .mypage .pw_input section {
            position: relative;
            margin: 0 0 33px 0;
            padding-right: 110px;
        }
        .mypage .inp_wrap {
            width: 374px;
            margin-bottom: 20px;
            margin-top: 15px;
        }
        .inp_wrap {
            border: 1px solid rgba(0,0,0,0.08);
            padding: 8px 14px 8px 16px;
            position: relative;
            height: 48px;
            border-radius: 4px;
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
        .mypage .pw_input section .btn_confirm.active {
            background: #ff0055;
            right: auto;
            left: 384px;
        }
        .mypage .pw_input section .btn_confirm {
            position: absolute;
            top: 0;
            width: 100px;
            height: 44px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: normal;
            color: #fff;
        }
        .mypage .pw_input .pw_input__btns-wrap {
            display: block;
            overflow: hidden;
            margin-bottom: 50px;
            padding-right: 110px;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn, .mypage .pw_input .pw_input__btns-wrap .btns-wrap__cancel-btn {
            border: solid 1px #ccc;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn {
            display: block;
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            float: left;
            margin-right: 5%;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            color: rgba(0,0,0,0.87);
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
            background-color: #fff;
        }
        .mypage .pw_input__btns-wrap .btns-wrap__submit-btn {
            border: none;
            color: #fff;
            background: linear-gradient(to bottom, #ff0055 0%,#e62243 100%);
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            display: none;
            float: left;
            margin-right: 5%;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn, .mypage .pw_input .pw_input__btns-wrap .btns-wrap__cancel-btn {
            border: solid 1px #ccc;
        }
        .mypage .pw_input__btns-wrap button:last-child {
            margin-right: 0px;
        }
        .mypage .pw_input__btns-wrap .btns-wrap__cancel-btn {
            background: none;
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            display: none;
            float: left;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            color: rgba(0,0,0,0.87);
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
        }
        .mypage .mypageForm__form-inputs-wrap {
            display: none;
        }
        .mypage .top_area {
            padding-top: 0;
        }
        .mypage .pw_input {
            position: relative;
        }
        .mypage .pw_input__title {
            padding-right: 240px;
        }
        .mypage .pw_input__title b {
            width: 120px;
            float: left;
        }
        .mypage b {
            margin-bottom: 12px;
            display: block;
            font-weight: normal;
        }
        .mypage .pw_input__title .title__uinfo {
            color: rgba(0,0,0,0.56);
            float: left;
        }
        .mypage form[data-form="uname"] .pw_input section {
            padding-right: 0;
        }
        .mypage .pw_input section {
            position: relative;
            margin: 0 0 33px 0;
        }
        .mypage .inp_wrap {
            width: 374px;
            margin-bottom: 20px;
            margin-top: 15px;
        }
        .inp_wrap {
            border: 1px solid rgba(0,0,0,0.08);
            padding: 8px 14px 8px 16px;
            position: relative;
            height: 48px;
            border-radius: 4px;
        }
        .mypage .pw_input .pw_input__btns-wrap {
            display: block;
            overflow: hidden;
            margin-bottom: 50px;
            padding-right: 110px;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn, .mypage .pw_input .pw_input__btns-wrap .btns-wrap__cancel-btn {
            border: solid 1px #ccc;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn {
            display: block;
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            float: left;
            margin-right: 5%;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            color: rgba(0,0,0,0.87);
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
            background-color: #fff;
        }
        .mypage .pw_input__btns-wrap .btns-wrap__submit-btn {
            border: none;
            color: #fff;
            background: linear-gradient(to bottom, #ff0055 0%,#e62243 100%);
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn, .mypage .pw_input .pw_input__btns-wrap .btns-wrap__cancel-btn {
            border: solid 1px #ccc;
        }
        .mypage .pw_input__btns-wrap button:last-child {
            margin-right: 0px;
        }
        .mypage .pw_input__btns-wrap .btns-wrap__cancel-btn {
            background: none;
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            display: none;
            float: left;
            margin-right: 5%;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
        }
        .mypage section:first-child {
            border-bottom: 1px solid rgba(0,0,0,0.08);
        }
        .mypage .mypageForm__form-inputs-wrap {
            display: none;
        }
        .mypage .pw_input {
            position: relative;
        }
        .phone_confirm {
            margin-top: 16px;
        }
        .mypage .pw_input__title {
            padding-right: 240px;
        }
        .mypage .pw_input__title b {
            width: 120px;
            float: left;
        }
        .mypage b {
            margin-bottom: 12px;
            display: block;
            font-weight: normal;
        }
        .mypage .pw_input__title .title__uinfo {
            color: rgba(0,0,0,0.56);
            float: left;
        }
        .mypage .safety_txt {
            clear: both;
        }
        .safety_txt {
            padding-bottom: 14px;
            font-size: 14px;
            display: block;
            color: rgba(0,0,0,0.56);
        }
        .mypage #sendCode section {
            border-bottom: 0;
        }
        .mypage .phone_confirm section {
            padding: 0;
        }
        .mypage .pw_input section {
            position: relative;
            margin: 0 0 33px 0;
        }
        .mypage .inp_wrap {
            width: 374px;
            margin-bottom: 20px;
            margin-top: 15px;
        }
        .inp_wrap {
            border: 1px solid rgba(0,0,0,0.08);
            padding: 8px 14px 8px 16px;
            position: relative;
            height: 48px;
            border-radius: 4px;
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
            -webkit-mask-size: 18px 18px;
        }
        .mypage .pw_input section .btn_confirm {
            right: auto;
            left: 384px;
            position: absolute;
            top: 0;
            width: 100px;
            height: 44px;
            border: none;
            border-radius: 4px;
            background: #ccc;
            font-size: 14px;
            font-weight: normal;
            color: #fff;
        }
        .mypage .phone_confirm section {
            padding: 0;
        }
        .mypage .pw_input section {
            position: relative;
            margin: 0 0 33px 0;
        }
        .mypage .inp_wrap {
            width: 374px;
            margin-bottom: 20px;
            margin-top: 15px;
        }
        .inp_wrap {
            border: 1px solid rgba(0,0,0,0.08);
            padding: 8px 14px 8px 16px;
            position: relative;
            height: 48px;
            border-radius: 4px;
        }
        .mypage .pw_input section span {
            display: inline-block;
            position: absolute;
            top: 0;
            right: 10px;
            height: 48px;
            line-height: 48px;
            color: #ff0055;
        }
        .mypage .pw_input section .btn_confirm {
            right: auto;
            left: 384px;
            position: absolute;
            top: 0;
            width: 100px;
            height: 44px;
            border: none;
            border-radius: 4px;
            background: #ccc;
            font-size: 14px;
            font-weight: normal;
            color: #fff;
        }
        .mypage .pw_input .pw_input__btns-wrap {
            display: block;
            overflow: hidden;
            margin-bottom: 50px;
            padding-right: 110px;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn, .mypage .pw_input .pw_input__btns-wrap .btns-wrap__cancel-btn {
            border: solid 1px #ccc;
        }
        .mypage .pw_input .pw_input__btns-wrap .btns-wrap__edit-btn {
            display: block;
        }
        .mypage .pw_input__btns-wrap button {
            width: 144px;
            float: left;
            margin-right: 5%;
            height: 42px;
            border-radius: 4px;
            font-size: 15px;
            color: rgba(0,0,0,0.87);
            text-align: center;
            box-sizing: border-box;
            vertical-align: top;
            background-color: #fff;
        }
        .mypage .bot_link {
            margin: 46px 0;
        }
        .mypage .bot_link a {
            display: inline-block;
            color: rgba(0,0,0,0.87);
            text-decoration: underline;
        }
        .bot_btn {
            height: 56px;
            margin-top: 48px;
            border-top: 1px solid rgba(0,0,0,0.08);
            background: none;
            text-align: left;
            padding-right: 16px;
        }
        .bot_btn p {
            display: inline-block;
            padding-top: 23px;
            font-size: 16px;
            color: rgba(0,0,0,0.56);
        }
        .bot_btn button {
            height: auto;
            margin-top: 0;
            padding: 0 8px;
            border: none;
            background: none;
            font-size: 16px;
            width: 80px;
            color: rgba(0,0,0,0.87);
            text-align: center;
            text-decoration: underline;
        }
        .bot_btn button a {
            width: 80px;
            color: rgba(0,0,0,0.87);
            text-decoration: underline;
        }
        .pc header section .btn_srch {
            right: 396px;
            position: absolute;
            border: none;
            text-indent: -9999px;
            top: 22px;
            right: 396px;
            z-index: 10;
            width: 30px;
            height: 30px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_srch_2.png') 50% 50% no-repeat;
            background-size: 24px auto;
            display: inline-block;
            margin: 0;
            padding: 0;
            cursor: pointer;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            font: normal 400 14px/16px 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            color: #000;
            -webkit-appearance: none;
            border-radius: 0;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            writing-mode: horizontal-tb !important;
            text-rendering: auto;
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-shadow: none;
            align-items: flex-start;
            box-sizing: border-box;
        }
        .pc .srch_bar {
            position: absolute;
            top: 24px;
            left: 50%;
            right: auto;
            width: 725px;
            height: 21px;
            margin-left: -277px;
            background: none;
            display: none;
            z-index: 300;
            touch-action: none;
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .pc .srch_bar .wrap_inp {
            margin: 0;
            padding: 0;
            height: auto;
            border: none;
            border-radius: 0;
            background: none;
            overflow: hidden;
            position: relative;
            box-sizing: border-box;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .pc .srch_bar .wrap_inp input {
            margin: 0;
            background: none;
            font-size: 18px;
            color: #fff;
            height: 21px;
            border: none;
            width: 100%;
            line-height: 20px;
            -webkit-appearance: none;
            border-radius: 0;
            font-family: 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .srch_bar .wrap_inp .btn_srch {
            display: none;
            right: 396px;
            position: absolute;
            top: 3px;
            left: 8px;
            width: 24px;
            height: 24px;
            border: none;
            background: url('//image.goodchoice.kr/images/web_v3/ico_srch_3.png') 50% 50% no-repeat;
            background-size: 24px auto;
            text-indent: -9999px;
            z-index: 10;
            margin: 0;
            padding: 0;
            cursor: pointer;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            font: normal 400 14px/16px 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            color: #000;
            -webkit-appearance: none;
            border-radius: 0;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }
        .pc .srch_bar .btn_cancel {
            top: -8px;
            right: -41px;
            width: 35px;
            height: 35px;
            background: url('//image.goodchoice.kr/images/web_v3/ico_close_2.png') 50% 50% no-repeat;
            background-size: 24px auto;
            text-indent: -9999px;
            display: inline-block;
            position: absolute;
            border: none;
            font-size: 14px;
            line-height: 44px;
            color: rgba(0,0,0,0.87);
            margin: 0;
            padding: 0;
            cursor: pointer;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            font: normal 400 14px/16px 'Pretendard', 'Apple SD Gothic Neo', '맑은 고딕', '맑은고딕', 'Malgun Gothic', sans-serif;
            border-radius: 0;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
        }



        footer {
            overflow: hidden;
            margin-top: 120px;
            padding: 63px 31px 40px 31px !important;
            border-top: 1px solid rgba(0,0,0,0.08);
            background: rgb(245,245,245);
            font-size: 13px;
            line-height: 20px;
            color: rgba(0,0,0,0.38);
        }
        footer a {
            color: rgba(0,0,0,0.38);
        }
        footer .align {
            width: 1024px;
            margin: 0 auto;
        }
        footer .link {
            overflow: hidden;
        }
        footer .link li {
            float: left;
            margin-bottom: 5px;
            line-height: normal;
        }
        footer .link li span {
            display: inline-block;
            position: relative;
            top: -2px;
            width: 24px;
            font-size: 11px;
            text-align: center;
        }
        footer .link li:nth-of-type(3) a {
            color: rgba(0,0,0,0.87);
        }
        footer .link li:nth-child(5), footer .link li:nth-child(8) {
            clear: none;
        }
        footer .link li button {
            font-family: -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", Pretendard, Roboto, "Noto Sans KR", "Segoe UI", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
            font-size: 13px;
            padding: 0;
            border: none;
            background: none;
            line-height: 1;
            color: rgba(0,0,0,0.38);
        }
        footer .link li:nth-child(6) {
            clear: both;
        }
        footer .link li:nth-child(6) {
            clear: both;
        }
        footer .link li:last-child {
            margin-bottom: 0;
        }
        footer p {
            clear: both;
            padding: 37px 0 24px 0;
        }
        footer p b {
            display: inline-block;
            margin-right: 10px;
        }
        footer p span {
            display: inline-block;
        }
        address {
            font-style: normal;
            font-weight: normal;
        }
        footer address {
            display: inline-block;
            line-height: 22px;
        }
        footer address span {
            display: block;
            padding-bottom: 7px;
        }
        footer address .order {
            display: block;
            padding: 6px 0;
        }
        .btn_go_top {
            display: block;
            position: fixed;
            bottom: 15px;
            right: 15px;
            z-index: 20;
            width: 40px;
            height: 40px;
            border: none;
            cursor: pointer;
            background: url("https://image.goodchoice.kr/images/web_v3/ico_top.png") 0 0 no-repeat;
            background-size: 40px auto;
            text-indent: -9999px;
        }
</style>


</head>
<body class="pc">

<script>
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

function scrollToTop(event) {
	let target = document.documentElement
	
	target.scrollTop = 0
}
</script>


    <div class="wrap">
        <header class="header">
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
                        <a href="#">예약내역</a>
                    </li>
                    <li>
						<!-- 로그인 했을시 로그인 버튼이 아닌 닉네임 출력 -->
                        <a href="${cpath }/login"><span>로그인</span></a>
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>

    <!-- Sub Top -->
    <div class="sub_top_wrap">
        <div class="sub_top bg_kong_2">
            <h2>내정보</h2>
        </div>
    </div>
    <!-- //Sub Top -->
    <!-- Content  -->
    <div id="content" class="sub_wrap my_wrap">
        <p class="sub_title">내 정보 관리</p>
    
        <!-- Nav -->
            <nav>
            <ul>
                <li><a class="" href="/my/reserveList">예약 내역</a></li>
                            <li><a class="active" href="/my/mypage">내 정보 관리</a></li>
            </ul>
        </nav>
        <div class="align_rt">
            <div class="mypage">	


                <form name="form1" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="unick">
                    <!-- 폼전송시 전달되는 data target element -->
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                        <input type="text" name="unick" id="test1" aria-hidden="true" value="파키스탄만병초">
                        <input type="text" name="uname" aria-hidden="true" value="">
                        <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                    </div>
    
                    <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                    <input type="hidden" id="utype" name="utype" value="1">
                    <input type="hidden" name="utype" value="1">
                    <!--// 폼전송시 전달되는 data target element -->
                    <section class="top_area">
                        <strong>내 정보 수정</strong>
                        <div class="login_info">
                            <div><img src="https://image.goodchoice.kr/profile/ico/ico_21.png" alt=""></div>
                            <p>vlvkdksgo@naver.com</p>
                        </div>
    
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>닉네임</b>
                                <span class="title__uinfo">파키스탄만병초</span>
                            </div>
                            <section class="modifying-section" style="display: none;">
                                <p class="inp_wrap remove form-errors">
                                    <input type="text" value="파키스탄만병초" placeholder="체크인시 필요한 정보입니다." data-input="unick" data-msg-required="닉네임을 입력하세요." data-rule-minlength="2" data-rule-maxlength="14" data-rule-spacechar="true" data-rule-specialchar="true">
                                </p>
                            </section>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn" type="button">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>





                <form name="form2" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
                    <!-- 폼전송시 전달되는 data target element -->
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                        <input type="text" name="unick" aria-hidden="true" value="파키스탄만병초">
                        <input type="text" name="uname" aria-hidden="true" value="">
                        <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                    </div>
                    <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                    <input type="hidden" name="utype" value="1">
    
                    <section class="top_area">
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>예약자 이름</b>
                                <span class="title__uinfo"></span>
                            </div>
                            <section class="modifying-section" style="display: none;">
                                <p class="inp_wrap remove form-errors">
                                    <input type="text" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
                                </p>
                            </section>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn" type="button" style="?android:attr/borderlessButtonStyle">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button" style="?android:attr/borderlessButtonStyle">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>





                <form name="form2" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uname">
                    <!-- 폼전송시 전달되는 data target element -->
                    <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                        <input type="text" name="unick" aria-hidden="true" value="파키스탄만병초">
                        <input type="text" name="uname" aria-hidden="true" value="">
                        <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                    </div>
                    <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                    <input type="hidden" name="utype" value="1">
    
                    <section class="top_area">
                        <div class="pw_input">
                            <div class="pw_input__title">
                                <b>포인트</b>
                                <span class="title__uinfo"></span>
                            </div>
                            <section class="modifying-section" style="display: none;">
                                <p class="inp_wrap remove form-errors">
                                    <input type="text" id="uname" value="" placeholder="체크인시 필요한 정보입니다." data-input="uname" data-rule-spacechar="true" data-rule-specialchar="true">
                                </p>
                            </section>
                            <div class="pw_input__btns-wrap">
                                
                            </div>
                        </div>
                    </section>
                </form>
    



                <form name="form3" action="https://www.goodchoice.kr/my/mypageInfoUpdate" autocomplete="off" method="post" novalidate="novalidate" data-form="uphone">
                    <section>
                        <!-- 폼전송시 전달되는 data target element -->
                        <div class="mypageForm__form-inputs-wrap" aria-hidden="true">
                            <input type="text" name="unick" aria-hidden="true" value="파키스탄만병초">
                            <input type="text" name="uname" aria-hidden="true" value="">
                            <input type="tel" name="uphone" aria-hidden="true" value="010****0875">
                        </div>
                        <input type="hidden" name="yeogi_token" value="485f6b5db15264fe900894b6a593faae">
                        <input type="hidden" name="utype" value="1">
                        <div class="pw_input phone_confirm">
                            <div class="pw_input__title">
                                <b>휴대폰 번호</b>
                                <span class="title__uinfo">010****0875</span>
                                <div class="safety_txt">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>
                            </div>
                            <div class="modifying-section" style="display: none;">
                                <div id="sendCode">
                                    <section>
                                        <div class="inp_wrap remove form-errors">
                                            <input type="tel" id="phone_number" value="" placeholder="체크인시 필요한 정보입니다." maxlength="13" data-input="uphone" data-msg-required="휴대폰 번호를 인증받으세요." data-rule-phonenumber="true">
                                            <button type="button" class="btn_checked">확인</button>
                                        </div>
                                        <button type="button" class="btn_send btn_confirm">인증번호 전송</button> <!-- 활성화 클래스 'active' -->
                                    </section>
                                </div>
                                <div id="verificationCode" style="display: none;">
                                    <b>인증 번호</b>
                                    <section>
                                        <div class="inp_wrap remove">
                                            <input type="tel" id="digit" minlength="4" maxlength="4">
                                            <span class="timer">&nbsp;</span>
                                        </div>
                                        <button type="button" class="btn_ok btn_confirm" data-verification-type="call" data-verification-next="mypageVerify">확인</button>
                                    </section>
                                </div>
                                <input type="hidden" id="phone_certification_point" value="MYPAGE" style="display: none;">
                            </div>
                            <div class="pw_input__btns-wrap">
                                <button class="btns-wrap__edit-btn " type="button">수정</button>
                                <button class="btns-wrap__submit-btn" type="submit">수정완료</button>
                                <button class="btns-wrap__cancel-btn" type="button">수정취소</button>
                            </div>
                        </div>
                    </section>
                </form>
                <!-- <button class="btn_submit disabled btn_one" type="submit">저장</button>-->
    
                                <p class="bot_link"><a href="https://www.goodchoice.kr/my/mypagePwChange">비밀번호 변경</a> &gt;</p>
                        </div>
    
            <div class="bot_btn">
                <p>여기어때를 이용하고 싶지 않으신가요?</p>
                                <button type="button"><a href="https://www.goodchoice.kr/my/withdraw">회원탈퇴</a></button>
                        </div>
        </div>
    </div>
    <!-- //Content  -->
    


<!-- footer -->
    <footer>
        <div class="align">
            <ul class="link">
                <li><a href="#">회사소개</a><span>|</span></li>
                <li><a href="#">이용약관</a><span>|</span></li>
                <li><a href="#">개인정보처리방침</a><span>|</span></li>
                <li><a href="#">소비자 분쟁해결 기준</a><span>|</span></li>
                <li><button type="button">사업자 정보확인</button><span>|</span></li>
                <li><a href="#">요기어때 마케팅센터</a><span>|</span></li>
                <li><a href="#">액티비티 호스트센터</a><span>|</span></li>
                <li><a href="#">HOTEL 요기어때</a><span>|</span></li>
                <li><a href="#">콘텐츠산업진흥법에의한 표시</a></li>
            </ul>
            <p>
                <b>고객행복센터 1670-6250</b>
                <span>오전 9시 - 새벽 3시</span>
            </p>
            <address>
                <span>(주) 요기어때컴퍼니</span>
                       주소 : 서울특별시 강남구 봉은사로 479, 479타워 11층 | 대표이사 : 정명훈 | 사업자등록번호: 742-86-00224<br>
                    통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호: 제1026-24호 | 전화번호 : 1670-6250 | 전자우편주소 : help@goodchoice.kr<br>
                <span class="order">(주) 요기어때컴퍼니는 통신판매중개자로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.</span><br>
                Copyright GC COMPANY Corp. All rights reserved.
            </address>
        </div>
    </footer>
    <div class="btn_go_top">상단으로</div>
</div>

<script>
const toTop = document.querySelector('.btn_go_top')

toTop.addEventListener('click', scrollToTop)
window.addEventListener('scroll', scrollHandler)
</script>


</body>
</html>