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
		<td>FAQ ��ȣ</td>
		<td>FAQ ����</td>
		<td>FAQ �亯</td>
		<td>FAQ ��������</td>
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
	<button type="button" onclick="location.href='/calendarTest'">Ķ���� �׽�Ʈ</button>
	<button type="button" onclick="location.href='/cartList'">īƮ �׽�Ʈ</button>
	<button type="button" onclick="location.href='/modalPage'">��� �׽�Ʈ</button>
	<button type="button" onclick="location.href='/validation'">validation �׽�Ʈ</button>
	<button type="button" onclick="location.href='/discount'">���� ���� �׽�Ʈ</button>
	<button type="button" onclick="location.href='/stream'">JAVA Stream �׽�Ʈ</button>
	<button type="button" onclick="location.href='/testDataList'">testDataList �׽�Ʈ</button>
	<button type="button" onclick="location.href='/admin/manageMainPage'">���� ���������� �׽�Ʈ</button>
	<button type="button" onclick="location.href='/buyTestEmail'">�ֹ��Ϸ� �׽�Ʈ ���ø�</button>
	<button type="button" onclick="location.href='/returnTestEmail'">��ȯ�Ϸ� �׽�Ʈ ���ø�</button>
</div>


</body>
</html>