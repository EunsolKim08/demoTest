<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<script>

function search(){
	
	$.ajax({
		data : { "result" : "1" }
		,url : "directLoad"
		,type : "POST"
		/*�����͸� �����ϱ� ���� ����� csrf���� �����Ѵ�*/
		,success : function(data) {
			console.log("����");
			$("#testAjax2").html(data); /*data�� ���� secondModal �������� ������ ä��*/
		}
	});
	
	$("#modal2").css('display', 'block');
}
</script>
<div>
	<h2>�ι�° ���</h2>
	<div id="goThirdModal">111</div>
	<button type="button" onclick="search()" style="text-align: right;">�˻��ϱ�</button>
</div>