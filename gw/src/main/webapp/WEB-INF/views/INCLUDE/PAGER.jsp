<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
						<c:if test = "${count eq 0}">
					        	<div style="width:100%;">
					        		<p class="center noto font16 weight500" style="margin: 0 auto;">승인 대기중인 인원이 없습니다.</p>
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