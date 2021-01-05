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
			<a href="${pageContext.request.contextPath}/library/main" title="library" class="f6"><i class="fas fa-file-signature"></i> 자료실 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div class="p10 m-b10" style="width:100%; background-color:#347765; border-radius:3px; ">
		<button class="noto font18 weight700 f6 center p-tb5" style="width:100%; background-color:#347765;">자료 등록하기</button>
	</div>
	<div class="accordion-header" >문서 자료실</div>
	<div class="accordion-header">유틸 자료실</div>
	<div class="accordion-header" >임시보관함</div>

	<div class="accordion-header-ver2" ><i class="far fa-trash-alt"></i> 휴지통</div>
	<div class="accordion-header-ver2" style="border-bottom: 1px solid #6d6d6d;"><i class="fas fa-cogs"></i> 환경설정</div>
</div>

