<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %> <!-- jstl ���� (�ʼ�) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta name="x-apple-disable-message-reformatting">
<title></title>
<!--[if mso]>
	<noscript>
		<xml>
			<o:OfficeDocumentSettings>
				<o:PixelsPerInch>96</o:PixelsPerInch>
			</o:OfficeDocumentSettings>
		</xml>
	</noscript>
	<![endif]-->
<style type="text/css">table, td, div, h1, p, span, a {font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;}
</style>
<table bgcolor="#efefef" border="0" cellpadding="0" cellspacing="0" role="presentation" style="padding: 0; border-collapse:collapse;" width="100%">
	<tbody>
		<tr>
			<td align="center">
			<table bgcolor="#fff" cellpadding="0" cellspacing="0" role="presentation" style="max-width:680px; border-collapse:collapse; border:1px solid #cccccc; text-align:left;" width="100%">
				<tbody>
					<tr>
						<td align="left" height="100" style="border-bottom: 1px solid #e9e9e9; padding-left: 40px;">
						<h1 style="margin: 0; width: 180px; height: 30px; "><img alt="���� �ΰ�" height="30" src="https://sorincorp.blob.core.windows.net/secs-t/it/logo_1638929731641.png" style="font-size: 12px;" width="180" /></h1>
						</td>
					</tr>
					<tr>
						<td align="left" style="padding:45px 40px 25px 40px;" valign="top">                                  <!-- {{titleMsg}} -->   <!-- ${titleMsg} -->
						<h2 style="margin: 0; color: #222; font-size:28px; line-height: 38px; font-weight: bold; letter-spacing: -1.5px; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;"><span style="color: #004ea2;"> ${titleMsg} </span>�Ǿ����ϴ�.</h2>
						</td>
					</tr>
					<tr>
						<td style="padding:0 40px 24px 40px;" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td style="margin: 0; padding-bottom: 8px; color: #333333; font-size:14px; line-height:28px; font-weight: bold; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�⺻����</td>
								</tr>
								<tr>
									<td style="border-top: 1px solid #000;">
									<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse; " width="100%">
										<colgroup>
											<col width="90px" />
											<col width="*" />
											<col width="90px" />
											<col width="*" />
										</colgroup>
										<tbody>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px;">&middot; �����</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px; font-weight: bold;">{{companyName}}</td>
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px;">&middot; �ֹ��ڸ�</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px;">{{userName}}</td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px;">&middot; �ֹ���ȣ</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #004ea2; font-size: 12px; line-height: 35px; font-weight: bold;">{{orderNo}}</td>
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px; line-height: 35px;">&middot; �ֹ�����</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #999999; font-size: 12px; line-height: 35px;">{{orderDate}}</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td style="padding:0 40px 24px 40px;" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td style="margin: 0; padding-bottom: 8px; color: #333333; font-size:14px; line-height:28px; font-weight: bold; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�ֹ���ǰ����</td>
								</tr>
								<tr>
									<td style="border-top: 1px solid #000;">
									<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse; " width="100%">
										<colgroup>
											<col width="*" />
											<col width="98px" />
											<col width="60px" />
											<col width="143px" />
										</colgroup>
										<thead>
											<tr style="height: 36px;">
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">��ǰ����</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">�ֹ��ܰ�</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">�߷�</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">�ֹ� ��ǰ����</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td align="center" style="padding: 15px; border: 1px solid #e9e9e9; color: #999; font-size: 12px; line-height: 35px;" valign="center">
												<div style="float: left; position: relative; width: 50px; height: 50px; overflow: hidden;"><img alt="" src="{{docFileRealCours}}" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); max-width:50px;" /></div>

												<div style="float: left; width: calc(100% - 60px); padding-left: 10px; color: #004ea2; font-size: 12px; line-height: 24px; font-weight: 400; text-align: left;"><a href="#;">{{productName}} {{brandGroupName}} {{brandName}}</a></div>
												</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;">
												<div style="display: inline-block; max-height: 18px; padding: 0px 6px 0; background: #f88538; border: 1px solid #f85e38;  border-radius: 9px; color: #fff;  font-size: 11px; line-height: 16px;">{{sleMthdNm}}</div>

												<div>{{goodsUntpc}}��</div>
												</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;"><strong>{{totRealOrderWt}}</strong>MT</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #fa5e38; font-size: 16px; line-height: 24px; font-weight: bold;">{{slepc}}��</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<!-- �ֹ������� START -->
					<tr>
						<td style="padding:0 40px 24px 40px;" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td style="margin: 0; padding-bottom: 8px; color: #333333; font-size:14px; line-height:28px; font-weight: bold; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�ֹ�������</td>
								</tr>
								<tr>
									<td style="border-top: 1px solid #000;">{{payArea}}</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<!-- �ֹ� �� ���� END -->
					
					<!-- ���� ũ���� �ŷ����� START -->
					<tr>
						<td style="padding:0 40px 24px 40px;" valign="top">
						<!-- ${sorinTableInfo} {{sorinTableInfo}} -->
							 ${sorinCreditTableInfo} 
						</td>
					</tr> 
					<!-- ���� ũ���� �ŷ����� END -->
					<!-- ���� CSSȮ�ο� -->
						<tr>
						<td style="padding:0 40px 24px 40px;" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td style="margin: 0; padding-bottom: 8px; color: #333333; font-size:14px; line-height:28px; font-weight: bold; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">����ũ���� ��������</td>
								</tr>
								<tr>
									<td style="border-top: 1px solid #000;">
									<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse; " width="100%">
										<colgroup>
											<col width="*" />
											<col width="98px" />
											<col width="60px" />
											<col width="143px" />
											<col width="143px" />
											<col width="300px" />
											<col width="500px" />
										<%-- 	<col width="300px" /> --%>
										</colgroup>
										<thead>
											<tr style="height: 36px;">
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">�ŷ��Ͻ�</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">����</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">���</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">����</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">��� ���ɾ�</th>
												<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">�ֹ���ȣ</th>
											    <th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">����</th> 
											<!-- 	<th align="center" style="background: #efefef; border: 1px solid #ebebeb; color: #333; font-size: 12px; line-height: 35px;">���� ������</th>  -->
											</tr>
										</thead>
										<tbody>
											<tr>
												<td align="center" style="padding: 15px; border: 1px solid #e9e9e9; color: #999; font-size: 12px; line-height: 35px;" valign="center">
													2022-12-09 16:37:41.547
												</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;">
													�ֹ�
												</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;">100,392,600</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #fa5e38; font-size: 16px; line-height: 24px; font-weight: bold;">561,341,785</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #fa5e38; font-size: 16px; line-height: 24px; font-weight: bold;">561,3410</td>
												<td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;">20221209-S01273</td>
												<!-- <td align="center" style="border: 1px solid #e9e9e9; color: #333333; font-size: 12px; line-height: 24px;">�ֹ�(����ũ����)</td> -->
												<td align="center" style="border: 1px solid #e9e9e9; color: #fa5e38; font-size: 16px; line-height: 24px; font-weight: bold;">
												�ֹ�(����ũ����)<br/>
													2022-12-15
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<!-- ���� cssȮ�� -->
					<tr style="display:none;" id="sorinCreditInfo">
						<td style="padding:0 40px 24px 40px;" valign="top">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td style="margin: 0; padding-bottom: 8px; color: #333333; font-size:14px; line-height:28px; font-weight: bold; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�⺻����</td>
								</tr>
								<tr>
									<td style="border-top: 1px solid #000;">
									<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse; " width="100%">
										<colgroup>
											<col width="120px" />
											<col width="*" />
										</colgroup>
										<tbody>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; ��۹��</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">{{dlvyMnNm}}</td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; �����</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;"><strong>{{wrhousDisp}}</strong> <span style="color: #999999;">(â�� ����� : {{wrhousChargerDisp}})</span></td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; �����</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #004ea2; font-size: 12px; font-weight: bold;">{{destination}}</td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; ����� �����</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333; font-size: 12px; font-weight: bold;">{{destManagerName}}</td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; �޴��� ��ȣ</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333; font-size: 12px;">{{hp}}</td>
											</tr>
											<tr height="40">
												<th align="left" style="padding: 0 8px; background: #efefef; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333333; font-size: 12px;">&middot; ��� �޽���</th>
												<td align="left" style="padding: 0 20px; border-bottom: 1px solid #eaeaea; border-left: 1px solid #eaeaea; color: #333; font-size: 12px;">{{deliMsg}}</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td style="padding-top: 24px; ">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse; table-layout: fixed;" width="100%">
							<tbody>
								<tr>
									<td style="font-size: 0; line-height: 0;" width="70">&nbsp;</td>
									<td align="center" height="50">
									<div style="display:block; width: 100%; height: 50px; background: #004ea2; color: #fff; border-radius: 4px; font-size:16px;
                                                    line-height: 50px; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;"><a href="{{serviceDomain}}" style="text-decoration: none; color:#fff;">�������� �ٷΰ���</a></div>
									</td>
									<td style="font-size: 0; line-height: 0;" width="10">&nbsp;</td>
									<td align="center" height="50">
									<div style="display:block; width: 100%; height: 50px; background: #666666; color: #fff; border-radius: 4px; font-size:16px;
                                                    line-height: 50px; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;"><a href="{{documentViewDomain}}" style="text-decoration: none; color:#fff;">���ݰ�꼭 ���� </a></div>
									</td>
									<td style="font-size: 0; line-height: 0;" width="70">&nbsp;</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td align="center" style="padding-top: 44px; padding-bottom: 44px; font-size: 12px; color: #666; line-height: 20px; border-bottom: 1px solid #ddd; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�� ������ ���ù��ɿ� ���� ������ż��� �������� �����ǹ� �ؼ��� ���Ͽ�<br />
						ȸ���� E-mail ���� ���� ���ŵ��� ���ο� ������� �߼۵˴ϴ�.</td>
					</tr>
					<tr>
						<td>
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
							<tbody>
								<tr>
									<td align="center" style="padding:52px 0 20px 0;">
									<div style="width:60px; height:60px;"><a href="#;" style="text-decoration: none; font-size: 12px;"><img alt="�� ������" height="60" src="https://sorincorp.blob.core.windows.net/secs-t/it/app-icon_1638930457778.png" width="60" /> </a></div>
									</td>
								</tr>
								<tr>
									<td align="center" style="color: #5d5d5d; font-size: 22px; line-height: 24px; font-weight: bold;">SORIN.COM APP</td>
								</tr>
								<tr>
									<td align="center" style="padding-top: 8px; color: #5d5d5d; font-size: 14px; line-height: 22px; font-weight: 400">APP���� ��ö�ݼ� ��ǰ�� LIVE�� !!</td>
								</tr>
								<tr>
									<td align="center" style="padding:32px 0 50px;">
									<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-collapse:collapse;" width="100%">
										<tbody>
											<tr>
												<td align="center" style=" padding:0; vertical-align:top;">
												<div style="width:154px; height:50px;"><a href="#;" style="text-decoration: none; font-size: 12px;"><img alt="google play" height="50" src="https://sorincorp.blob.core.windows.net/secs-t/it/googleplay_1638930518168.png" width="154" /> </a></div>
												</td>
											</tr>
										</tbody>
									</table>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
					<tr>
						<td style="padding: 0 40px;">
						<table border="0" cellpadding="0" cellspacing="0" role="presentation" style="border-top: 1px solid #ddd; border-collapse:collapse; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;" width="100%">
							<tbody>
								<tr>
									<td align="center" style="padding:20px 40px;">
									<p style="margin:0; font-size:12px; color: #999; line-height:20px; font-family: �������, Malgun Gothic, dotum, gulim, sans-serif;">�������� �߽��������� ȸ�� ���� �ʽ��ϴ�.<br />
									�� SORIN.COM</p>
									</td>
								</tr>
							</tbody>
						</table>
						</td>
					</tr>
				</tbody>
			</table>
			</td>
		</tr>
	</tbody>
</table>




</body>
</html>