<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<style>
table {
	border-collapse: collapse;
}

tr {
	height: 40px;
	border: 1px solid #d5d5d5;
}

.list tr:first-child {
	background-color: #6f809a;
	color: #fff;
}

.tr-even {
	background-color: #eff3f9;
}

td {
	border: 1px solid #d5d5d5;
}

input[type="radio"] {
	width: 15px;
	height: 15px;
}

.accordion-content {
	display: block;
}
</style>
<body>
	<div class="total-wrap">
		<!-- INCLUDE LOGO (ALL) -->
		<%@ include file="/WEB-INF/views/INCLUDE/GW_LOGO.jsp"%>
		<!-- /INCLUDE LOGO (ALL) -->
		<main>
			<div class="container">
				<!-- INCLUDE MENU (ALL) -->
				<%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp"%>
				<!-- /INCLUDE MENU (ALL) -->
				<div class="detail-wrap">
					<!-- INCLUDE MENU_DETAIL (ADMIN) -->
					<%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp"%>
					<!-- /INCLUDE MENU_DETAIL (ADMIN) -->
				</div>
				<div class="main-wrap noto font14" style="width: 100%;">
					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>관리자 정보 관리
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li> 관리자를 지정할 수 있습니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<br />
						<form method="post" action="#">
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="noto font16 weight700 m-b10">1. 관리자 지정하기</div>
								<table
									style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
									<tr class="m-t10">
										<td class="font14 weight500" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리 권한</td>
										<td class="p10">
											<div class="flex">
												<label class="noto font14 weight700 m-lr10">
													<input type="radio" name="admin-total" value="10" checked style="margin: 4px;" />전체 관리자 [권한: 10등급]</label> 
											</div>
										</td>
									</tr>
									<tr class="">
										<td class="font14 weight500" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리자 지정하기</td>
										<td>
											<input type="text" class="input-135" id="emp_id" name="emp_id" style="margin-left: 2px;" />
											<button type="button" class="btn-on" onClick="adminInsert();">관리자 찾기</button>
										</td>
									</tr>
								</table>
							</div>
						</form>
						<br />


						<div class="p10" style="border: 1px solid #c1c1c1;">
							<div class="">
								<div class="noto font16 weight700 m-b10">2. 등록된 관리자</div>
							</div>
							<form method="post" action="#">
								<div class="list">
									<div>
										<div class="flex m-b5" style="height: 20px; line-height: 20px;">
											<div class="noto font16 weight700">※기본 그룹웨어 관리자</div>
										</div>
										<table
											style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
											<tr class="center noto font14 bg-gray">
												<td class="td-5">No</td>
												<td class="td-15">아이디</td>
												<td class="td-10">부서</td>
												<td class="td-10">직급</td>
												<td class="">이름</td>
												<td class="td-8">권한</td>
											</tr>

												<tr class="center noto font14">
													<td>${adminInfo.emp_num}</td>
													<td>${adminInfo.emp_id}</td>
													<td>${adminInfo.emp_buseo_name}</td>
													<td>${adminInfo.emp_grade_name}</td>
													<td>${adminInfo.emp_name}</td>
													<td>${adminInfo.emp_auth}</td>
												</tr>

										</table>
									</div>
									<div>
										<div class="flex m-b5" style="height: 20px; line-height: 20px;">
											<div class="noto font16 weight700">※전체 관리자</div>
											<div class="noto font14 m-lr20">등록된 관리자 : ${count} 명</div>
										</div>
										<table
											style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
											<tr class="center noto font14 bg-gray">
												<td class="td-5">No</td>
												<td class="td-15">아이디</td>
												<td class="td-10">부서</td>
												<td class="td-10">직급</td>
												<td class="">이름</td>
												<td class="td-8">권한</td>
											</tr>
											<c:forEach var="list" items="${list}" varStatus="status">
												<tr class="center noto font14">
													<td>${list.emp_num}</td>
													<td>${list.emp_id}</td>
													<td>${list.emp_buseo_name}</td>
													<td>${list.emp_grade_name}</td>
													<td>${list.emp_name}</td>
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
												</tr>
											</c:forEach>
										</table>
									</div>
									<!-- PAGER -->
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
			                                     	<a href="${pageContext.request.contextPath}/admin/gw_admin_info?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/admin/gw_admin_info?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/admin/gw_admin_info?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/admin/gw_admin_info?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/admin/gw_admin_info?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
							</form>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
<script>
	function adminInsert() {
		//window.open(주소, 별명, 넓이/높이/위치/스코롤바)
		var url = "${pageContext.request.contextPath}/admin_info/admin_insert";
		var nick = "notice";
		var opt = "width=1300, height=700, top=100, left=100";
		window.open(url, nick, opt);
	}
</script>
</html>