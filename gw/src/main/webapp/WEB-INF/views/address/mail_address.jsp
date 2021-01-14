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
								<i class="fas fa-info-circle m-lr5"></i> 메일 주소록 관리
							</h3>
						</div>
						<hr />

							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="flex flex-justify">
									<div class="noto font16 weight700 m-b10">등록중인 주소 : ${count} 명</div>
									<div class="flex flex-justify">
										<div class="">
											<form method="post" action="${pageContext.request.contextPath}/address/mail_address">
												<select class="sel-75 noto weight500" name="searchOpt" id="searchOpt">
													<option value="all" <c:if test="${searchOpt eq 'all'}">selected</c:if> >전체</option>
													<option value="ma_name" <c:if test="${searchOpt eq 'ma_name'}">selected</c:if> >이메일</option>
													<option value="ma_address" <c:if test="${searchOpt eq 'ma_address'}">selected</c:if> >이름</option>
													
												</select> 
												<input type="text" name="words" autocomplete="off" value="${words}" style="margin-left: -2px;" />
												<button type="submit" class="btn-on" style="margin-left: -2px;">검색</button>
												<button type="button" class="btn-on" style="margin-left: -2px;" onClick="getMailAddressInsert();">등록</button>
											</form>
										</div>
									</div>
								</div>
								<div class="member-list" style="margin-top: 10px;">
									<table
										style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
										<tr class="center noto font14 weight500" style="background-color: #6f809a; color: #fff;">
											<td class="td-5">No</td>
											<td >이메일 주소</td>
											<td class="td-10">이름</td>
											<td class="td-10">회사</td>
											<td class="td-10">부서</td>
											<td class="td-10">직급</td>
											<td class="td-10">핸드폰</td>
											<td class="td-10">유선전화</td>
											<td class="td-10">등록일</td>
										</tr>
										<c:forEach var="list" items="${list}" varStatus="status">
											<tr class="center noto font14">
												<td>${list.ma_id}</td>
												<td class="under weight500" onClick="location.href='${pageContext.request.contextPath}/address/mail_address?emp_num=${list.ma_id}'">${list.ma_address}</td>
												<td>${list.ma_name}</td>
												<td>${list.ma_company}</td>
												<td>${list.ma_buseo}</td>
												<td>${list.ma_grade}</td>
												<td>${list.ma_phone}</td>
												<td>${list.ma_tel}</td>
												<td>${list.emp_regdate}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!-- PAGER -->
								<c:if test = "${count eq 0}">
						        	<div style="width:100%;">
						        		<p class="center noto font16 weight500" style="margin: 0 auto;">등록된 인원이 없습니다.</p>
						        	</div>
								</c:if>
	                        	<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/address/mail_address?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/address/mail_address?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/address/mail_address?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/address/mail_address?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/address/mail_address?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
function getMailAddressInsert(){
  	 //window.open(주소, 별명, 넓이/높이/위치/스코롤바)
  	 var url 	="${pageContext.request.contextPath}/address/mail_address_insert";
  	 var nick	="addressInsert";
  	 var opt	="width=700, height=550, top=100, left=100";
  	 window.open(url,nick,opt);
   } 
</script>

</html>