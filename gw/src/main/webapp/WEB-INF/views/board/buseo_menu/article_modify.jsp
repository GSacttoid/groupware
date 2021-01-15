<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<div class="main-wrap noto font14" style="width: 100%">
						<div class="p20">
							<div class="bg-white">
								<div class="title">
									<h3 class="tomato font18 noto m-b10">
										<i class="fas fa-feather-alt"></i> ${menu_name} - 게시글 수정하기
									</h3>
								</div>
								<div class="board-insert">
									<form id="frm" method="post" action="${pageContext.request.contextPath}/buseo_article/buseo_article_modify"
										enctype="multipart/form-data" autocomplete="off">
										<input type="hidden" name="menu_code" value="${menu_code}" />
										<input type="hidden" name="aid" value="${modifyArticle.aid}" />
										<table>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 분류</td>
												<td class="p-lr3" colspan="3">
													<select name="division"	class="sel-135">
														<option value="N" <c:if test="${modifyArticle.division eq 'N'}">selected</c:if> >일반게시글</option>
                                    					<option value="Y" <c:if test="${modifyArticle.division eq 'Y'}">selected</c:if> >알림게시글</option>
													</select>
												</td>
												
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 제목</td>
												<td colspan="3" class="p-lr3">
													<input type="text" name="subject" value="${modifyArticle.subject}" class="input-100" maxlength="100" style="width:100%;" required />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">작성자</td>
												<td colspan="3" class="p-lr3">
													<input type="text" name="writer" class="" maxlength="5" required value="${modifyArticle.writer}" />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 내용</td>
												<td colspan="3" class="p-lr3" style="padding-top: 2px; padding-bottom: 2px;">
													<textarea name="content" id="editor" class="noto"
														style="width: 100%; height: 300px; border: 1px solid #ccc; padding: 10px; border-radius: 2px;" >
														${modifyArticle.content}
													</textarea>
													<script>
														CKEDITOR.replace('editor');
														CKEDITOR.config.height = 300;
													</script>
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">첨부파일</td>
												<td colspan="3" class="p-lr3">
													<input type="file" name="files" class="input-100" style="width:100%;" />
												</td>
											</tr>
											<c:if test="${modifyArticle.fileOriName != null}">
						                        <tr>
						                            <td colspan="3" class="td-90 p-lr3 weight700">
														<span class="kr">기존 파일 : <a href="/buseo_article/buseo_article_download?aid=${modifyArticle.aid}&menu_code=${menu_code}">${modifyArticle.fileOriName}</a></span>
						                            </td>
						                        </tr>
					                        </c:if>
										</table>
										<div class="btn-grp center m-t10">
											<button type="submit" class="btn-on">게시글수정</button>
											<button type="button"
												onClick="location.href='${pageContext.request.contextPath}/buseo_article/article_list?menu_code=${menu_code}'"
												class="btn-red">게시글목록</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
</body>












