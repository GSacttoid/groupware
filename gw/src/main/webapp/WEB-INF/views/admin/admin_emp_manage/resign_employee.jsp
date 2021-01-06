<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
table {
	border-collapse: collapse;
}
tr{
    height: 40px;
}
.list tr:first-child{
    background-color: #6f809a;
    color: #fff;
}
.tr-even{
    background-color: #eff3f9;
} 
td{
    border: 1px solid #d5d5d5;
}

</style>
 
    <div class="">
        <div class="noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h2><i class="fas fa-info-circle"></i> 퇴사자 리스트</h2>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">
								<button type="button" class="btn-off">전체선택</button>
								<button type="button" class="btn-red">전체삭제</button>
								<button type="button" class="btn-on">재등록</button>
                            </div>
                            <div class="m-b5">
                                <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                            </div>
                        </div>

                            <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 weight700 bg-gray">
                                	 <td class="td-5">선택</td>
                                     <td class="td-5">No</td>
                                     <td class="td-10">아이디</td>
                                     <td class="td-10">이름</td>
                                     <td class="td-10">부서</td>
                                     <td class="td-10">입사일</td>
                                     <td class="td-5">관리</td>
                                 </tr>

                                 <c:forEach var="list" items="${list}" varStatus="status">

	                                 <tr class="center noto font14">
	                                     <td><input type="checkbox" /></td>
	                                     <td>${list.emp_num}</td>
	                                     <td>${list.emp_id}</td>
	                                     <td>${list.emp_name}</td>
	                                     <td>${list.emp_buseo}</td>
	                                     <td>${list.emp_enter}</td>
	                                     <td>
	                                         <button type="button" class="s-btn-on">승인</button>
	                                         <button type="button" class="s-btn-off">거부</button>
	                                     </td>
	                                 </tr>
                                 </c:forEach>
                            </table>

					        <c:if test = "${count eq 0}">
					        	<div style="width:100%;">
					        		<p class="center noto font16 weight500" style="margin: 0 auto;">삭제 대기중인 인원이 없습니다.</p>
					        	</div>
							</c:if>
                        	<c:if test = "${count > 0}">
		                    	<div class="page-grp center m-t10">
		                         	<c:choose>
		                               	<c:when test = "${curPage > 1}">
											<span class="page">
		                                     	<a href="${pageContext.request.contextPath}/new_employee?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
		                                    	<a href="${pageContext.request.contextPath}/new_employee?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
		                           			<a href="${pageContext.request.contextPath}/new_employee?curPage=${num}">
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
		                               		<a href="${pageContext.request.contextPath}/new_employee?curPage=${curPage+1}">
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
		                                   		<a href="${pageContext.request.contextPath}/new_employee?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
                </form>
            </div>  
        </div>
    </div>