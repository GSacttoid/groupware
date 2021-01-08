<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
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
	/* table tr 높이 */
	tr {
	    height:40px;
	}
	
	/* table 선색 */
	td {
	    border:1px solid #d5d5d5;
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
			            <h3><i class="fas fa-info-circle m-lr5"></i>부서 등록</h3>
			        </div>
			        <hr />
			        
			            <table style="width:100%; border: 1px solid #c1c1c1;">
			                <tr>
			                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
			                        <div class="noto font14">
			                            <ul>
			                                <li>회사의 부서를 등록하는 메뉴입니다.</li>
			                                <li>부서를 만들면 자동으로 부서메뉴도 생성됩니다.</li>
			                                <li>하위부서설정에 리스트를 클릭하면 하위부서 설정 창이 뜨고 부서명 입력 후 등록 하면됩니다.</li>
			                            </ul>
			                        </div>
			                    </td>
			                </tr>
			            </table>
			            <br />
			            
			            <div class="flex flex-justify">
			            	<div style="width:100%; margin-right:10px;">
			           	        <form method="post" id="buseoList" >
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						                <div class="">
						                    <div class="noto font16 weight700 m-tb10">1. 등록된 부서 리스트</div>
						                    <div class="noto font14 m-b10">사용중인 부서 : ${buseoCnt} 개</div>
						                    <div class="btn-grp m-b10">
						                        <button class="depart-btn" type="button" id="buseoDeleteAll" style="background-color: #fc6468;">선택 삭제</button>
						                    </div>
						                </div>
						                <div>
						                	<div class="">
						                    	<table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
						                              <tr class="center noto font14 bg-gray" style="height: 40px; border: 1px solid #c1c1c1;">
						                                  <td style="border: 1px solid #c1c1c1; width:10%">
														  	  <input type="checkbox" id="chkAll" />
														  </td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">부서코드</td>
						                                  <td style="border: 1px solid #c1c1c1;">부서명</td>
						                                  <td style="border: 1px solid #c1c1c1; width:20%">생성일</td>
						                                  <td style="border: 1px solid #c1c1c1; width:15%">관리</td>
						                              </tr>
						                              <c:forEach var="buseoList" items="${list}" varStatus="status">
							                              <tr class="center noto font14">
							                                  <td>
							                                      <input type="checkbox" name="chk" class="chk" data-uid="${buseoList.buseo_id}" style="width:17px; height:17px;" />
							                                  </td>
							                                  <td>${buseoList.buseo_id}</td>
							                                  <td>${buseoList.buseo_name}</td>
							                                  <td>${buseoList.regdate}</td>
							                                  <td>
							                                  	<button class="s-btn-off" type="button" onClick="buseoDelete(${buseoList.buseo_id});" 
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
			           	        <form method="post" id="frm" autocomplete="off">
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						            	<div class="noto font16 weight700 m-tb10">2. 부서 만들기</div>
						                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;" >
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">부서코드</td>
						                        <td>
						                            <input type="text" class="input-135" name="buseo_id" id="buseo_id" style="margin-left: 2px;" />
						                            <span class="noto font14 m-lr10" style="line-height:35px;">부서코드는 3자리 숫자로 입력해주세요.</span>
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">부서명</td>
						                        <td>
						                            <input type="text" class="input-135" name="buseo_name" id="buseo_name" style="margin-left: 2px;" />
						                        </td>
						                    </tr>
						                </table>
						                <div class="center font14">
						                	<button type="button" class="btn-on" onClick="buseoInsert();" >등록</button>
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
function buseoInsert(){
	if( $.trim($("#buseo_id").val()) == '' ) {
		alert("부서코드를 입력하세요.");
		$("#buseo_id").focus();
		return false;
	}
	if( $.trim($("#buseo_name").val()) == '' ) {
		alert("부서명을 입력하세요.");
		$("#buseo_name").focus();
		return false;
	}
	var formData = $("#frm").serialize();
	$.ajax({
        url: "${pageContext.request.contextPath}/admin/buseo_insert",
        type: "POST",
        data: formData,
        success: function (resData) {
            if ($.trim(resData) == "success") {
				alert("부서가 정상적으로 등록되었습니다.");
				window.location.reload();
            }else{
                if($.trim(resData) == "failureID"){
                   	alert("사용할 수 없는 부서코드입니다.\n확인 후 입력해주세요.");
                   	$('#buseo_id').val("");
                   	$('#buseo_id').focus();
                }else{
                	alert("사용할 수 없는 부서명입니다.\n확인 후 입력해주세요.");
                	$('#buseo_name').val("");
                	$('#buseo_name').focus();
                }
            }
        }
	});
}
</script>

<script>
function buseoDelete(buseo_id){
	var str = confirm("선택하신 부서를 삭제하시겠습니까?");
	if( str ) {
		$.ajax({
	        url: "${pageContext.request.contextPath}/buseo_delete",
	        type: "POST",
	        data: {buseo_id:buseo_id},
	        success	: function (resData) {
				alert("부서가 삭제되었습니다.");
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
$("#buseoDeleteAll").click(function() {
    var str = confirm("선택하신 부서를 삭제하시겠습니까?\n삭제된 부서는 복원이 불가능합니다.");
    if( str ) {
        var chkArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });

        $.ajax({
        	type : "POST",
        	url : "${pageContext.request.contextPath}/buseo_delete_all",
        	data : {chkArr : chkArr},
        	success: function (data) {
        		if( data == "success" ) {
        			alert('선택하신 부서가 삭제 되었습니다.');
                    window.location.reload();
                    
        		}else{
        			alert('선택하신 부서가 삭제에 실패했습니다.');
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