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
	console.log("countŬ��");
	return function(){
		count++;
		
		console.log("count�� "+ count);
		return count;
	}
}



</script>
<body>

<div style="margin:100px;">
	
	<form>
		<div>
			<button type="button" onclick="closureTest()">Ŭ�����׽�Ʈ</button>
		</div>
		
	</form>
</div>

</body>
</html>