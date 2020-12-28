<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="top" style="background: linear-gradient(135deg, #347765 -100%, #092756 100%);">

     <div class="logo" style="cursor:pointer; width:230px;" onClick="location.href='${pageContext.request.contextPath}/home/main'">
     	<h1 class="center noto weight900 m-t5" style="color:#fff;">GreenArt</h1>
     	<h2 class="center" style="color:#787878;">Groupware System</h2>
     </div>

    <div class="icons">
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_employee_info" title="사용자 정보"><i class="fas fa-user f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_setting" title="환경설정"><i class="fas fa-cogs f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}" title="로그아웃"><i class="fas fa-sign-out-alt f6"></i></a></div>
    </div>
</header>