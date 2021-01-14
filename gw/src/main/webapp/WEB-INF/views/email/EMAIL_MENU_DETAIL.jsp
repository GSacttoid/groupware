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
			<a href="${pageContext.request.contextPath}/email/main" title="email" class="f6"><i class="far fa-envelope"></i> e-mail 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div class="p10 m-b10" style="width:100%; background-color:#347765; border-radius:3px; ">
		<button class="noto font18 weight700 f6 center p-tb5" style="width:100%; background-color:#347765;"  onClick="writeMail();">편지쓰기</button>
	</div>
	<div class="accordion-header" style="border-bottom: 1px solid #6d6d6d; color:#5ebfd9;" onClick="location.href='${pageContext.request.contextPath}/email/main'">전체메일</div>
	<div class="accordion-header" onClick="location.href='${pageContext.request.contextPath}/email/email_list'">받은메일함</div>
	<div class="accordion-header" onClick="location.href='${pageContext.request.contextPath}/email/email_sent'">보낸메일함</div>
	<div class="accordion-header" onClick="location.href='${pageContext.request.contextPath}/email/email_temp'">임시보관함</div>
	<div class="accordion-header" onClick="location.href='${pageContext.request.contextPath}/email/email_keep'">보관함</div>
	<div class="accordion-header" style="border-bottom: 1px solid #6d6d6d;" onClick="location.href='${pageContext.request.contextPath}/email/email_myself'">내게쓴메일함</div>
	<div class="accordion-header-ver2" onClick="location.href='${pageContext.request.contextPath}/email/email_spam'"><i class="far fa-times-circle"></i> 스팸메일함</div>
	<div class="accordion-header-ver2" onClick="location.href='${pageContext.request.contextPath}/email/email_trash'"><i class="far fa-trash-alt"></i> 휴지통</div>
	<div class="accordion-header-ver2" onClick="location.href='${pageContext.request.contextPath}/address/mail_address'"><i class="far fa-address-book"></i> 주소록</div>
	<div class="accordion-header-ver2" style="border-bottom: 1px solid #6d6d6d;" onClick="location.href='${pageContext.request.contextPath}/email/email_set'"><i class="fas fa-cogs"></i> 환경설정</div>
</div>

<script>
function writeMail(){
  	 //window.open(주소, 별명, 넓이/높이/위치/스코롤바)
  	 var url 	="${pageContext.request.contextPath}/email/write_email";
  	 var nick	="email";
  	 var opt	="width=1300, height=700, top=100, left=100";
  	 window.open(url,nick,opt);
}
</script>