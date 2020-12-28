<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="">
	<div class="title-detail" style="font-size: 14px; border-bottom: 1px solid #6d6d6d;">
		<h2>
			<a href="${pageContext.request.contextPath}/admin/main" title="관리자메뉴" class="f6"><i class="fab fa-codepen m-lr5"></i> 관리자 메뉴</a>
		</h2>
	</div>

	<div id="" class="flex flex-justify">
		<a href="#" class="tab active-all" id="close">전체닫기</a> <a href="#" class="tab" id="open">전체열기</a>
	</div>
</div>

<div class="accordion">

	<div class="accordion-header">그룹웨어 정보</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getSystemNotice();">시스템 공지사항</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getGwInfo();">그룹웨어 사용정보</a>
		</div>
	</div>

	<div class="accordion-header">회사 정보 설정</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getCompanyInfo();">회사 정보 관리</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getBuseoInsert();">부서 등록</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getGradeInsert();">직급 등록</a>
		</div>
	</div>

	<div class="accordion-header">사원 및 관리자 정보 관리</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getEmpList();">사원 관리</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getAdminInfo();">관리자 정보 관리</a>
		</div>
	</div>

	<div class="accordion-header">커뮤니티</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getCompanyNotice();">회사 공지 사항</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getSurveySet();">설문 조사 설정</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getComMenuSet();">회사 메뉴 설정</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getBuseoMenuSet();">부서 메뉴 설정</a>
		</div>
	</div>

	<div class="accordion-header">인사 관리</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getCommuteSet();">출퇴근 설정</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getVacationSet();">휴가 종류 설정</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getVacationNumSet();">휴가 일수 설정</a>
		</div>
	</div>

	<div class="accordion-header">전자결재</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getApprovalForm();">전자결재 양식관리</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="getApprovalSet();">전자결재 설정</a>
		</div>
	</div>

	<div class="accordion-header">자료실 관리</div>
	<div class="accordion-content">
		<div>
			<a style="cursor:pointer;" onClick="getLibrarySet();">자료실 설정</a>
		</div>
	</div>

</div>