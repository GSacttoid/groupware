<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
                <%@ include file="/WEB-INF/views/board/BOARD_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/board/BOARD_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
			    <div class="main-wrap noto font14" id="main" style="width:100%;">
			        <div style="background-color: #eee;">
						<div style="width: 100%; margin: 0 auto;">
							<div class="page-wrap bg-white" style="padding: 20px 0;">
								<div class="title">
									<h3 class="font18 noto m-lr10" style="color:tomato;">
										<i class="fas fa-feather-alt"></i><span> 회사 공지사항 상세보기</span>
									</h3>
								</div>
								<div class="board-insert p10">
									<form id="frm" name="frm" method="post" enctype="multipart/form-data" autocomplete="off">
										<table style="border:1px solid #d5d5d5;">
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 분류</td>
												<td class="p-lr3" colspan="3" style="border:1px solid #d5d5d5;">
													<input type="text" name="sn_type" id="sn_type" class="input-135" readonly value="${notice.sn_type}" />
												</td>
												
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 제목</td>
												<td colspan="3" class="td-90 p-lr3" style="border:1px solid #d5d5d5; ">
													<input type="text" id="sn_title" name="sn_title" value="${notice.sn_title}" readonly class="input-100" style="width:100%;" maxlength="50" />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">작성자</td>
												<td colspan="3" class="td-90 p-lr3" style="border:1px solid #d5d5d5;">
													<input type="text" id="sn_maker" name="sn_maker" class="" maxlength="5" readonly required value="${notice.sn_maker}" />
												</td>
											</tr>

											<tr>
												<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 내용</td>
												<td colspan="3" class="td-90"	style="">
													<textarea name="sn_content" id="editor" readonly style="width: 100%; height: 300px; padding: 10px; border-radius: 2px;" class="ckeditor">
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
				                        	<button type="button" onClick="location.href='${pageContext.request.contextPath}/notice/company_notice'" class="btn-red">목록보기</button>
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

</html>