<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
    <script src="https://kit.fontawesome.com/6ecca0b569.js" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.email-btn{
	padding:10px 20px;
	border:1px solid #d5d5d5;
	background-color:#eee;
	margin-bottom:5px;
	font-weight: 700;
}
.email-btn:hover{
	background-color: #d5d5d5;
}
</style>
<body>
	<div style="background-color: #eee;">
		<div style="width: 100%; margin: 0 auto;">
			<div class="page-wrap bg-white" style="padding: 10px;">
				<div class="container p10 bg-white">
					<div class="title">
						<h3 class="tomato font18 noto m-b10 m-lr10">
							<i class="fas fa-feather-alt"></i><span> 새메일 작성하기</span>
						</h3>
					</div>
					<div class="">
						<form id="frm" method="post" enctype="multipart/form-data" autocomplete="off">
							<div class="flex flex-justify">
								<div>
									<button class="email-btn" type="submit"><i class="far fa-paper-plane"></i> 보내기</button>
									<button class="email-btn" type="button">미리보기</button>
									<button class="email-btn" type="button">임시저장</button>
								</div>
								<div>
									<button type="button" onClick="window.close();" class="btn-red">창닫기</button>
								</div>
							</div>
							<table style="border:1px solid #d5d5d5;">
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">보내는 사람</td>
									<td class="p-lr3" colspan="3" style="border:1px solid #d5d5d5;">
										<input type="text" name="s_email" class="input-100" maxlength="50" />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">받는 사람</td>
									<td class="flex flex-justify p-lr3" colspan="3" style="border:1px solid #d5d5d5; cursor: pointer;">
										<input type="text" name="r_email" class="input-100" maxlength="50" placeholder="메일주소 사이에 ,(콤마) 또는 ;(세미콜론)으로 구분하여 입력하세요." />
										<i class="far fa-plus-square m-lr3" style="font-size:36px; color:#004d40;"></i>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">참조</td>
									<td class="flex flex-justify p-lr3" colspan="3" style="border:1px solid #d5d5d5; cursor: pointer;">
										<input type="text" name="refer" class="input-100" maxlength="50" placeholder="메일주소 사이에 ,(콤마) 또는 ;(세미콜론)으로 구분하여 입력하세요." />
										<i class="far fa-plus-square m-lr3" style="font-size:36px; color:#004d40;"></i>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">제목</td>
									<td class="p-lr3" colspan="3" style="border:1px solid #d5d5d5;">
										<input type="text" name="e_title" class="input-100" maxlength="50" />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">내용</td>
									<td colspan="3" class="td-90"	style="">
										<textarea name="e_content" id="editor" 
											style="width: 100%; height: 300px; padding: 10px; border-radius: 2px; border:1px solid #d5d5d5;" class="noto">
										</textarea> 
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 300;
										</script>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">첨부파일</td>
									<td colspan="3" class="p-lr3" style="border:1px solid #d5d5d5;">
										<input type="file" name="e_files" class="input-100" />
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>

function emailWrite() {
	
	if( $.trim($("#e_title").val()) == '' ) {
		alert("메일 제목을 입력하세요.");
		$("#e_title").focus();
		return false;
	}

	if( $.trim($("#r_email").val()) == '' ) {
		alert("받는사람을 입력하세요.");
		$("#r_email").focus();
		return false;
	}

	var formData = $("#frm").serialize();
	
	$.ajax({
		url		: "",
		type	: "POST",
		data	: formData,
		success	: function(resData) {
		},
		error	:function() {
			alert("시스템 에러");
		}
	});
}


</script>