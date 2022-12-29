<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- 데이터 피커 사용을 위한 script 선언 3줄 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
  $(function(){
    $('.datepicker1').datepicker();
    $('.datepicker2').datepicker();
    $.datepicker.setDefaults({
    	  dateFormat: 'yy-mm-dd', /**데이터 클릭후 출력 형식*/
    	  prevText: '이전 달',
    	  nextText: '다음 달',
    	  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    	  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    	  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    	  showMonthAfterYear: true,
    	  yearSuffix: '년',
    	  minDate: 0
    	});
  })
  
  function reserveProcess() {
		var searchParams = {}
	
		//데이터 피커 value 가져오기 
		var searchDateFrom = $("#datepicker1").val();
		var searchDateEnd = $("#datepicker2").val();
		
		//예약 유효성 체크
		var check = reserveValidationCehck();
	
		if(searchDateFrom=="" || searchDateEnd=="" ||check == -1){
			alert("예약날짜로 유효한 날짜를 선택하세요.");
			
			//예약날짜를 초기화 한 후 datePicker1로 focus이동
			$("#datepicker1").datepicker('setDate', "");
			$("#datepicker2").datepicker('setDate', "");
			document.getElementById("datepicker1").focus();
			
			//유효성 체크를 통과하지 않았을 경우 return false를 받아 예약 Process로 넘어가지 않도록 방지한다.
			return false;
		}
			
		searchParams["searchDateFrom"] = searchDateFrom; //yy-mm-dd 형식으로 데이터를 넘겨준다.
		searchParams["searchDateEnd"] = searchDateEnd; //yy-mm-dd 형식으로 데이터를 넘겨준다.
		
		console.log(searchParams);
		return searchParams;
	}
  function reserveValidationCehck(){
	var searchDateFrom = parseInt($("#datepicker1").val().replace(/-/gi,'')); //yymmdd 형식으로 데이터를 넘겨준다.
	var searchDateEnd = parseInt($("#datepicker2").val().replace(/-/gi,'')); //yymmdd 형식으로 데이터를 넘겨준다.
	
	var checkValue = searchDateEnd- searchDateFrom;

	if(checkValue < 0){
		return -1;
	}
  }
 
</script>
<style>
 	.bi-calendar-check{
 		font-size:30px;
 	}
 	.inputReg{
 		font-size:15px;
 		width: 110px;
 		text-algin:center;
 		padding:5px 5px 5px 30px; <!-- 상 우 하 좌 -->
 	}
 	
</style>
</head>
<body>
	<div style="margin:100px;">
		<h2>캘린더 테스트</h2>
		<!-- 
			label for은 폼의 양식에 이름을 붙이는 형식이다. 
			label for="이름a"이 id="이름a" 와 같이 일치한다면, 서로 값이 연결된다.
		-->
		<!-- 
			클래스명 띄어쓰기시 한 태그에 두개의 class를 지정할 수 있다.
			따라서 bi bi-calendar-check의 경우 class="bi" || class="bi-calendar-check" 두가지를 가진 것이다.
		 -->
		 <form name="reserve">
		 	<div style="margin-bottom:100px;">
				<input type="text" class="inputReg datepicker1" id="datepicker1" autocomplete="off" desc="등록일" />
				<label for="datepicker1" class="btn has-icon"><i class="bi bi-calendar-check"></i></label>
				&nbsp; <span class="inputReg">~</span> &nbsp;
				<input class="inputReg datepicker2" id="datepicker2">
				<label for="datepicker2" class="btn has-icon"><i class="bi bi-calendar-check"></i></label>
			</div>
			<button type="button" onclick="reserveProcess()">예약하기</button>
		</form>
	</div>
</body>
</html>