<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 쓰기 권한 처리 -->
<c:if test = "${sessionScope.empId == null || sessionScope.empAuth < 9}">
<script>
	alert("게시물  수정 권한이 없습니다.\n관리자에게 문의하세요.");
	window.close();
</script>
</c:if>
<!-- 쓰기 권한 처리 -->
<style>
	tr{
		height:40px;
	}
	td{
		border:1px solid #d5d5d5;
	}

	.tr-even{
	    background-color: #eff3f9;
	}
	.accordion-content {
		display: block;
	}
  </style>
<body>
	<div class="total-wrap">
    	<!-- INCLUDE LOGO (ALL) -->
        <%@ include file="/WEB-INF/views/INCLUDE/GW_LOGO.jsp" %>
        <!-- /INCLUDE LOGO (ALL) -->
        <main>
            <div class="container">
            	<!-- INCLUDE MENU (ALL) -->
                <%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
			    <div class="main-wrap noto font14" id="main" style="width:100%;">
			        <div style="background-color: #eee;">
						<div style="width: 100%; margin: 0 auto;">
							<div class="page-wrap bg-white" style="padding: 20px 0;">
								<div class="title">
									<h3 class="font18 noto m-lr10" style="color:tomato;">
										<i class="fas fa-feather-alt"></i><span> 시스템 공지사항 수정하기</span>
									</h3>
								</div>
								<div class="board-insert p10">
									<form id="frm" name="frm" method="post" enctype="multipart/form-data" autocomplete="off">
										<table style="border:1px solid #d5d5d5;">
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 분류</td>
												<td class="p-lr3" colspan="3" style="border:1px solid #d5d5d5;">
													<select name="sn_type" id="sn_type"	class="sel-135">
														<option value="공지사항" <c:if test="${notice.sn_type eq '공지사항'}">selected</c:if> >공지사항</option>
														<option value="일반게시글" <c:if test="${notice.sn_type eq '일반게시글'}">selected</c:if> >일반게시글</option>
													</select>
												</td>
												
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 제목</td>
												<td colspan="3" class="td-90 p-lr3" style="border:1px solid #d5d5d5; ">
													<input type="text" id="sn_title" name="sn_title" value="${notice.sn_title}" class="input-100" style="width:100%;" maxlength="50" />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">작성자</td>
												<td colspan="3" class="td-90 p-lr3" style="border:1px solid #d5d5d5;">
													<input type="text" id="sn_maker" name="sn_maker" class="" maxlength="5" required value="${notice.sn_maker}" />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">접근권한</td>
												<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
													<span class="noto font14 center p-lr3" style="line-height:35px;">읽기권한: </span>
													<select name="sn_read" id="sn_read"	class="sel-135 noto font14">
														<option value="1" <c:if test="${notice.sn_read eq '1'}">selected</c:if> >사원이상</option>
														<option value="2" <c:if test="${notice.sn_read eq '2'}">selected</c:if> >대리이상</option>
														<option value="3" <c:if test="${notice.sn_read eq '3'}">selected</c:if> >과장이상</option>
														<option value="4" <c:if test="${notice.sn_read eq '4'}">selected</c:if> >부장이상</option>
													</select>
													<input type="hidden" name="sn_write" value="1" />
													<span class="noto font14 center p-lr10" style="line-height:35px;">다운로드권한: </span>
													<select name="sn_download" ind="sn_download" class="sel-135 noto font14">
														<option value="1" <c:if test="${notice.sn_download eq '1'}">selected</c:if> >사원이상</option>
														<option value="2" <c:if test="${notice.sn_download eq '2'}">selected</c:if> >대리이상</option>
														<option value="3" <c:if test="${notice.sn_download eq '3'}">selected</c:if> >과장이상</option>
														<option value="4" <c:if test="${notice.sn_download eq '4'}">selected</c:if> >부장이상</option>
													</select>
													
													<span class="noto font14 center p-lr10" style="line-height:35px;">댓글권한: </span>
													<select name="sn_reply" id="sn_reply" class="sel-135 noto font14">
														<option value="1" <c:if test="${notice.sn_reply eq '1'}">selected</c:if> >사원이상</option>
														<option value="2" <c:if test="${notice.sn_reply eq '2'}">selected</c:if> >대리이상</option>
														<option value="3" <c:if test="${notice.sn_reply eq '3'}">selected</c:if> >과장이상</option>
														<option value="4" <c:if test="${notice.sn_reply eq '4'}">selected</c:if> >부장이상</option>
													</select>
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 내용</td>
												<td colspan="3" class="td-90"	style="">
													<textarea name="sn_content" id="editor" style="width: 100%; height: 300px; padding: 10px; border-radius: 2px;" class="ckeditor">
														${notice.sn_content}
													</textarea> 
													<script>
														CKEDITOR.replace('editor');
														CKEDITOR.config.height = 300;
													</script>
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">첨부파일</td>
												<td colspan="3" class="td-90 p-lr3" style="border:1px solid #d5d5d5;">
													<input type="file" name="sn_files" class="input-100" style="width:100%;" />
												</td>
											</tr>
										</table>
										<input type="hidden" id="sn_num" name="sn_num" value="${notice.sn_num}"/>
										<div class="btn-grp center m-t10">
											<button type="submit" id="btn" name="btn" class="btn-on" onClick="noticeModify();">수정</button>
											<button type="button" onClick="location.href='${pageContext.request.contextPath}/admin/system_notice'" class="btn-red">목록보기</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
			    </div>
			 </div>
		</main>
	 </div>
</body>
<script>

function noticeModify(){
	var str = confirm("정보를 수정하시겠습니까?");
    if( str ) { 
		CKEDITOR.instances.editor.updateElement();
		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/notice/system_notice_modify",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				if(resData == "success"){
					alert("공지사항이 수정되었습니다.");
					window.location.href="${pageContext.request.contextPath}/admin/system_notice";
				}
			},
			error	:function() {
				alert("시스템 에러");
			}
		});
    }
}
</script>



</html>