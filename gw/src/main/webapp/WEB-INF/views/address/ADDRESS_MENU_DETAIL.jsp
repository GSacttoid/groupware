<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.accordion-header-ver2 {
    font-weight: 700;
    padding: 12px 8px;
    cursor: pointer;
    font-size: 16px;
}
.accordion-header-ver2:hover {
    background-color: #092774;
    color: #ccc;
}

</style>
<div class="">
	<div class="title-detail" style="font-size: 14px; border-bottom: 1px solid #6d6d6d;">
		<h2>
			<a href="${pageContext.request.contextPath}/address/main" title="address" class="f6"><i class="fas fa-address-book"></i> 인사관리</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div class="p10 m-b10" style="width:100%; background-color:#347765; border-radius:3px; ">
		<button class="noto font18 weight700 f6 center p-tb5" style="width:100%; background-color:#347765;"
		 onClick="location.href='${pageContext.request.contextPath}/address/employee_my?emp_num=${sessionScope.empNum}'">내정보 상세보기</button>
	</div>
	<div class="accordion-header" onClick="location.href='${pageContext.request.contextPath}/address/main'">
		사원 목록
	</div>


	<div class="accordion-header-ver2" style="border-bottom: 1px solid #6d6d6d;">
		<i class="fas fa-cogs"></i> 환경설정
	</div>
</div>

