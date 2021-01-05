<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.bubble {
	z-index:100;
	position: relative;
	height: auto;
	padding: 10px 10px 10px 10px;
	background-color: #b00020;
	border-radius: 5px;
	border: #b00020 solid 1px;
	position: absolute;
	color: #fff;
	text-align: left;
	top: 75px;
	right: 120px;
}
	
.bubble:after {
	content: '';
	position: absolute;
	border-style: solid;
	border-width: 0 16px 20px 17.5px;
	border-color: #b00020 transparent;
	display: block;
	width: 0;
	z-index: 1;
	top: -18.5px; 
	right: 10px; 
}
	
.bubble:before {
	content: '';
	position: absolute;
	border-style: solid;
	border-width: 0 16px 20px 17.5px;
	border-color: #b00020 transparent;
	display: block;
	width: 0;
	z-index: 0;
	top: -20px;
	right: 10px;
}
</style>
<header class="top" style="background: linear-gradient(135deg, #347765 -100%, #092756 100%);">

     <div class="logo" style="cursor:pointer; width:230px;" onClick="location.href='${pageContext.request.contextPath}/home/main'">
     	<h1 class="center noto weight900 m-t5" style="color:#fff;">GreenArt</h1>
     	<h2 class="center" style="color:#787878;">Groupware System</h2>
     </div>

    <div class="icons">
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_employee_info?" title="사용자 정보"><i class="fas fa-user f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_setting" title="환경설정"><i class="fas fa-cogs f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_logout" title="로그아웃"><i class="fas fa-sign-out-alt f6" id="logout"></i></a></div>
    </div>
    <c:if test = "${sessionScope.empGender == null && sessionScope.empConfirm != 'N'}">
    	<div class="bubble noto font18">내정보를 입력해 주세요.</div>
   	</c:if>
</header>

<script>
	$(function() {
		$("#logout").click(function() {
			$.ajax({
				url		: "${pageContext.request.contextPath}/gw_logout",
				type	: "POST",
				data	: "",
				success : function(data) {
					if( data == "success" ) {
						alert("로그아웃 되었습니다..");
						window.location.href = '${pageContext.request.contextPath}/';
					}
				},
				error	: function() {
					alert("시스템 에러!!");
				}
			});
		});
	});
</script>