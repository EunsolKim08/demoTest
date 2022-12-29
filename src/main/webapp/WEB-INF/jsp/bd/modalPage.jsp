<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<meta name="_csrf" th:content="${_csrf.token}"/>
<meta name="_csrf_header" th:content="${_csrf.headerName}"/>
<title>모달 TEST</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
</head>
<style>

	.modal{
		position: absolute;
		width:100%; height:100%;
		top:0px; left:0px;
		background:rgba(0,0,0,0.8);
		display:none;
	}
	.modal_content {
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  width: 800px;
	  height: 600px;
	  margin-left:100px;
	  margin-top:50px;
	  background-color: rgb(255, 255, 255); /* modal_content만 하얀색 배경 설정*/
	  border-radius: 10px; /*모달창 각진 정도*/
	  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	  transform: translateX(-50%) translateY(-50%); /*요소를 넓이 50%, 세로 50% 위치시켬. 즉 중앙 정렬을 위한 설정*/
	}
	.modal_header{
		border-radius: 10px; /*모달창 각진 정도*/
		text-align : right; 
		margin : 20px 20px 10px 0px; /**상우하좌**/
		height:50px;
	}
	.modal_body{
		text-align:center;
	}
	.modal_footer{
		text-align: right;
		margin-top: 450px;
		margin-right: 20px;
		margin-bottom: 20px;
	}
	.modal2{
		position: absolute;
		width:100%; height:100%;
		top:0px; left:0px;
		background:rgba(0,0,0,0.8);
		display:none;
	}
	.modal_content2 {
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  width: 500px;
	  height: 500px;
	  padding: 20px;
	  margin-left:100px;
	  margin-top:50px;
	  background-color: rgb(255, 255, 255); /* modal_content만 하얀색 배경 설정*/
	  border-radius: 5px; /*모달창 각진 정도*/
	  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	  transform: translateX(-50%) translateY(-50%); /*요소를 넓이 50%, 세로 50% 위치시켬. 즉 중앙 정렬을 위한 설정*/
	}
	#load{}
</style>
<script>
	function closeModal(){
		$("#loadButton").css('display', 'block');
		/**모달 창 닫기 클릭시 id가 modal인 요소가 none처리되어 공간이 없어진다.*/
		$("#modal").css('display', 'none'); /**팝업 모달을 닫을시 #modal을 display none 처리함*/
		document.getElementById("testAjax").innerHTML=""; /**팝업모달을 닫을시 #testAjax의 내부 파일을 지운다.*/
		$("#modalOpen").show();
	}
	function openModal(){
		/**모달 창 열기 클릭시 id가 modal인 요소가 block 처리되어 공간이 생성되어 나타난다..*/
		$("#modal").css('display', 'block'); /**팝업 모달을 닫을시 #modal을 display block 처리함*/
		//$("#modalOpen").hide();
	}
	function closeModal2(){
		/**모달 창 닫기 클릭시 id가 modal인 요소가 none처리되어 공간이 없어진다.*/
		$("#modal2").css('display', 'none');  /**팝업 모달을 닫을시 #modal2을 display none 처리함*/
		$("#modal").css('display', 'block'); 
		document.getElementById("testAjax2").innerHTML=""; /**팝업모달을 닫을시 #testAjax의 내부 파일을 지운다.*/
	}
	
</script>
 
 <script>
 function load(){
	$.ajax({
		data : { "result" : "1" }
		,url : "secondModal"
		,type : "POST"
		/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		,success : function(data) {
			console.log("성공");
			$("#testAjax").html(data); /*data로 받은 secondModal 페이지의 내용을 채움*/
			$("#loadButton").css('display', 'none');
		}
	});
 }
</script>

<body>
	<div>
		<h2 style="margin:100px;"> 첫번째 모달테스트</h2>
		<div class="modal" id="modal">
			<div class="modal_content">
				<div class="modal_header">
					<button type="button" onclick="closeModal()" style="" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal_body" id="modal_content">
					모달창 열기 내용<br/>
					<span id ="testAjax"></span>
				</div>
				<div class="modal_footer">
					<form>
						<button type="button" onclick="load()" id="loadButton">외부 내용 가져오기</button>
					</form>
					
				</div>
				
			</div>	
		</div>
		<div class="secondModal" id="secondModal"></div>
		<button type="button" onclick="openModal()" id="modalOpen" style="margin:100px;">모달 열기 버튼</button>
	</div>
	<div class="modal2" id="modal2">
		<div class="modal_content2">
				<div class="modal_header">
					<button type="button" onclick="closeModal2()" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal_body2" id="modal_content">
					다른 모달 가져오기<br/>
					<span id ="testAjax2"></span>
				</div>
				<div class="modal_footer2">
					<form>
						<button type="button" onclick="load2()" id="loadButton2">외부 내용 가져오기</button>
					</form>
					
				</div>
		</div>	
	</div>

</body>
</html>