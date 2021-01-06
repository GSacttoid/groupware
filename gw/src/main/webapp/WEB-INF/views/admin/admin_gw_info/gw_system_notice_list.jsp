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
                <%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
			    <div class="main-wrap noto font14" style="width:100%;">
			        <div class="p20">
			        	<div class="flex flex-justify" style="line-height:center;">
			   	            <div class="notice-title font14 noto">
				                <h3><i class="fas fa-book"></i> 시스템 공지사항</h3>
				            </div>
				            <div>
				            	<button class="btn-on" onClick="noticeInsertOne();">공지작성</button>
				            </div>
			        	</div>
			
			            <hr />
			            <div class="list">
			                <table class="noto font14 center" style="width:100%;">
			                    <tr class="weight700" style="background-color: #6f809a; color: #fff;">
			                        <td class="td-5">번호</td>
			                        <td class="td-10">구분</td>
			                        <td class="td-50">제목</td>
			                        <td class="td-5">조회수</td>
			                        <td class="td-10">작성자</td>
			                        <td class="td-10">작성일</td>
			                        <td class="td-10">관리</td>
			                    </tr>
			                    <c:forEach var="articleList" items="${list}" varStatus="status">
				                    <tr>
				                        <td>${articleList.sn_num}</td>
				                        <td>${articleList.sn_type}</td>
				                        <td class="left p10 under weight700 ">${articleList.sn_title}</td>
				                        <td>${articleList.sn_count}</td>
				                        <td>${articleList.sn_maker}</td>
				                        <td>${articleList.sn_regdate}</td>
				                        <td>
				                        	<button class="s-btn-on">수정</button>
				                        	<button class="s-btn-off">삭제</button>
				                        </td>
				                    </tr>
								</c:forEach>
			                </table>
							<div>
								<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/admin/system_notice?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/admin/system_notice?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
			                                	</span>
			                               	</c:when>
			                             	<c:otherwise>
				                               	<span class="page">
				                               		<i class="fas fa-angle-left"></i>
				                               	</span>
			                           		</c:otherwise>
			                           	</c:choose>
			                           	<c:forEach begin="${blockBegin}" end = "${blockEnd}" var="num">
			                           		<c:if test="${selected != num}">
			                           			<a href="${pageContext.request.contextPath}/admin/system_notice?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/admin/system_notice?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/admin/system_notice?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
							</div>
			            </div>
					</div>
			    </div>
  			</div>
 		</main>
  	</div>
</body>
<script>
    $(function () {
        $(".list tr:nth-child(2n+3)").addClass("tr-even");
    });

    function noticeInsertOne(){
   	 //window.open(주소, 별명, 넓이/높이/위치/스코롤바)
   	 var url 	="${pageContext.request.contextPath}/notice/system_notice_insert";
   	 var nick	="notice";
   	 var opt	="width=1300, height=750, top=100, left=100";
   	 window.open(url,nick,opt);
   	 
    } 

</script>



</html>