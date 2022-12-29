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
	console.log("�����ϱ� ����");
	///īī�� api �����ֱ�. �󼼺���� ����ϰ� ���� ��.
}

function totalPrice(index){
	//Ŭ���Ҷ� ���� total �ʱ�ȭ
	total = 0;
	
	//name�� cartCheck�� ���� ��ҵ� ��������
	const check = document.getElementsByName("cartCheck");
	//name�� cnt�� ���� ��ҵ� ��������
	const count = document.getElementsByName("cnt");
	
	 //üũ�ڽ� ��ŭ ����
	 for (var i = 0; i < check.length; i++) {
	   // üũ�ڽ� ������ �ȴٸ�
	   if (check[i].checked == true) {
		   //total�� check�ڽ� ���� * ���õ� ���� cnt ������ �ջ�ȴ�.
	     	total += parseInt(check[i].value) * parseInt(count[i].value);
	     }
	  }  
	 
	 //id�� totalPrice�� �ڸ��� innerHTML�� total�� ��ȯ
	 document.getElementById("totalPrice").innerHTML = total;
	
}

</script>
<body>

<div style="margin:100px;">
	<h2>
		�� ���� : <span id="totalPrice">0</span>��
	</h2>
	<form>
		<table>
			<c:forEach items="${dataList}" var="list" varStatus="status">
			<tr>
				<td>
					<div style="margin-left:40px;">
						<input type="checkbox" class="chkSub" onchange="totalPrice(${status.index})" name="cartCheck" value="${list}"/> 
						<!-- td style�� ������ img style���� vertical-align �־������ ���������� �۵��� -->
						<img src="../template/edit.png" class="hotelImage" style="margin:10px; vertical-align: middle;"/> 
						a.value�� ��ǰ���� �ֱ� &nbsp; ${list} b.��ǰ�̸��ֱ�
						<select class="form-select" name="cnt" style="padding-left:5px;" onchange="totalPrice(${status.index})">
									<option value="0">--��ü--</option>
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
			<button type="button" >����</button>
			<button type="button" onclick="pay()">�����ϱ�</button>
		</div>
		
	</form>
</div>

</body>
</html>