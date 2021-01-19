<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
	<style>
	    .detailButton{
	        border: 1px solid #6d6d6d;
	        color: #000;
	        background-color: #c1c1c1;
	        cursor: pointer;
	    }
	    .tr-even {
			background-color: #eff3f9;
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
					<div class="main-wrap noto font14" style="width: 100%">
					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i> ${menu_name}
							</h3>
						</div>
						<hr />

							<div class="p10" style="border: 1px solid #c1c1c1;">

									<div class="noto font16 weight700 m-b10">등록중인 게시글 : ${count} 개</div>
									<div class="flex flex-justify">
										<div class="">
											<button type="button" id="articleDeleteAll" class="btn-red">선택삭제</button>
										</div>
										<div class="">
											<form method="post" action="${pageContext.request.contextPath}/article/article_list">
												<select class="sel-75 noto weight500" name="searchOpt" id="searchOpt">
													<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
													<option value="subject" <c:if test="${searchOpt eq 'subject'}">selected</c:if> >제목</option>
													<option value="writer" <c:if test="${searchOpt eq 'writer'}">selected</c:if> >작성자</option>
												</select> 
												<input type="hidden" name="menu_code" value="${menu_code}" />
												<input type="text" name="words" autocomplete="off" value="${words}" style="margin-left: -2px;" />
												<button type="submit" class="btn-on" style="margin-left: -2px;">검색</button>
												<button type="button" class="btn-on" 
												onClick="location.href='${pageContext.request.contextPath}/article/com_article_insert?menu_code=${menu_code}'">게시글 작성</button>
											</form>
										</div>
									</div>

								<div class="member-list" style="margin-top: 10px;">
									<table
										style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
										<tr class="center noto font14 weight500" style="background-color: ${menu_color}; color: #fff;">
											<td class="td-3">
					                            <input type="checkbox" onClick="chkAll();" id="chkAll" />
					                        </td>
					                        <td class="td-5">번호</td>
					                        <td class="td-8">분류</td>
					                        <td>게시물제목</td>
					                        <td class="td-10">작성자</td>
					                        <td class="td-5">조회</td>
					                        <td class="td-13">날짜</td>
					                        <td class="td-8">관리</td>
										</tr>
										<c:forEach var="articleList" items="${list}" varStatus="status"> 
						                    <tr class="center font14">
						                        <td>
						                            <input type="checkbox" name="chk" class="chk" data-uid="${articleList.aid}" data-code="${menu_code}" />
						                        </td>
						                        <td>
							                        <c:if test = "${articleList.division eq 'N'}">
							                        	${(count - status.index) - ((curPage - 1) * end)}
							                        </c:if>
							                        <c:if test = "${articleList.division eq 'Y'}">
							                        	-
							                        </c:if>
						                        </td>
						                        <td>
							                        <c:if test = "${articleList.division eq 'Y'}">
							                        	<span class="notice">알림글</span>
							                        </c:if>
							                        <c:if test = "${articleList.division eq 'N'}">
							                        	<span class="normal">일반</span>
							                        </c:if>
						                        </td>
						                        <td class="left p-lr10">
						                        <c:forEach begin="1" end="${articleList.re_level}">
						                        	&nbsp;<img src="${pageContext.request.contextPath}/images/icon_reply.gif" />
						                        </c:forEach>
						                            <a href="${pageContext.request.contextPath}/article/com_article_view?menu_code=${menu_code}&aid=${articleList.aid}" class="under weight700">${articleList.subject}</a>
						                            <span class="tomato">(${articleList.cnt})</span>
						                            <c:set var="fileName" value="${fn:toLowerCase(articleList.fileOriName)}" />
						                            <c:forTokens var="ext" items="${fileName}" delims="." varStatus="status">
														<c:if test="${status.last}">
															<c:choose>
																<c:when test="${ext eq 'xls' || ext eq 'xlsx' || ext eq 'ppt' || ext eq 'pptx' || ext eq 'hwp' || ext eq 'pdf'}">
																	<i class="far fa-file-alt"></i>
																</c:when>
																
																<c:when test="${ext eq 'jpg' || ext eq 'png' || ext eq 'gif'}">
																	<i class="far fa-file-image"></i>
																</c:when>
															</c:choose>
														</c:if>
													</c:forTokens>
						                        </td>
						                        <td>${articleList.writer}</td>
						                        <td>${articleList.hit}</td>
						                        <td>${articleList.regdate}</td>
						                        <td>
						                            <button type="button" class="s-btn-on" onClick="location.href='${pageContext.request.contextPath}/article/com_article_modify?menu_code=${menu_code}&aid=${articleList.aid}'">수정</button>
						                            <button type="button" class="s-btn-off" onClick="articleDelete('${menu_code}', ${articleList.aid});">삭제</button>
						                        </td>
						                    </tr>
						                    </c:forEach>
									</table>
								</div>
								<!-- PAGER -->
								<c:if test = "${count eq 0}">
						        	<div style="width:100%;">
						        		<p class="center noto font16 weight500" style="margin: 0 auto;">작성된 게시글이 없습니다.</p>
						        	</div>
								</c:if>
	                        	<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}&curPage=1&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-double-left"></i></a>
			                                 	</span>
			                             	</c:when>
			                             	<c:otherwise>
			                                	<span class="page">
			                                		<i class="fas fa-angle-double-left"></i>
			                                	</span>
			                               	</c:otherwise>
			                             </c:choose>
			                              
			                             <c:choose>
			                               	<c:when test = "${curPage > 1}">
			                               		<span class="page">
			                                    	<a href="${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}&curPage=${curPage-1}&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-left"></i></a>
			                                	</span>
			                               	</c:when>
			                             	<c:otherwise>
				                               	<span class="page">
				                               		<i class="fas fa-angle-left"></i>
				                               	</span>
			                           		</c:otherwise>
			                           	</c:choose>
			                           	<c:forEach begin="${blockBegin}" end ="${blockEnd}" var="num">
			                           		<c:if test="${selected != num}">
			                           			<a href="${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}&curPage=${num}&searchOpt=${searchOpt}&words=${words}">
			                                		<span class="page">${num}</span>
			                            		</a>
			                            	</c:if>
			                            
			                            	<c:if test="${selected == num}">
			                                	<span class="page page-active">
			                                    	<a href="" class="f6">${num}</a>
			                                	</span>
			                            	</c:if>
			                           </c:forEach>
			                           <c:choose>
			                               	<c:when test = "${curPage != totalPage }">
			                               		<a href="${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}&curPage=${curPage+1}&searchOpt=${searchOpt}&words=${words}">
			                               			<span class="page">
			                                     		<i class="fas fa-angle-right"></i>
			                                 		</span>
			                             		</a>
			                             	</c:when>
			                             	<c:otherwise>
			                             		<span class="page">
			                               			<i class="fas fa-angle-right"></i>
			                            		</span>
			                             	</c:otherwise>
			                     		</c:choose>
			                     		<c:choose>
			                               	<c:when test = "${curPage != totalPage }">
			                               		<span class="page">
			                                   		<a href="${pageContext.request.contextPath}/article/article_list?menu_code=${menu_code}&curPage=${totalPage}&searchOpt=${searchOpt}&words=${words}"><i class="fas fa-angle-double-right"></i></a>
			                               		</span>
			                             	</c:when>
			                             	<c:otherwise>
			                               		<span class="page">
			                               			<i class="fas fa-angle-double-right"></i>
			                            		</span>
			                             	</c:otherwise>
			                     		</c:choose>
			                         </div>
								</c:if>
								<!-- PAGER -->
							</div>
					</div>
				</div>
            </div>
        </main>
    </div>
</body>
<script>
	$(function() {
		$("tr:nth-child(2n+3)").addClass("tr-even");
	});
</script>
<script>
$("#articleDeleteAll").click(function() {
    var str = confirm("선택하신 게시물을 삭제하시겠습니까?\n연결된 댓글 및 모든 데이터가 삭제 됩니다.");
    var menu_code = $(".chk").attr("data-code");
    if( str ) {
        var chkArr = new Array();
        var boardArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });
        $.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/article/com_article_delete_all",
        	data : { 
        		chkArr : chkArr,
        		boardArr : boardArr,
        		menu_code : menu_code
        	},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 게시물이 삭제 되었습니다.');
                    window.location.reload();
                    
        		}else{
        			alert('게시물 삭제에 실패했습니다.');
                    window.location.reload();
        		}
            },
            error : function() {
            	alert("선택하신 게시물 정보가 없습니다.");
            }
        });
    }
});
</script>
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
	    		window.location.reload();
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}
</script>
<script>
$(document).ready(function(){
    $("#chkAll").click(function(){
        if($("#chkAll").prop("checked")){
            $("input[name=chk]").prop("checked",true);
        }else{
            $("input[name=chk]").prop("checked",false);
        }
    })
})
</script>
</html>