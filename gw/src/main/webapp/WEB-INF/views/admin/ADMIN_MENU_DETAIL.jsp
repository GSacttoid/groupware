<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="">
	<div class="title-detail" style="font-size: 14px; border-bottom: 1px solid #6d6d6d;">
		<h2>
			<a href="${pageContext.request.contextPath}/admin/main" title="관리자메뉴" class="f6"><i class="fab fa-codepen m-lr5"></i> 관리자 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">

	<div class="accordion-header">그룹웨어 정보</div>
	<div class="accordion-content" style="display:block;">
		<div>
			<a href="${pageContext.request.contextPath}/admin/system_notice">시스템 공지사항</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/gw_info">그룹웨어 사용정보</a>
		</div>
	</div>

	<div class="accordion-header">회사 정보 설정</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/company_info">회사 정보 관리</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/buseo_insert">부서 등록</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/grade_insert">직급 등록</a>
		</div>
	</div>

	<div class="accordion-header">사원 및 관리자 정보</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/employee_list">사원 관리</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/gw_admin_info">관리자 정보 관리</a>
		</div>
	</div>

	<div class="accordion-header">커뮤니티</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/company_notice">회사 공지 사항</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/company_menu_set">회사 메뉴 설정</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/buseo_menu_set">부서 메뉴 설정</a>
		</div>
	</div>

	<div class="accordion-header">인사 관리</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/commute_set">출퇴근 설정</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/vacation_set">휴가 종류 설정</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/vacation_num_set">휴가 일수 설정</a>
		</div>
	</div>

	<div class="accordion-header">전자결재</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/approval_form">전자결재 양식관리</a>
		</div>
		<div>
			<a href="${pageContext.request.contextPath}/admin/approval_set">전자결재 설정</a>
		</div>
	</div>

	<div class="accordion-header">자료실 관리</div>
	<div class="accordion-content">
		<div>
			<a href="${pageContext.request.contextPath}/admin/gw_library_set">자료실 설정</a>
		</div>
	</div>

</div>