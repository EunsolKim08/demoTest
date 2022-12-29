<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>
function applyCpn(){

	
	var choiceCpn = $("#choiceCpn").val();
	var originalPrice = $("#originTotalPrice").html();
	var param = {};
	param.originPrice = originalPrice;
	param.cpnNo= choiceCpn;
	param = JSON.stringify(param);
	console.log(param);
	
	$.ajax({
		type : "POST",
		url : "applyCoupon",
		data : param, 
		dataType : "json",
		contentType : "application/json;charset=UTF-8",
		success : function(data) {
			console.log(data)
			var discountPrice = data.disCountPrice;
			$("#discountPrice").html(discountPrice);
			var finalPrice = parseInt(originalPrice-discountPrice);
		 	$("#finalPrice").html(finalPrice);
		}
		,error : function(request, error) {
			console.log("message: " + request.responseText + ", error:" + error);
		}
	});	 
}
</script>
</head>
<body>
<div style="margin:200px;">

		&nbsp;&nbsp;할인 적용전 총 금액:<span id="originTotalPrice">40000</span>원<br/><br/><br/><br/>
	 -  할인 금액 : <span id="discountPrice">0</span>원<br/><br/>
	 --------------------------------------------------------<br/><br/><br/><br/>
	 	할인 적용 후 총 금액  : <span id="finalPrice">40000</span>원<br/><br/><br/><br/>
	<form name="frm">
		<select name="choiceCpn" id= "choiceCpn" style="font-size:18px; padding: 0px 5px 0px 5px;" onchange="applyCpn()">
			<option value="0">적용가능한 쿠폰 보기</option>
			<c:forEach var="i" items="${selectDiscount}">
				<option value="<c:out value='${i.value}'/>"><c:out value='${i.key}'/></option>
			</c:forEach>
			
		</select>
		
	</form>
</div>


</body>
</html>