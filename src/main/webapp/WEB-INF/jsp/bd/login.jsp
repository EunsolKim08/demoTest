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
  margin: 200px 0px 10px 200px; /*�� �� �� ��*/
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
		/*�����͸� �����ϱ� ���� ����� csrf���� �����Ѵ�*/
		,success : function(data) {
			console.log("����");
			
			if(data == "-1"){
				$("#loginMsg").innerHTML="�α��ο� �����߽��ϴ�.";
			}
		}
	});
}
</script>

</head>
<body>
<div id="loginMsg">�α��� ������ </div>
<div style="margin-left:200px;">
	<div style="border: 1px solid black; width:400px; height:250px;">
		<form id="loginfrm" name="loginfrm" style="margin:40px; font-size: 20px;" >
			<div class="idForm">
				���̵�: <input type="text" name="id" placeholder="���̵� �Է����ּ���"/><br/><br/>
			</div>
			<div class="passForm">
				��й�ȣ: <input type="text" name="pass" placeholder="��й�ȣ�� �Է����ּ���"/><br/><br/>
			</div>
			<div id="loginbutton" onclick="goLogin()">�α���</div>
		</form>
	</div>
</div>
</body>
</html>

