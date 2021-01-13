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
.accordion-approval {
	width:100%;
    padding: 5px 8px;
    font-size: 14px;
    background-color: #2c3f7c;
    color: #092756;
    display: inline-block;
}
.accordion-approval a {
    color: #fff;
    line-height: 1.8;
    padding-left: 10px;
}
.accordion-approval a::before{
    content: '';
    display: inline-block;
    width: 5px;
    height: 5px;
    background-color: #fff;
    margin-right: 10px;
    vertical-align: middle;
    transform: rotate(45deg) translateY(-50%);
}
</style>
<div class="">
	<div class="title-detail" style="font-size: 14px; border-bottom: 1px solid #6d6d6d;">
		<h2>
			<a href="${pageContext.request.contextPath}/survey/main" title="survey" class="f6"><i class="fas fa-file-signature"></i> 설문조사 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div class="p10 m-b10" style="width:100%; background-color:#347765; border-radius:3px; ">
		<button type="button" class="noto font18 weight700 f6 center p-tb5" onClick="location.href='${pageContext.request.contextPath}/survey/survey_insert'"
		style="width:100%; background-color:#347765;">설문조사 등록하기</button>
	</div>
	<div class="accordion-header" >
		<a class="f6 font16" href="${pageContext.request.contextPath}/survey/survey_list/total_ing">진행중인 설문조사</a>
		<span class="m-lr3" style="color:#f00;">[${openCount}]</span>
	</div>

	<div class="accordion-header">
		<a class="f6 font16" href="${pageContext.request.contextPath}/survey/survey_list/total_end">종료된 설문조사</a>
		<span class="m-lr3" style="color:#f00;">[${closeCount}]</span>
	</div>


	<div class="accordion-header-ver2" style="border-bottom: 1px solid #6d6d6d;"><i class="fas fa-cogs"></i> 환경설정</div>
</div>