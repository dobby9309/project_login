<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기오때</title>

<link rel="stylesheet" href="${cpath }/resources/stylecss/common.css">
<link rel="stylesheet" href="${cpath }/resources/stylecss/header.css">

<script src="${cpath }/resources/js/function.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="${cpath }/resources/stylecss/daterangepicker.css" />
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
<script type="text/javascript" src="${cpath }/resources/js/daterangepicker.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0ec84a3604985d54457683494bc933a9"></script>

</head>
<body class="pc">
    <div class="wrap">
        <header class="header">
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
						<!-- 로그인이 되어있지 않다면 로그인 페이지로 리다이렉트-->
                        <a href="#">예약내역</a>
                    </li>
                    <li>
                    	<c:if test="${empty login }">
						<!-- 로그인이 되어있다면 로그인 버튼이 아닌 닉네임 출력 -->
                        <a href="${cpath }/login"><span>로그인</span></a>
                        </c:if>
                        <c:if test="${not empty login }">
                        <a href="${cpath }/mypage">${login.email } (${login.nickName})</a>
                        <a href="${capth }/logout">로그아웃 </a>
                        </c:if>
                        
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>

	<!-- 	스크롤시 headder 변경  -->
    <script>
    	window.addEventListener('scroll', scrollHandler)
    </script>

</body>




<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/function.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<body class="pc">
    <div class="wrap">
        <header>
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
                        <a href="#">예약내역</a>
                    </li>
<!--                     <li class="over"> -->
<!--                         <button type="button"> -->
<!--                             <span>더보기</span> -->
<!--                         </button> -->
<!--                         <ul class="list_03"> -->
<!--                             <li><a href="#">공지사항</a></li> -->
<!--                             <li><a href="#">이벤트</a></li> -->
<!--                             <li><a href="#">자주 묻는 질문</a></li> -->
<!--                             <li><a href="#">1:1 문의</a></li> -->
<!--                             <li><a href="#">약관 및 정책</a></li> -->
<!--                         </ul> -->
<!--                     </li> -->
                    <li>
                        <a href="${cpath }/login"><span>로그인</span></a>
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>
	</div>
	<!-- 	스크롤시 headder 변경  -->
    <script>
	    jQuery(document).ready(function() {
	        var bodyOffset = jQuery('body').offset();
	        jQuery(window).scroll(function() {
	            if (jQuery(document).scrollTop() > bodyOffset.top) {
	                jQuery('header').addClass('scroll');
	            } else {
	                jQuery('header').removeClass('scroll');
	            }
	        });
	    });
    </script>




<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script>const cpath = '${cpath}'</script>
<script src="${cpath }/resources/js/function.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

</head>
<body class="pc">
    <div class="wrap">
        <header>
            <section>
                <h1><a class="" href="${cpath }" title="요기어때">요기어때</a></h1>
                <button type="button" class="btn_menu">메뉴</button>
                <ul class="gnb_pc">
                    <li>
                        <a href="#">예약내역</a>
                    </li>
<!--                     <li class="over"> -->
<!--                         <button type="button"> -->
<!--                             <span>더보기</span> -->
<!--                         </button> -->
<!--                         <ul class="list_03"> -->
<!--                             <li><a href="#">공지사항</a></li> -->
<!--                             <li><a href="#">이벤트</a></li> -->
<!--                             <li><a href="#">자주 묻는 질문</a></li> -->
<!--                             <li><a href="#">1:1 문의</a></li> -->
<!--                             <li><a href="#">약관 및 정책</a></li> -->
<!--                         </ul> -->
<!--                     </li> -->
                    <li>
                        <a href="${cpath }/login"><span>로그인</span></a>
                    </li>
                </ul>
                <!-- //Search -->
            </section>
        </header>

	<!-- 	스크롤시 headder 변경  -->
    <script>
	    jQuery(document).ready(function() {
	        var bodyOffset = jQuery('body').offset();
	        jQuery(window).scroll(function() {
	            if (jQuery(document).scrollTop() > bodyOffset.top) {
	                jQuery('header').addClass('scroll');
	            } else {
	                jQuery('header').removeClass('scroll');
	            }
	        });
	    });
    </script>



</body>
</html>

