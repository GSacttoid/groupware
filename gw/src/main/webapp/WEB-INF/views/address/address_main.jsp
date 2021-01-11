<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
	<style>
	    .detailButton{
	        border: 1px solid #6d6d6d;
	        color: #000;
	        background-color: #c1c1c1;
	        cursor: pointer;
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
                <%@ include file="/WEB-INF/views/address/ADDRESS_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/address/ADDRESS_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
					<div class="main-wrap noto font14" style="width: 100%">
					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>직원 주소록
							</h3>
						</div>
						<hr />

							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="flex flex-justify">
									<div class="noto font16 weight700 m-b10">등록중인 사원 : ${count} 명</div>
									<div class="flex flex-justify">
										<div class="">
											<form method="post" action="${pageContext.request.contextPath}/address/main">
												<select class="sel-75 noto weight500" name="searchOpt" id="searchOpt">
													<option value="emp_name" <c:if test="${searchOpt eq 'emp_name'}">selected</c:if> >이름</option>
													<option value="emp_id" <c:if test="${searchOpt eq 'emp_id'}">selected</c:if> >아이디</option>
												</select> 
												<input type="text" name="words" autocomplete="off" value="${words}" style="margin-left: -2px;" />
												<button type="submit" class="btn-on" style="margin-left: -2px;">검색</button>
											</form>
										</div>
									</div>
								</div>
								<div class="member-list" style="margin-top: 10px;">
									<table
										style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
										<tr class="center noto font14 weight500" style="background-color: #6f809a; color: #fff;">
											<td class="td-5">No</td>
											<td class="td-10">아이디</td>
											<td >이름</td>
											<td class="td-10">부서</td>
											<td class="td-10">직급</td>
											<td class="td-10">전화번호</td>
											<td class="td-10">사내번호</td>
											<td class="td-10">권한</td>
											<td class="td-10">입사일</td>
										</tr>
										<c:forEach var="list" items="${list}" varStatus="status">
											<tr class="center noto font14">
												<td>${list.emp_num}</td>
												<td>${list.emp_id}</td>
												<td class="under weight500" onClick="location.href='${pageContext.request.contextPath}/address/employee_info?emp_num=${list.emp_num}'">${list.emp_name}</td>
												<td>${list.emp_buseo_name}</td>
												<td>${list.emp_grade_name}</td>
												<td>${list.emp_phone}</td>
												<td>${list.emp_company_tel}</td>
												<td>
													<select class="sel-75" style="width:75px;">
														<option value="10" <c:if test="${list.emp_auth eq '10'}">selected</c:if> >10등급</option>
														<option value="9" <c:if test="${list.emp_auth eq '9'}">selected</c:if> >8등급</option>
														<option value="8" <c:if test="${list.emp_auth eq '8'}">selected</c:if> >7등급</option>
														<option value="7" <c:if test="${list.emp_auth eq '7'}">selected</c:if> >6등급</option>
														<option value="6" <c:if test="${list.emp_auth eq '6'}">selected</c:if> >5등급</option>
														<option value="5" <c:if test="${list.emp_auth eq '5'}">selected</c:if> >4등급</option>
														<option value="4" <c:if test="${list.emp_auth eq '4'}">selected</c:if> >3등급</option>
														<option value="3" <c:if test="${list.emp_auth eq '3'}">selected</c:if> >2등급</option>
														<option value="2" <c:if test="${list.emp_auth eq '2'}">selected</c:if> >1등급</option>
														<option value="1" <c:if test="${list.emp_auth eq '1'}">selected</c:if> >1등급</option>
													</select>
												</td>
												<td>${list.emp_regdate}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!-- PAGER -->
								<c:if test = "${count eq 0}">
						        	<div style="width:100%;">
						        		<p class="center noto font16 weight500" style="margin: 0 auto;">가입중인 인원이 없습니다.</p>
						        	</div>
								</c:if>
	                        	<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/address/main?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/address/main?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/address/main?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/address/main?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/address/main?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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

</html>