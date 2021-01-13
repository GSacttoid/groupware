<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="menu-wrap">

    <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/home/main" title="Home"><i class="fas fa-home"></i><p>Home</p></a></div>
    <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/email/main" title="Email"><i class="fas fa-envelope"></i><p>e-mail</p></a></div>
    <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/approval/main" title="Approval"><i class="fas fa-file-signature"></i><p>결재</p></a></div>
    <div id="menu-icon" class="menu-icon active-menu"><a href="${pageContext.request.contextPath}/board/main" title="Board"><i class="fas fa-clipboard-list"></i><p>게시판</p></a></div>
    <%-- <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/schedule/main" title="Schedule"><i class="far fa-calendar-check"></i><p>업무일정</p></a></div> --%>
    <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/survey/main" title="survey"><i class="fas fa-vote-yea"></i><p>설문조사</p></a></div>
    <%-- <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/library/main" title="Library"><i class="fas fa-database"></i><p>자료실</p></a></div> --%>
    <div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/address/main" title="address"><i class="fas fa-address-book"></i><p>주소록</p></a></div>
    
	<c:if test = "${sessionScope.empId == 'admin' && sessionScope.empAuth > 9}">
		<div id="menu-icon" class="menu-icon"><a href="${pageContext.request.contextPath}/admin/main" title="admin"><i class="fab fa-codepen"></i><p>관리자</p></a></div>
	</c:if>
</div>