<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<div style="margin: 100px;">
	<h2>home</h2>
	<table>
	<tr>
		<td>FAQ 번호</td>
		<td>FAQ 질문</td>
		<td>FAQ 답변</td>
		<td>FAQ 공개여부</td>
	</tr>
		<c:forEach items="${dataList}" var="list">
			<tr>
				<td>${list.faqNo}</td>
				<td style="padding:5px;">${list.faqQestn}</td>
				<td>${list.faqAnswer}</td>
				<td>${list.faqExpsrAt}</td>
			</tr>
		</c:forEach>
	</table>
	<button type="button" onclick="location.href='/calendarTest'">캘린더 테스트</button>
	<button type="button" onclick="location.href='/cartList'">카트 테스트</button>
	<button type="button" onclick="location.href='/modalPage'">모달 테스트</button>
	<button type="button" onclick="location.href='/validation'">validation 테스트</button>
	<button type="button" onclick="location.href='/discount'">할인 적용 테스트</button>
	<button type="button" onclick="location.href='/stream'">JAVA Stream 테스트</button>
	<button type="button" onclick="location.href='/testDataList'">testDataList 테스트</button>
	<button type="button" onclick="location.href='/admin/manageMainPage'">권한 메인페이지 테스트</button>
	<button type="button" onclick="location.href='/buyTestEmail'">주문완료 테스트 템플릿</button>
	<button type="button" onclick="location.href='/returnTestEmail'">상환완료 테스트 템플릿</button>
</div>


</body>
</html>