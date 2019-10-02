<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>group</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/res/static/css/main.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/res/layui/css/layui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>

<style>
.gd1 {
	background-color: yellow;
	display: inline-block;
}

.group {
	position: relative;
	left: 50%;
	margin-left: -380px; /* 760 除以 -2 */
	width: 760px;
}


.button{
  background:#ccc;
  padding:10px;
  color:#000;
  display: inline-block;
}
.bar-block{
  margin-bottom:20px;
}


.red{
    background: red!important;
    color:#fff!important;
}
</style>
<script>

function addGroupCart(item_id,groups_id){
	$.ajax({
		url:"../addtocart?itemid="+item_id+"&gid="+groups_id,
		type:"get",
		success:function(data){
			if(data==1){
				alert("添加成功");
			}else{
				alert("不可添加其他團商品");
			}
		},
	})
}
function openClass(evt, className) {
	  var i, x, tablinks;
	  x = document.getElementsByClassName("class");
	  for (i = 0; i < x.length; i++) {
	     x[i].style.display = "none";
	  }
	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < x.length; i++) {
	     tablinks[i].classList.remove("red");
	  }
	  document.getElementById(className).style.display = "block";
	  evt.currentTarget.classList.add("red");
	}

	var mybtn = document.getElementsByClassName("testbtn")[0];
	mybtn.click();



</script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/eric/header.jsp"></jsp:include>
	<div>
		<div>

			<h2>${group.name}</h2>
		</div>

	</div>




	<!-- 	<div> -->

	<%-- 	<img width="100" heigth="150" src="<c:url value='/Picture/${group.groupId}'/>"/> --%>
	<!-- 	</div> -->

	<div style="align: center">

		<P>
			<a href="<spring:url value='memberdata?mmid=${member_id.id}' />">團主:${member_id.name}
			</a>
		</P>

		<p>付款方式:${group.payment}</p>
		<p>截止時間:${group.end_time}</p>
		<p>商品說明:${group.detail}</p>



		<div>
			<!-- 			<img width='600' height='450' -->
			<%-- 				src="<c:url value='/frank/getgroupPicture/${group.id }' />" /> --%>
		</div>

	
		<div class="bar-block">
			<div class="container">
				<h5>選單</h5>
				<a href="javascript:void(0)" class="bar-item button tablink testbtn"
					onclick="openClass(event, 'class1')">教學1</a> <a
					href="javascript:void(0)" class="bar-item button tablink"
					onclick="openClass(event, 'class2')">教學2</a> <a
					href="javascript:void(0)" class="bar-item button tablink"
					onclick="openClass(event, 'class3')">教學3</a> <a
					href="javascript:void(0)" class="bar-item button tablink"
					onclick="openClass(event, 'class4')">教學4</a>
			</div>
		</div>

		<div id="class1" class="container class">教學1內容 教學1內容 教學1內容</div>

		<div id="class2" class="container class">教學2內容 教學2內容 教學2內容</div>
		<div id="class3" class="container class">教學3內容 教學3內容 教學3內容</div>
<!-- 		<div id="class4" class="container class">教學4內容 教學4內容 教學4內容</div> -->




		<div id="class4" class="container class">
			<c:forEach var="places" items="${place}">
				<div class="gd1" style="width: 250px; height: 200px;">
					<p>地址:${places.address}</p>
					<p>時間:${places.time}</p>

				</div>
			</c:forEach>
		</div>
		<br> <br> <br>

		<div>
			<c:forEach var="item" items="${groups_id}">
				<div class="card" style="width: 18rem; display: inline-block;">
					<img width='500' height='300'
						src="<c:url value='/frank/getPicture/${item.id }' />"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">${item.name}</h5>

						<p class="card-text">商品說明:${item.detail}</p>
						<p class="card-text">商品價格:${item.price}</p>



						<input type="button" value="🛒加入購物車"
							onclick="addGroupCart(${item.id},${item.groupsBean.id})"
							class="btn btn-warning">

					</div>
				</div>
			</c:forEach>
		</div>

		<a href="../groupcart">💸進購物車</a>
		<hr>

		<jsp:include page="/WEB-INF/views/eric/foot.jsp"></jsp:include>
</body>
</html>