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
.btn-admin{
    display: inline-block;
    padding: 3px 10px;
    background-color: #fc6468;
    border-radius: 2px;
    color: #fff;
    font-weight: 700;
}
</style>
<body>
    <div class="">
        <div class="noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h3><i class="fas fa-info-circle"></i>관리자 지정하기</h3>
                </div>
                <hr />
                <form method="post" action="#" autocomplete="off">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">

                            </div>
                            <div class="m-b5">
                                <select class="" name="searchOpt">
                                    <option value="">--검색 조건--</option>
                                    <option value="name">이름</option>
                                    <option value="grade">직급</option>
                                    <option value="buseo">부서</option>
                                </select>
                                <input type="text" name="words" required style="margin-left: -2px;"/>
                                <button type="submit" class="btn-off" style="margin-left: -2px;">직원 검색</button>
                                <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                            </div>
                        </div>

                            <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 weight700 bg-gray">
                                     <td class="td-5">No</td>
                                     <td >아이디</td>
                                     <td class="td-20">이름</td>
                                     <td class="td-10">부서</td>
                                     <td class="td-10">직급</td>
                                     <td class="td-10">입사일</td>
                                     <td class="td-10">관리자여부</td>
                                     <td class="td-5">선택</td>
                                 </tr>
							<c:forEach var="list" items="${list}" varStatus="status">
                                 <tr class="center noto font14">
                                     <td>${list.emp_num}</td>
                                     <td>${list.emp_id}</td>
                                     <td>${list.emp_name}</td>
                                     <td>${list.emp_buseo_name}</td>
                                     <td>${list.emp_grade_name}</td>
                                     <td>${list.emp_enter}</td>
                                     <td><c:if test="${list.emp_auth eq '10'}"><span class="btn-admin">관리자</span></c:if></td>
                                     <td>
                                         <button type="button" class="s-btn-on" onClick="setAdmin(${list.emp_num});">선택</button>
                                     </td>
                                 </tr>
                             </c:forEach>
                            </table>

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
			                                     	<a href="${pageContext.request.contextPath}/admin_info/admin_insert?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/admin_info/admin_insert?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
			                           			<a href="${pageContext.request.contextPath}/admin_info/admin_insert?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/admin_info/admin_insert?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/admin_info/admin_insert?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
<script>
function setAdmin(emp_num) {
	var str = confirm("선택하신 사원을 관리자로 임명하시겠습니까?");
    if( str ) {        
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/admin/set_admin",
        	type 	: "POST", 	
        	data 	: {emp_num : emp_num},
        	success	: function (resData) {
        		alert("해당인원이 관리자로 임명되었습니다.");
        		opener.location.reload();
	    		window.close();
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}
</script>
</html>