<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="top" style="background: linear-gradient(135deg, #347765 -100%, #092756 100%);">
    <div class="logo">
        <a href="${pageContext.request.contextPath}/admin/main" title="logo">
            <h1 class="f6">GreenArt</h1>
            <span>Groupware System</span>
        </a>
    </div>
    <div class="icons">
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_employee_info" title="사용자 정보"><i class="fas fa-user f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}/gw_setting" title="환경설정"><i class="fas fa-cogs f6"></i></a></div>
        <div class="icon"><a href="${pageContext.request.contextPath}" title="로그아웃"><i class="fas fa-sign-out-alt f6"></i></a></div>
    </div>
</header>