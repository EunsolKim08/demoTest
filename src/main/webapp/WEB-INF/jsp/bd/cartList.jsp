<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
   table {
    width: 70%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    margin-top:50px;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
    style="vertical-align: middle;"
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  tr{
  	height:200px;
  }
  .hotelImage{
  	width:100px;
  	height:100px;
  }
  
</style>
<script type="text/javascript">

var total = 0;
var arr= [];
function pay(){
	console.log("결제하기 실행");
	///카카오 api 정보넣기. 상세보기와 비슷하게 가면 됨.
}

function totalPrice(index){
	//클릭할때 마다 total 초기화
	total = 0;
	
	//name이 cartCheck인 것의 요소들 가져오기
	const check = document.getElementsByName("cartCheck");
	//name이 cnt인 것의 요소들 가져오기
	const count = document.getElementsByName("cnt");
	
	 //체크박스 만큼 루프
	 for (var i = 0; i < check.length; i++) {
	   // 체크박스 선택이 된다면
	   if (check[i].checked == true) {
		   //total에 check박스 선택 * 선택된 것의 cnt 갯수가 합산된다.
	     	total += parseInt(check[i].value) * parseInt(count[i].value);
	     }
	  }  
	 
	 //id가 totalPrice인 자리의 innerHTML은 total로 변환
	 document.getElementById("totalPrice").innerHTML = total;
	
}

</script>
<body>

<div style="margin:100px;">
	<h2>
		총 가격 : <span id="totalPrice">0</span>원
	</h2>
	<form>
		<table>
			<c:forEach items="${dataList}" var="list" varStatus="status">
			<tr>
				<td>
					<div style="margin-left:40px;">
						<input type="checkbox" class="chkSub" onchange="totalPrice(${status.index})" name="cartCheck" value="${list}"/> 
						<!-- td style과 별도로 img style에도 vertical-align 넣어줘야지 정상적으로 작동함 -->
						<img src="../template/edit.png" class="hotelImage" style="margin:10px; vertical-align: middle;"/> 
						a.value에 상품가격 넣기 &nbsp; ${list} b.상품이름넣기
						<select class="form-select" name="cnt" style="padding-left:5px;" onchange="totalPrice(${status.index})">
									<option value="0">--전체--</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
						</select>
					</div>
				</td>
			</tr>
			</c:forEach>
		</table>
		<div style="margin-top: 100px; margin-left:50%;">
			<button type="button" >비우기</button>
			<button type="button" onclick="pay()">결제하기</button>
		</div>
		
	</form>
</div>

</body>
</html>