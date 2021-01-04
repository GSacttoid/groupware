<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
    <script src="https://kit.fontawesome.com/6ecca0b569.js" crossorigin="anonymous"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 쓰기 권한 처리 -->
<c:if test = "${sessionScope.empId == null || sessionScope.empAuth < 9}">
<script>
	alert("게시물 작성 권한이 없습니다.\n관리자에게 문의하세요.");
	window.close();
</script>
</c:if>
<!-- 쓰기 권한 처리 -->

<body>
	<div style="background-color: #eee;">
		<div style="width: 100%; margin: 0 auto;">
			<div class="page-wrap bg-white" style="padding: 20px 0;">
				<div class="container p10 bg-white">
					<div class="title">
						<h3 class="tomato font18 noto m-b10 m-lr10">
							<i class="fas fa-feather-alt"></i><span> 시스템 공지사항 작성하기</span>
						</h3>
					</div>
					<div class="board-insert">
						<form id="frm" method="post" enctype="multipart/form-data" autocomplete="off">
							
							<table style="border:1px solid #d5d5d5;">
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 분류</td>
									<td class="" colspan="3" style="border:1px solid #d5d5d5;">
										<select name="sn_type"	class="sel-135">
											<option value="공지사항">공지사항</option>
											<option value="일반게시글">일반게시글</option>
										</select>
									</td>
									
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 제목</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="text" name="sn_title" class="input-100" maxlength="50" />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">작성자</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="text" name="sn_maker" class="" maxlength="5" required readonly value="${sessionScope.empName}" />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">접근권한</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<span class="noto font14 center p-lr10" style="line-height:35px;">읽기권한: </span>
										<select name="sn_read"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
										<input type="hidden" name="sn_write" value="1" />
										<span class="noto font14 center p-lr10" style="line-height:35px;">다운로드권한: </span>
										<select name="sn_download"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
										
										<span class="noto font14 center p-lr10" style="line-height:35px;">댓글권한: </span>
										<select name="sn_reply"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 내용</td>
									<td colspan="3" class="td-90"	style="">
										<textarea name="sn_content" id="editor" 
											style="width: 100%; height: 300px; padding: 10px; border-radius: 2px;" class="noto">
										</textarea> 
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 300;
										</script>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">첨부파일</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="file" name="sn_files" class="input-100" />
									</td>
								</tr>
							</table>
							<div class="btn-grp center m-t10">
								<button type="submit" name="btn" class="btn-normal" onClick="noticeWrite();">공지작성</button>
								<button type="button" onClick="window.close();" class="btn-red popup">창닫기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>

function noticeWrite() {
	
	if( $.trim($("#sn_title").val()) == '' ) {
		alert("게시판 제목을 입력하세요.");
		$("#sn_title").focus();
		return false;
	}

	var formData = $("#frm").serialize();
	
	$.ajax({
		url		: "${pageContext.request.contextPath}/notice/system_notice_write",
		type	: "POST",
		data	: formData,
		success	: function(resData) {
			alert("공지사항이 등록되었습니다.");
		},
		error	:function() {
			alert("시스템 에러");
		}
	});
}


</script>