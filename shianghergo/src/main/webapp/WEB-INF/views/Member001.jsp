<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script> -->
<!-- <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script> -->
<!-- <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script> -->
<!-- <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script> -->
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script> -->
<!-- <meta name="viewport" -->
<!-- 	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"> -->
<!-- <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"> -->
<script src="http://code.jquery.com/jquery-1.12.4.min.js" ></script>
<head>
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 700px;
}

thead {
	background-color: lightblue;
}
.img {
    width: 400;
    height: 300;
}
body {
	margin: 0px;
	padding: 0px;
	background: #fff url('images/bbg06.png') center center fixed ;　
}

</style>
</head>
<body>
<jsp:include page="eric/header.jsp" />
		<div  style="padding-bottom: 100px;">
<jsp:include page="BlackLine.jsp" />
<div style="padding-left: 450px; padding-right: 550px;padding-top: 50px;">
	<input type="hidden" name="id" value="${loginOK.id}" />
	<table class="table table-hover" style="font-family:微軟正黑體;">
		<tbody>
			<tr>
				<td rowspan="9" align="center"><img  class="img" width="300" height="300" alt="" src="<c:url value='getmemberPicture/${loginOK.id}'/>"/></td>
			</tr>
			
			<tr>
				<td >帳號</td>
				<td align="center">${loginOK.account}</td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td >密碼</td> -->
<%-- 				<td align="center">${loginOK.password}</td> --%>
<!-- 			</tr> -->
			<tr>
				<td >姓名</td>
				<td align="center">${loginOK.name}</td>
			</tr>
			<tr>
				<td >手機</td>
				<td align="center">${loginOK.phone}</td>
			</tr>
			<tr>
				<td >Email</td>
				<td align="center">${loginOK.email}</td>
			</tr>
			<tr>
				<td >生日</td>
				<td align="center">${loginOK.birthday}</td>
			</tr>
			<tr>
				<td >地址</td>
				<td align="center">${loginOK.address}</td>
			</tr>
			<tr>
				<td >修改</td>
				<td align="center">
				<a href="Practice/../doupdate?account=${loginOK.account}"><img
						src="images/01.jpg" width="30"></a></td>
			</tr>
		</tbody>
	</table>
	</div>
	</div>
	<jsp:include page="eric/foot.jsp" />
	<script src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
</body>

</html>
