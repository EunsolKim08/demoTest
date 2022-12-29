<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
  #loginbutton{
  	background-color: crimson;
  	color: white;
  	font-size: 30px;
  	font-weight: bold;
  	width: 200px; 
  	height:40px; 
	text-align:center; 
	margin-left:10%; 
	margin-top : 10px;
	padding: 5px;
  	border: 1px solid crimson;
  	cursor: pointer;
  	box-shadow: 5px 5px 2px dimgrey;
  }
  #loginMsg{
  width: 400px; 
  font-size: 30px;
  margin: 200px 0px 10px 200px; /*위 오 아 왼*/
  text-align:center; 
  }
  #id{
  	height:30px;
  }
  .idForm ,.passForm{
  		vertical-algin: middle;
  }
</style>
<script>
function goLogin(){
	var loginId = $('input[name=id]').val(); 
	var loginPass = $('input[name=pass]').val();
	console.log("value: "+ loginPass);
	
	$.ajax({
		data : { 
				"id":loginId,
				"pass":loginPass
				}
		,url : "loginProcess"
		,type : "POST"
		/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
		,success : function(data) {
			console.log("성공");
			
			if(data == "-1"){
				$("#loginMsg").innerHTML="로그인에 실패했습니다.";
			}
		}
	});
}
</script>

</head>
<body>
<div id="loginMsg">로그인 페이지 </div>
<div style="margin-left:200px;">
	<div style="border: 1px solid black; width:400px; height:250px;">
		<form id="loginfrm" name="loginfrm" style="margin:40px; font-size: 20px;" >
			<div class="idForm">
				아이디: <input type="text" name="id" placeholder="아이디를 입력해주세요"/><br/><br/>
			</div>
			<div class="passForm">
				비밀번호: <input type="text" name="pass" placeholder="비밀번호를 입력해주세요"/><br/><br/>
			</div>
			<div id="loginbutton" onclick="goLogin()">로그인</div>
		</form>
	</div>
</div>
</body>
</html>

