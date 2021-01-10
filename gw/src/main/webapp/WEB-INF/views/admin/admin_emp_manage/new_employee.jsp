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
 <body>
    <div class="">
        <div class="noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h2><i class="fas fa-info-circle"></i> 가입 대기중인 사원</h2>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">
								<button type="button" id="confirmEmpAll" class="btn-on">선택승인</button>
								<button type="button" id="empDeleteAll" class="btn-off">선택거부</button>
                            </div>
                            <div class="m-b5">
                                <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                            </div>
                        </div>

                            <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 weight700 bg-gray">
                                	 <td class="td-5">
                                	 	<input type="checkbox" id="chkAll" />
                                	 </td>
                                     <td class="td-5">No</td>
                                     <td class="td-10">아이디</td>
                                     <td class="td-10">이름</td>
                                     <td class="td-10">부서</td>
                                     <td class="td-10">입사일</td>
                                     <td class="td-5">관리</td>
                                 </tr>
								<c:forEach var="list" items="${list}" varStatus="status">

	                                 <tr class="center noto font14">
	                                     <td><input type="checkbox" name="chk" class="chk" data-uid="${list.emp_num}" style="width:17px; height:17px;" /></td>
	                                     <td>${list.emp_num}</td>
	                                     <td>${list.emp_id}</td>
	                                     <td>${list.emp_name}</td>
	                                     <td>${list.emp_buseo_name}</td>
	                                     <td>${list.emp_enter}</td>
	                                     <td>
	                                         <button type=button class="s-btn-on" onClick="confirmEmp(${list.emp_num});">승인</button>
	                                         <button type="button" class="s-btn-off" onClick="empDelete(${list.emp_num});">거부</button>
	                                     </td>
	                                 </tr>
                                 </c:forEach>
                            </table>
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
			                           	<c:forEach begin="${blockBegin}" end ="${blockEnd}" var="num">
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
								<!-- PAGER -->
					        
                    </div>
                </form>
            </div>  
        </div>
    </div>
</body>
<script>
	$(function() {
		$("tr:nth-child(2n+3)").addClass("tr-even");
	});
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

function confirmEmp(emp_num){
	var str = confirm("선택하신 사원을 승인하시겠습니까?");
	   
    if( str ) { 
	    $.ajax({
	    	url 	: "${pageContext.request.contextPath}/new_employee/confirm",
	    	type 	: "POST", 	
	    	data 	: {emp_num : emp_num},
	    	success	: function (resData) {
	    		alert("승인되었습니다.");
	    		opener.location.reload();
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
function empDelete(emp_num) {
	var str = confirm("거부 후 자료는 삭제됩니다.\n선택하신 정보를 삭제하시겠습니까?");
   
    if( str ) {        
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/employee_delete",
        	type 	: "POST", 	
        	data 	: {emp_num : emp_num},
        	success	: function (resData) {
        		alert("승인 거부되었습니다.");
        		opener.location.reload();
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
$("#confirmEmpAll").click(function() {
    var str = confirm("선택하신 사원을 승인하시겠습니까?");
    if( str ) {
        var chkArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });

        $.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/employee_confirm_all",
        	data : {chkArr : chkArr},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 사원이 승인 되었습니다.');
        			opener.location.reload();
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 사원이 승인에 실패했습니다.');
        			opener.location.reload();
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
$("#empDeleteAll").click(function() {
    var str = confirm("선택하신 사원을 거부하시겠습니까?\n거부된 모든 사원 데이터가 삭제 됩니다.");
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
        			alert('선택하신 사원이 거부 되었습니다.');
        			opener.location.reload();
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 사원이 거부에 실패했습니다.');
        			opener.location.reload();
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