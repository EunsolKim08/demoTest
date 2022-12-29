<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Validation Test</title>
<script>

</script>
<style>
	table {
    width: 600px;
    border: 2px solid #444444;
    margin-bottom:100px;
    border-radius:10px;
    border-collapse: collapse;
  }
  tr,td{
   	 border: 2px solid #444444;
   	 border-collapse: collapse;
  }
</style>
</head>
<body>


<div style="margin:200px;">
	<table>
		<tr>
			<td style="height:45px; padding:5px 0px 0px 20px; vertical-align: middle; font-size: 18px; font-weight:bold;">예약된 호텔 객실 정보</td>
		</tr>
		<tr>	
			<td style="height:200px;">
				<div style="display:inline-block; padding:10px 10px 10px 20px;"><img src="/test/test" style="height:160px; width:160px;"/></div>
				<div style="display:inline-block; padding:10px 10px 0px 0px; vertical-align: top;">
					<div style="color:#0000ED; font-size:20px; font-size: bold;">서울 JW메리어트 호텔 </div><br/>
					<div style="color:gray; font-size: bold; margin-bottom:10px;">2 X 이그제티브 디럭스 더블룸</div>
					<div> 객실타입 : B &nbsp;&nbsp; | &nbsp;&nbsp;41m<sup style="font-size:10px;">2</sup> </div><br/>
					<div> 수용 가능 인원 : 3</div>
				</div>
			</td>
		</tr>
		<tr>	
			<td>
				<div style="color:gray; font-wieght:bold; padding: 10px 5px 10px 10px;"> 가격 </div>
				<div style="font-size:18px; padding : 10px 5px 10px 10px;">총 600,000원 </div>
			</td>
		</tr>
		<tr>	
			<td>
				<div style="color:gray; font-wieght:bold; padding: 10px 5px 10px 10px;"> 혜택정보 </div>
				<div style="font-size:18px; padding : 10px 5px 10px 10px;"> WI-FI, 주차, 무료 미니바 </div>
			</td>
		</tr>
		<tr>	
			<td>
				<div style="color:gray; font-wieght:bold; padding: 10px 5px 10px 10px;"> 예약기간 정보 </div>
				<div style="font-size:18px; padding : 10px 5px 10px 10px;"> 2022-10-26 ~ 2022-10-27 </div>
			</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td style="height:45px; padding:5px 0px 0px 20px; vertical-align: middle; font-size: 18px; font-weight:bold;">투숙객 정보</td>
		</tr>
		<tr>
			<td>
				<div style="color:gray; padding: 10px 5px 10px 20px; font-size:15px;">대표 투숙객</div>
				<div style="padding: 10px 5px 10px 20px; font-size:15px;">조윤경</div>
			</td>	
		</tr>
		<tr>
			<td>
				<div style="color:gray; padding: 10px 5px 10px 20px; font-size:15px;">대표 연락처</div>
				<div style="padding: 10px 5px 10px 20px; font-size:15px;">010-1234-5678</div>
			</td>
		</tr>
	</table>
</div>

</body>
</html>


