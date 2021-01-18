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
			    <div class="main-wrap noto font14" id="main" style="width:100%;">
			        <div class="p20">
			        	<div class="flex flex-justify" style="line-height:center;">
			   	            <div class="notice-title font14 noto">
				                <h2><i class="fas fa-book"></i> 회사 공지사항</h2>
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
			                    <c:forEach var="noticeList" items="${list}" varStatus="status">
				                    <tr>
				                        <td>${noticeList.sn_num}</td>
				                        <td>
				                        	<c:if test="${noticeList.sn_type == '공지사항'}">
				                        		<div class="noto font14 p5 f6 m-lr20" style="background-color: #fc6468; border-radius: 2px;">${noticeList.sn_type}</div>
				                        	</c:if>
				                        	
				                        	<c:if test="${noticeList.sn_type == '일반게시글'}">
				                        		<div class="noto font14 weight500 p5 m-lr20 bg-gray" style="border-radius: 2px; border:1px solid #d5d5d5;">${noticeList.sn_type}</div>
				                        	</c:if>
			                        	</td>
				                        <td>
				                        	<div class="left p10 under weight700" 
				                        	onClick="location.href='${pageContext.request.contextPath}/admin/company_notice_view?sn_num=${noticeList.sn_num}'">${noticeList.sn_title}</div>
				                        </td>
				                        <td>${noticeList.sn_count}</td>
				                        <td>${noticeList.sn_maker}</td>
				                        <td>${noticeList.sn_regdate}</td>
				                        <td>
				                        	<button class="s-btn-on" id="modifyNotice" onClick="location.href='${pageContext.request.contextPath}/admin/company_notice_modify?sn_num=${noticeList.sn_num}'">수정</button>
				                        	<button class="s-btn-off" id="deleteNotice" onClick="noticeDelete('${noticeList.sn_num}');">삭제</button>
				                        </td>
				                    </tr>
								</c:forEach>
			                </table>
							<div>
								<c:if test = "${count eq 0}">
						        	<div style="width:100%;">
						        		<p class="center noto font16 weight500" style="margin: 0 auto;">등록된 공지가 없습니다.</p>
						        	</div>
								</c:if>
								<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/admin/company_notice?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/admin/company_notice?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/admin/company_notice?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/admin/company_notice?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/admin/company_notice?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
   	 var url 	="${pageContext.request.contextPath}/admin/company_notice_insert";
   	 var nick	="notice";
   	 var opt	="width=1300, height=750, top=100, left=100";
   	 window.open(url,nick,opt);
    } 
    
    function noticeDelete(sn_num) {
    	var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
        if( str ) {   
            $.ajax({
            	url 	: "${pageContext.request.contextPath}/admin/company_notice_delete",
            	type 	: "POST", 	
            	data 	: { sn_num : sn_num },
            	success	: function (resData) {
            		alert("삭제되었습니다.");
    	    		window.location.href="${pageContext.request.contextPath}/admin/company_notice";
                },
                error 	: function() {
                	alert("시스템 오류!");
                }
            });
        }
    }

</script>



</html>