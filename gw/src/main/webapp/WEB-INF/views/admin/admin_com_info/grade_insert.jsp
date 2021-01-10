<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
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
    table {
	    border-collapse: collapse;
	}
	tr{
	    height: 40px;
	    border: 1px solid #c1c1c1;
	}
	td{
	    border: 1px solid #c1c1c1;
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
	.depart-btn:hover{
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
				<div class="main-wrap noto font14" style="width: 100%;">

					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>직급 등록
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li>회사의 직급을 등록하거나 수정하실 수 있습니다.</li>
											<li>위 아래 버튼을 눌러 위치를 변경하실 수 있습니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<br />
						<div class="flex flex-justify">
			            	<div style="width:100%; margin-right:10px;">
			           	        <form method="post" id="gradeList" >
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						                <div class="">
						                    <div class="noto font16 weight700 m-tb10">1. 등록된 직급 리스트</div>
						                    <div class="noto font14 m-b10">사용중인 직급 : ${count} 개</div>
						                    <div class="btn-grp m-b10">
						                        <button class="depart-btn" type="button" id="gradeDeleteAll" style="background-color: #fc6468;">선택 삭제</button>
						                    </div>
						                </div>
						                <div>
						                	<div class="">
						                    	<table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
						                              <tr class="center noto font14 bg-gray" style="height: 40px; border: 1px solid #c1c1c1;">
						                                  <td style="border: 1px solid #c1c1c1; width:10%">
														  	  <input type="checkbox" id="chkAll" />
														  </td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">직급코드</td>
						                                  <td style="border: 1px solid #c1c1c1;">직급명</td>
						                                  <td style="border: 1px solid #c1c1c1; width:10%">기본권한</td>
						                                  <td style="border: 1px solid #c1c1c1; width:20%">생성일</td>
						                                  <td style="border: 1px solid #c1c1c1; width:10%">관리</td>
						                              </tr>
						                              <c:forEach var="gradeList" items="${list}" varStatus="status">
							                              <tr class="center noto font14">
							                                  <td>
							                                      <input type="checkbox" name="chk" class="chk" data-uid="${gradeList.grade_id}" style="width:17px; height:17px;" />
							                                  </td>
							                                  <td>${gradeList.grade_id}</td>
							                                  <td>${gradeList.grade_name}</td>
							                                  <td>${gradeList.grade_auth}</td>
							                                  <td>${gradeList.grade_regdate}</td>
							                                  <td>
							                                  	<button class="s-btn-off" type="button" onClick="gradeDelete(${gradeList.grade_id});" 
							                                  	 style="background-color: #fc6468; color:#fff;">삭제</button>
							                                  </td>
							                              </tr>
						                              </c:forEach>
						                    	</table>
						                    	
						                   	</div>
						             	</div>
						            </div>
						        </form>
			            	</div>
			            	<div style="width:100%">
			           	        <form method="post" id="frmGrade" autocomplete="off">
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						            	<div class="noto font16 weight700 m-tb10">2. 직급 만들기</div>
						                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;" >
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">직급코드</td>
						                        <td>
						                            <input type="text" class="input-135" name="grade_id" id="grade_id" style="margin-left: 2px;" />
						                            <span class="noto font14 m-lr10" style="line-height:35px;">직급코드는 1~2자리 숫자로 입력해주세요.</span>
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">직급명</td>
						                        <td>
						                            <input type="text" class="input-135" name="grade_name" id="grade_name" style="margin-left: 2px;" />
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">기본권한</td>
						                        <td>
						                            <input type="text" class="input-135" name="grade_auth" id="grade_auth" style="margin-left: 2px;" />
						                        </td>
						                    </tr>
						                </table>
						                <div class="center font14">
						                	<button type="button" class="btn-on" onClick="gradeInsert();" >등록</button>
						                	<button type="reset" class="btn-off" >취소</button>
						                </div>
						            </div>
						        </form>
			            	</div>
			            </div>
					</div>
				</div>
			</div>
		</main>
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
    });
})
</script>

<script>
function gradeInsert(){
	if( $.trim($("#grade_id").val()) == '' ) {
		alert("직급코드를 입력하세요.");
		$("#grade_id").focus();
		return false;
	}
	if( $.trim($("#grade_name").val()) == '' ) {
		alert("직급명을 입력하세요.");
		$("#grade_name").focus();
		return false;
	}
	var formData = $("#frmGrade").serialize();
	$.ajax({
        url: "${pageContext.request.contextPath}/admin/grade_insert",
        type: "POST",
        data: formData,
        success: function (resData) {
            if ($.trim(resData) == "success") {
				alert("직급이 정상적으로 등록되었습니다.");
				window.location.reload();
            }else{
                if($.trim(resData) == "failureID"){
                   	alert("사용할 수 없는 직급코드입니다.\n확인 후 입력해주세요.");
                   	$('#grade_id').val("");
                   	$('#grade_id').focus();
                }else{
                	alert("사용할 수 없는 직급명입니다.\n확인 후 입력해주세요.");
                	$('#grade_name').val("");
                	$('#grade_name').focus();
                }
            }
        }
	});
}
</script>

<script>
function gradeDelete(grade_id){
	var str = confirm("선택하신 직급을 삭제하시겠습니까?");
	if( str ) {
		$.ajax({
	        url: "${pageContext.request.contextPath}/grade_delete",
	        type: "POST",
	        data: {grade_id:grade_id},
	        success	: function (resData) {
				alert("직급이 삭제되었습니다.");
				window.location.reload();
	        },
	        error	: function (){
	        	alert("시스템 오류!");
	        }
		});	
	}
}
</script>

<script>
$("#gradeDeleteAll").click(function() {
    var str = confirm("선택하신 직급을 삭제하시겠습니까?\n삭제된 직급은 복원이 불가능합니다.");
    if( str ) {
        var chkArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });

        $.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/grade_delete_all",
        	data : {chkArr : chkArr},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 직급이 삭제 되었습니다.');
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 직급이 삭제에 실패했습니다.');
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
</html>