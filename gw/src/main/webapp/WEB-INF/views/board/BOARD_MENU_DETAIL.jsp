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
			<a href="${pageContext.request.contextPath}/board/main" title="board" class="f6"><i class="fas fa-file-signature"></i> 게시판 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div class="p10 m-b10" style="width:100%; background-color:#347765; border-radius:3px; ">
		<button class="noto font18 weight700 f6 center p-tb5" style="width:100%; background-color:#347765;">게시글 작성하기</button>
	</div>
	<div class="accordion-header" >회사 메뉴</div>
	<div class="accordion-approval">
		<div style="">
			<a style="cursor:pointer; color:#5ebfd9;" onClick="">전체</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">공지사항</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">건의사항</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">일반 게시판</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">앨범 게시판</a>
		</div>
	</div>
	<div class="accordion-header">부서 메뉴</div>
	<div class="accordion-approval">
		<div style="">
			<a style="cursor:pointer; color:#5ebfd9;" onClick="">전체</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">건의사항</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">일반 게시판</a>
		</div>
		<div>
			<a style="cursor:pointer;" onClick="">앨범 게시판</a>
		</div>
	</div>
	<div class="accordion-header" >임시보관 게시글</div>

	<div class="accordion-header-ver2" ><i class="far fa-trash-alt"></i> 휴지통</div>
	<div class="accordion-header-ver2" style="border-bottom: 1px solid #6d6d6d;"><i class="fas fa-cogs"></i> 환경설정</div>
</div>

<script>
function writeApproval(){
  	 //window.open(주소, 별명, 넓이/높이/위치/스코롤바)
  	 var url 	="${pageContext.request.contextPath}/approval/write_approval";
  	 var nick	="approval";
  	 var opt	="width=1300, height=700, top=100, left=100";
  	 window.open(url,nick,opt);
}
</script>