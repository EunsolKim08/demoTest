<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<script>

function search(){
	
	$.ajax({
		data : { "result" : "1" }
		,url : "directLoad"
		,type : "POST"
		/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		,success : function(data) {
			console.log("성공");
			$("#testAjax2").html(data); /*data로 받은 secondModal 페이지의 내용을 채움*/
		}
	});
	
	$("#modal2").css('display', 'block');
}
</script>
<div>
	<h2>두번째 모달</h2>
	<div id="goThirdModal">111</div>
	<button type="button" onclick="search()" style="text-align: right;">검색하기</button>
</div>