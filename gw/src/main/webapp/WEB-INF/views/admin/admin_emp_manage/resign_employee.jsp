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
                    <h2><i class="fas fa-info-circle"></i> 퇴사자 리스트</h2>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">
                            	<button type="button" id="empDeleteAll" class="btn-red">선택삭제</button>
								<button type="button" id="confirmEmpAll" class="btn-on">재등록</button>
                            </div>
                            <div class="m-b5">
                                <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                            </div>
                        </div>

                            <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 weight700 bg-gray">
                                	 <td class="td-5">
                                	 	<input type="checkbox" id="chkAll"  />
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
	                                     <td>${list.emp_buseo}</td>
	                                     <td>${list.emp_enter}</td>
	                                     <td>
	                                         <button type="button" class="s-btn-red f6" onClick="empDelete(${list.emp_num});">삭제</button>
	                                         <button type=button class="s-btn-off" onClick="confirmEmp(${list.emp_num});">등록</button>
	                                     </td>
	                                 </tr>
                                 </c:forEach>
                            </table>
							<%@ include file="/WEB-INF/views/INCLUDE/PAGER.jsp"%>
                    </div>
                </form>
            </div>  
        </div>
    </div>
</body>

    
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
	var str = confirm("선택하신 사원을 재등록하시겠습니까?");
	   
    if( str ) { 
	    $.ajax({
	    	url 	: "${pageContext.request.contextPath}/new_employee/confirm",
	    	type 	: "POST", 	
	    	data 	: {emp_num : emp_num},
	    	success	: function (resData) {
	    		alert("승인되었습니다.");
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
	var str = confirm("삭제 후 정보는 영구삭제됩니다.\n선택하신 정보를 삭제하시겠습니까?");
   
    if( str ) {        
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/employee_delete",
        	type 	: "POST", 	
        	data 	: {emp_num : emp_num},
        	success	: function (resData) {
        		alert("정보가 영구삭제되었습니다.");
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
    var str = confirm("선택하신 사원을 재등록하시겠습니까?");
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
        			alert('선택하신 사원이 재등록 되었습니다.');
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 사원이 재등록에 실패했습니다.');
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
    var str = confirm("선택하신 사원을 영구삭제하시겠습니까?\n삭제된 사원 데이터는 복원이 불가능합니다.");
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
        			alert('선택하신 사원이 영구삭제 되었습니다.');
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