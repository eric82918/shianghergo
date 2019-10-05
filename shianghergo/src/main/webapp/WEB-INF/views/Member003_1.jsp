<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<head>
<meta charset="UTF-8">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<title>我建立合購團明細</title>
<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 900px;
}

thead {
	background-color: lightblue;
}
</style>
</head>
<body >
<div>
<!-- 	<table border="1" class="table1"> -->
<jsp:include page="eric/header.jsp" />
	<div style="padding-bottom: 500px;">
		<jsp:include page="shianghergo/../BlackLine.jsp" />
<div style="padding-left: 290px;padding-right: 30px;">
	<table class="table table-hover">
		<tr id='borderA'  >
			<th id='borderA' colspan="4">由${loginOK.name}建立合購團明細</th>
		</tr>
		<tr id='borderA'  >
			<th scope="col" id='borderA'>合購團編</th>
			<th scope="col" id='borderA'>商品名稱</th>
			<th scope="col" id='borderA'>商品簡介</th>
			<th scope="col" id='borderA'>價格</th>
		</tr>
		<c:forEach var="anGroupsD"  items="${MyGroupsListD}">
			<TR id='borderA'>
			<TD id='borderA' >${anGroupsD.groupsBean.id}</TD>
			<TD id='borderA' >${anGroupsD.name}</TD>
			<TD id='borderA' >${anGroupsD.detail}</TD>				
			<TD id='borderA' >${anGroupsD.price}</TD>
		</TR>
		</c:forEach>
	</TABLE>
</div>
</div>
</div>
<jsp:include page="eric/foot.jsp" />
</body>
</html>