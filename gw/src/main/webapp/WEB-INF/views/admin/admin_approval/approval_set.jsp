<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<style>
	table {
		border-collapse: collapse;
	}
	tr{
	    height: 40px;
	}
	
	td{
	    border: 1px solid #d5d5d5;
	}
    input[type="radio"] {
	    width:15px;
	    height:15px;
	}
    .accordion-content {
	    display: block;
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
                <%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
			    <div class="main-wrap noto font14" style="width:100%;">
			        
			        <div class="p20">
			            <div class="notice-title font16 noto">
			                <h3><i class="fas fa-book m-lr5"></i> 전자결재 설정</h3>
			            </div>
			            <hr />
			
			            <div>
			            	<form method="post" id="frm">
			            		<h3 class="m-b5">1. 보안 등급별 열람 설정</h3>
				                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">S 등급</td>
				                         <td class="p-lr10"><p>기안 상에 설정된 관련자들만 문서 열람</p></td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">A 등급</td>
				                         <td class="p-lr10"><p style="line-height:35px;">결재 요청 후 직위   	
				                         <select class="sel-75" id="app_A_auth" name="app_A_auth">
											<option value="1" <c:if test="${list.app_A_auth eq '1'}">selected</c:if> >임시</option>
											<option value="2" <c:if test="${list.app_A_auth eq '2'}">selected</c:if> >사원</option>
											<option value="3" <c:if test="${list.app_A_auth eq '3'}">selected</c:if> >주임</option>
											<option value="4" <c:if test="${list.app_A_auth eq '4'}">selected</c:if> >대리</option>
											<option value="5" <c:if test="${list.app_A_auth eq '5'}">selected</c:if> >과장</option>
											<option value="6" <c:if test="${list.app_A_auth eq '6'}">selected</c:if> >부장</option>
											<option value="7" <c:if test="${list.app_A_auth eq '7'}">selected</c:if> >이사</option>
											<option value="8" <c:if test="${list.app_A_auth eq '8'}">selected</c:if> >전무이사</option>
											<option value="10" <c:if test="${list.app_A_auth eq '10'}">selected</c:if> >대표이사</option>
				                         </select>
				                                                  이상 열람</p></td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">B 등급</td>
				                         <td class="p-lr10"><p style="line-height:35px;">결재 완료 후 직위   	
				                         <select class="sel-75" id="app_B_auth" name="app_B_auth">
				                         	<option value="1" <c:if test="${list.app_B_auth eq '1'}">selected</c:if> >임시</option>
											<option value="2" <c:if test="${list.app_B_auth eq '2'}">selected</c:if> >사원</option>
											<option value="3" <c:if test="${list.app_B_auth eq '3'}">selected</c:if> >주임</option>
											<option value="4" <c:if test="${list.app_B_auth eq '4'}">selected</c:if> >대리</option>
											<option value="5" <c:if test="${list.app_B_auth eq '5'}">selected</c:if> >과장</option>
											<option value="6" <c:if test="${list.app_B_auth eq '6'}">selected</c:if> >부장</option>
											<option value="7" <c:if test="${list.app_B_auth eq '7'}">selected</c:if> >이사</option>
											<option value="8" <c:if test="${list.app_B_auth eq '8'}">selected</c:if> >전무이사</option>
											<option value="10" <c:if test="${list.app_B_auth eq '10'}">selected</c:if> >대표이사</option>
				                         </select>
				                                                  이상 열람</p></td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">C 등급</td>
				                         <td class="p-lr10"><p>모든 임직원 문서 열람</p></td>
				                     </tr>
				                 </table>
		            			<h3 class="m-b5">2. 일반 설정</h3>
				                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">같은 결재선 내에서 선결재</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_before_sign" value="Y" style="margin: 4px;" 
												<c:if test="${list.app_before_sign eq 'Y'}">checked</c:if> />허용함</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_before_sign" value="N" style="margin: 4px;" 
			                                 	<c:if test="${list.app_before_sign eq 'N'}">checked</c:if> />허용안함</label>
				                         </td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">대리 결재</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_other_sign" value="Y" style="margin: 4px;"  
												<c:if test="${list.app_other_sign eq 'Y'}">checked</c:if> />허용함</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_other_sign" value="N" style="margin: 4px;"  
												<c:if test="${list.app_other_sign eq 'N'}">checked</c:if> />허용안함</label>
				                         </td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">후결</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_after_sign" value="Y" style="margin: 4px;"  
												<c:if test="${list.app_after_sign eq 'Y'}">checked</c:if> />허용함</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_after_sign" value="N" style="margin: 4px;"  
												<c:if test="${list.app_after_sign eq 'N'}">checked</c:if> />허용안함</label>
				                         </td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">합의 반려</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_return" value="Y" style="margin: 4px;"  
												<c:if test="${list.app_return eq 'Y'}">checked</c:if> />허용함</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_return" value="N" style="margin: 4px;"  
												<c:if test="${list.app_return eq 'N'}">checked</c:if> />허용안함</label>
				                         </td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">참조 열람 시기 설정</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_view" value="Y" style="margin: 4px;"   
												<c:if test="${list.app_view eq 'Y'}">checked</c:if> />결재 시작</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_view" value="N" style="margin: 4px;"    
												<c:if test="${list.app_view eq 'N'}">checked</c:if> />결재 완료</label>
				                         </td>
				                     </tr>
				                     <tr>
				                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">기안 취소 설정</td>
				                         <td class="p-lr10">
					                         <label class="noto font14 m-lr10"><input type="radio" name="app_cencle" value="Y" style="margin: 4px;"    
												<c:if test="${list.app_cencle eq 'Y'}">checked</c:if> />반려 처리</label>
			                                 <label class="noto font14 m-lr10"><input type="radio" name="app_cencle" value="N" style="margin: 4px;"     
												<c:if test="${list.app_cencle eq 'N'}">checked</c:if> />문서 삭제</label>
				                         </td>
				                     </tr>
				                 </table>
				                 <div class="btn-grp center m-t10">
				                     <button type="button" class="btn-on" onClick="approvalModify();">저장</button>
				                     <button type="reset" class="btn-off">취소</button>
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
function approvalModify(){
	var str = confirm("전자결재 설정 정보를 수정하시겠습니까?");

    if( str ) { 
		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/admin/approval_set",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				if(resData == "success"){
					alert("전자결재 설정 정보가 수정되었습니다.");
					window.location.reload();
				}
			},
			error	:function() {
				alert("시스템 에러");
			}
		});
    }
}
</script>
</html>