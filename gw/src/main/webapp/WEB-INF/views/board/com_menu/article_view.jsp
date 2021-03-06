<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 읽기 권한 처리 -->
<c:if
	test="${sessionScope.empNum == null || sessionScope.empAuth < menu_read}">
	<!-- 권한이 2보다 작음(직원x) -->
	<script>
		alert("게시물 읽기 권한이 없습니다.\n관리자에게 문의하세요.");
		history.go(-1);
	</script>
</c:if>
<!-- 읽기 권한 처리 -->
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
										<i class="fas fa-feather-alt"></i> ${menu_name}
									</h3>
								</div>
								<div class="board-insert">
									<form id="frm" method="post" enctype="multipart/form-data" autocomplete="off">
										<input type="hidden" name="menu_code" value="${menu_code}" />
										<input type="hidden" name="aid" value="${article.aid}" />
										<table>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 분류</td>
												<td class="p-lr3" colspan="3">
													<select name="division"	class="sel-135">
														<option value="N" <c:if test="${article.division eq 'N'}">selected</c:if> >일반게시글</option>
                                    					<option value="Y" <c:if test="${article.division eq 'Y'}">selected</c:if> >알림게시글</option>
													</select>
												</td>
												
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 제목</td>
												<td colspan="3" class="p-lr3">
													<input type="text" name="subject" value="${article.subject}" readonly class="input-100" maxlength="100" style="width:100%;" required />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">작성자</td>
												<td colspan="3" class="p-lr3">
													<input type="text" name="writer" class="" maxlength="5" readonly required value="${article.writer}" />
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto bg-gray f6" style="background-color:${menu_color}">게시글 내용</td>
												<td colspan="3" class="p-lr3" style="padding-top: 2px; padding-bottom: 2px;">
													<textarea name="content" id="editor" class="noto" readonly 
														style="width: 100%; height: 300px; border: 1px solid #ccc; padding: 10px; border-radius: 2px;" >
														${article.content}
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
													<c:if test="${article.fileOriName eq ''}">
														<span>첨부파일이 없습니다.</span>
													</c:if>
													<c:if test="${article.fileOriName ne ''}">
														<!-- 파일 다운로드 권한 설정 -->
														<c:choose>
															<c:when test="${sessionScope.empAuth < menu_download}">
																<span>
																	<a href="#" id="msg_pop">${article.fileOriName}</a>
																</span>
															</c:when>
															<c:otherwise>
																<span>
																	<a href="${pageContext.request.contextPath}/article/com_article_download?menu_code=${menu_code}&aid=${article.aid}">
																		${article.fileOriName}</a>
																</span>
															</c:otherwise>
														</c:choose>
													</c:if>
													<!-- 파일 다운로드 권한 설정 -->
												</td>
											</tr>
											<tr>
												<td class="td-10 center weight700 noto under bg-gray f6" style="background-color:${menu_color}">게시글 조회수</td>
												<td colspan="3" class="td-90 p-lr3 weight700">${article.hit} 회</td>
											</tr>
										</table>
										<div class="btn-grp center m-t10">
											<button type="button" class="btn-normal" 
											 onClick="location.href='${pageContext.request.contextPath}/article/com_article_reply?menu_code=${menu_code}&aid=${article.aid}'">게시글답글</button>
											
											<!-- 수정 및 삭제는 관리자 또는 작성자만 가능 -->
											<c:if test="${sessionScope.empAuth eq 10 or sessionScope.empName eq article.writer}">
												<button type="button" class="btn-normal" 
												onClick="location.href='${pageContext.request.contextPath}/article/com_article_modify?menu_code=${menu_code}&aid=${article.aid}'">게시글수정</button>
												<button type="button" class="btn-cancel" onClick="articleDelete('${menu_code}', ${article.aid});">게시글삭제</button>
											</c:if>
											
											<button type="button" class="btn-red"
												onClick="location.href='${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}'">게시글목록</button>
										</div>
										
									</form>
								</div>
							</div>
						</div>
						<!-- 댓글 화면 구성 -->
						<!-- 댓글 쓰기 화면 -->
						<div class="p-lr20" style="background-color: #fff; border:1px solid #d5d5d5;">
							<div class="font18 noto weight500 p5" style="margin-top:5px;">${commentListCount}개의 댓글</div>
							<hr style="margin: 5px 0; border: 1px solid #f7f7f7;" />
							<div style="margin-top: 5px;">
								<form id="frm" method="POST" action="${pageContext.request.contextPath}/article/com_comment_write">
									<!-- ajax로 자료 전체 전송하기(input -> name을 사용) 위한 id -->
									<input type="hidden" id="menu_code" name="menu_code" value="${menu_code}" /> 
									<input type="hidden" name="aid" value="${article.aid}" />
									<input type="hidden" name="who" value="${sessionScope.empName}" readonly />
									<textarea id="comment" name="comment" style="border: 1px solid #d5d5d5; width: 100%; height: 50px; background-color: #fffbe6;"
										placeholder="댓글 내용을 입력하세요." class="p10 noto font16"></textarea>
									<div class="flex flex-justify p10" >
										<!-- 비밀 댓글 & 댓글 저장 버튼-->
										<div class="">
											<input type="checkbox" name="" /> 비밀댓글
										</div>
										<div class="">
											<button id="btn" style="padding: 5px 10px; background-color: #29302e; color: #fff; border-radius: 3px;"
												class="noto font14 weight500" type="submit">댓글등록</button>
										</div>
									</div>
								</form>
							</div>
							<div id="commentList">
								
								<c:forEach var="commentList" items="${commentList}" varStatus="status">
									<div class="flex flex-justify m-lr10 m-tb5 p10" style="width:100%; border-bottom: 1px solid #d5d5d5;">
										<div class="flex">
											<div><i class="fas fa-user-circle font16"></i></div>
											<div><p class="font16 noto m-lr10" style="line-height:18px;">${commentList.who}</p></div>
											<div><p class="weight500 noto font16" style="line-height:18px;">${commentList.comment}</p></div>
										</div>
										<div class="flex">
											<div class="right m-lr5" style="color:#a8a8a8;"><p>${commentList.regdate}</p></div>
											<c:if test="${commentList.who == sessionScope.empName || sessionScope.empAuth > 9}">
												<a href="${pageContext.request.contextPath}/article/com_comment_delete?menu_code=${menu_code}&cid=${commentList.cid}">
												<i class="fas fa-times-circle font14" ></i></a>
											</c:if>
										</div>
									</div>
								</c:forEach>
								
							</div>
						</div>
						<!-- 댓글 쓰기 화면 -->
						<!-- //댓글 화면 구성 -->
					</div>
				</div>
			</main>
		</div>
</body>

<script>
function articleDelete(menu_code, aid) {
	var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
	var formData  = {
			menu_code : menu_code,
			aid : aid
	};
    if( str ) {        
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/article/com_article_delete",
        	type 	: "POST", 	
        	data 	: formData,
        	success	: function (resData) {
        		alert("삭제되었습니다.");
        		window.history.go(-1);
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}
</script>










