<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
ul>li::before {
	content: '';
	display: inline-block;
	width: 5px;
	height: 5px;
	background-color: #000;
	margin-right: 10px;
	vertical-align: middle;
	transform: rotate(45deg) translateY(-50%);
}

.member-list tr:first-child {
	background-color: #6f809a;
	color: #fff;
}

.tr-even {
	background-color: #eff3f9;
}
/* table tr 높이 */
tr {
	height: 40px;
}

/* table 선색 */
td {
	border: 1px solid #d5d5d5;
}

.depart-btn {
	display: inline-block;
	width: 65px;
	height: 25px;
	text-align: center;
	border-radius: 2px;
	background-color: #c1c1c1;
	border: 1px solid transparent;
	color: #fff;
	font-size: 12px;
	cursor: pointer;
	font-weight: 700;
}

.depart-btn:hover {
	background-color: #3f51b5;
	color: #fff;
}

.list-btn {
	width: 170px;
	height: 25px;
	text-align: center;
	border-radius: 2px;
	background-color: #c1c1c1;
	border: 1px solid transparent;
	color: #000;
	font-size: 14px;
	cursor: pointer;
	font-weight: 700;
}

.list-btn:hover {
	background-color: #3f51b5;
	color: #fff;
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
				<div class="main-wrap noto font14" style="width: 100%">

					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>사원 관리
							</h3>
						</div>
						<hr />
						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li>관리자의 승인완료를 통해 등록된 직원 리스트입니다.</li>
											<li>관리자는 일반회원으로 변경한 뒤에 삭제나 퇴사처리를 하실 수 있습니다.</li>
											<li>삭제된 회원은 복구가 불가능하지만, 퇴사처리된 회원은 다시 일반회원으로 변경되며 기본데이터들은 삭제되지 않습니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<br />

						
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="">
									<div class="flex m-b10">
										<div class="noto font16 weight700">1. 등록된 사원 리스트</div>
										<div class="m-lr20">
											<button type="button" class="list-btn m-lr5" onclick="newEmp();">가입대기 리스트
												<c:if test = "${countNew > 0}">
													<span class="noto font14 weight700" style="color:#f00;">[${countNew}명]</span>
												</c:if>
											</button>
											<button type="button" class="list-btn" onclick="resignEmp();">퇴사자 리스트
												<c:if test = "${countResign > 0}">
													<span class="noto font14 weight700" style="color:#f00;">[${countResign}명]</span>
												</c:if>
											</button>
										</div>
									</div>
									<div class="noto font14 m-b10">등록중인 사원 : ${count} 명</div>
									<div class="flex flex-justify">
										<div class="">
											<div class="btn-grp">
												<button type="button" id="empDeleteAll" class="btn-red">선택삭제</button>
											</div>
										</div>
										<div class="">
											<form method="post" action="${pageContext.request.contextPath}/admin/employee_list">
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
										<tr class="center noto font14 bg-gray">
											<td class="td-5">
		                                	 	<input type="checkbox" id="chkAll" />
		                                	</td>
											<td class="td-5">No</td>
											<td class="td-10">아이디</td>
											<td >이름</td>
											<td class="td-8">부서</td>
											<td class="td-8">직급</td>
											<td class="td-10">전화번호</td>
											<td class="td-10">사내번호</td>
											<td class="td-5">권한</td>
											<td class="td-10">입사일</td>
											<td class="td-8">관리</td>
										</tr>
										
										<c:forEach var="list" items="${list}" varStatus="status">
											<tr class="center noto font14">
												<td><input type="checkbox" name="chk" class="chk" data-uid="${list.emp_num}" style="width:17px; height:17px;" /></td>
												<td>${list.emp_num}</td>
												<td>${list.emp_id}</td>
												<td>${list.emp_name}</td>
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
												<td>
													<button type="button" class="s-btn-on" 
													onClick="location.href='${pageContext.request.contextPath}/admin/employee_modify?emp_num=${list.emp_num}'">수정</button>
													<button type="button" class="s-btn-off" style="background-color: #fc6468; color: #fff;" onClick="empDelete('${list.emp_num}')" >퇴사</button>
												</td>
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
			                                     	<a href="${pageContext.request.contextPath}/admin/employee_list?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/admin/employee_list?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/admin/employee_list?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/admin/employee_list?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/admin/employee_list?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
	function newEmp() {
		//window.open(주소, 별명, 넓이/높이/위치/스코롤바)
		var url = "${pageContext.request.contextPath}/new_employee";
		var nick = "gwInfo";
		var opt = "width=1300, height=700, top=100, left=100";
		window.open(url, nick, opt);
	}

	function resignEmp() {
		//window.open(주소, 별명, 넓이/높이/위치/스코롤바)
		var url = "${pageContext.request.contextPath}/resign_employee";
		var nick = "gwInfo";
		var opt = "width=1300, height=700, top=100, left=100";
		window.open(url, nick, opt);
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
<script>
$("#empDeleteAll").click(function() {
    var str = confirm("선택하신 사원을 삭제하시겠습니까?\n삭제된 사원 모든데이터가 삭제 됩니다.");
    if( str ) {
        var chkArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });

        $.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/employee_delete_all",
        	data : {chkArr : chkArr},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 사원이 삭제 되었습니다.');
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 사원이 삭제에 실패했습니다.');
                    window.location.reload();
        		}
            },
            error : function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
});
</script>
<script>
function empDelete(emp_num) {
	var str = confirm("선택하신 사원을 퇴사처리 하시겠습니까?");
   
    if( str ) {        
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/admin/employee_resign",
        	type 	: "POST", 	
        	data 	: {emp_num : emp_num},
        	success	: function (resData) {
        		alert("해당 사원이 퇴사처리 되었습니다.");
	    		window.location.reload();
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}
</script>
</html>