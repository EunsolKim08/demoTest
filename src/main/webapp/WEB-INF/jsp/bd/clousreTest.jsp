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
 
  
</style>
<script type="text/javascript">

var total = 0;
var arr= [];
function closureTest(){
	
	let count = 0
	return function(){
		count++;
		
		return count;
	}
}

const a = closureTest();

function test(){
	console.log(a());
}

</script>
<body>

<div style="margin:100px;">
	
	<form>
		<div>
			<button type="button" onclick="closureTest()">클로져테스트</button>
				<button type="button" onclick="test()">A 출력</button>
		</div>
		
	</form>
</div>

</body>
</html>