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
								<i class="fas fa-info-circle m-lr5"></i>회사 메뉴 관리
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li>회사메뉴의 모든 메뉴는 모든 직원에게 공개됩니다.</li>
											<li>사용하고 싶은 메뉴를 선택하여 추가하거나, 삭제하실 수 있으며, 메뉴이름도 변경하실 수
												있습니다.</li>
											<li>추가 시에는 반드시 [등록]버튼을 눌러주셔야만 적용이 됩니다.</li>
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
						                    <div class="noto font16 weight700 m-tb10">1. 회사 메뉴 리스트</div>
						                    <div class="noto font14 m-b10">사용중인 메뉴 : ${count} 개</div>
						                    <div class="btn-grp m-b10">
						                        <button class="depart-btn" type="button" id="menuDeleteAll" style="background-color: #fc6468;">선택 삭제</button>
						                    </div>
						                </div>
						                <div>
						                	<div class="">
						                    	<table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
						                              <tr class="center noto font14 bg-gray" id="rowColor" style="height: 40px; border: 1px solid #c1c1c1;">
						                                  <td style="border: 1px solid #c1c1c1; width:10%">
														  	  <input type="checkbox" id="chkAll" />
														  </td>
						                                  <td id="fontColor" style="border: 1px solid #c1c1c1; width:15%">메뉴종류</td>
						                                  <td id="fontColor" style="border: 1px solid #c1c1c1;">메뉴명</td>
						                                  <td id="fontColor" style="border: 1px solid #c1c1c1; width:20%">생성일</td>
						                                  <td id="fontColor" style="border: 1px solid #c1c1c1; width:15%">관리</td>
						                              </tr>
						                              <c:forEach var="comMenuList" items="${list}" varStatus="status">
							                              <tr class="center noto font14">
							                                  <td>
							                                      <input type="checkbox" name="chk" class="chk" data-uid="${comMenuList.menu_code}" style="width:17px; height:17px;" />
							                                  </td>
							                                  <td>${comMenuList.menu_kind}</td>
							                                  <td>${comMenuList.menu_name}</td>
							                                  <td>${comMenuList.menu_regdate}</td>
							                                  <td>
							                                  	<button class="s-btn-off" type="button" onClick="boardDelete('${comMenuList.menu_code}');" 
							                                  	 style="background-color: #fc6468; color:#fff;">삭제</button>
							                                  </td>
							                              </tr>
						                              </c:forEach>
						                    	</table>
						                    	<!-- PAGER -->
												<c:if test = "${count eq 0}">
										        	<div style="width:100%;">
										        		<p class="center noto font16 weight500" style="margin: 0 auto;">등록된 메뉴가 없습니다.</p>
										        	</div>
												</c:if>
					                        	<c:if test = "${count > 0}">
							                    	<div class="page-grp center m-t10">
							                         	<c:choose>
							                               	<c:when test = "${curPage > 1}">
																<span class="page">
							                                     	<a href="${pageContext.request.contextPath}/admin/company_menu_set?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
							                                    	<a href="${pageContext.request.contextPath}/admin/company_menu_set?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
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
							                           			<a href="${pageContext.request.contextPath}/admin/company_menu_set?curPage=${num}">
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
							                               		<a href="${pageContext.request.contextPath}/admin/company_menu_set?curPage=${curPage+1}">
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
							                                   		<a href="${pageContext.request.contextPath}/admin/company_menu_set?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
						        </form>
			            	</div>
			            	<div style="width:100%">
			           	        <form method="post" id="frm" autocomplete="off">
						            <div class="p10" style="border: 1px solid #c1c1c1;">
						            	<div class="noto font16 weight700 m-tb10">2. 회사 메뉴 만들기</div>
						                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;" >
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴 종류</td>
						                        <td>
						                        	<select class="sel-135" id="menu_kind" name="menu_kind" style="margin-left: 3px;">
		                                                <option value="건의사항">건의사항</option>
		                                                <option value="일반게시판">일반게시판</option>
								                        <option value="앨범게시판">앨범게시판</option>
		                                            </select>
						                            <span class="noto font14 m-lr10" style="line-height:35px;"></span>
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴코드</td>
						                        <td>
						                            <input type="text" class="input-135" onBlur="chkCode();" name="menu_code" id="menu_code"
						                            placeholder="영문으로 표기해주세요." style="margin-left: 3px;" />
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴명</td>
						                        <td>
						                            <input type="text" class="input-100" name="menu_name" id="menu_name" style="margin-left: 3px; width:99%;" />
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
						                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">메뉴 색상</td>
						                        <td>
						                        	<select class="sel-135" id="menu_color" name="menu_color" style="margin-left: 3px;">
		                                                <option value="#6F809A">#6F809A</option>
		                                                <option value="#B00020">#B00020</option>
								                        <option value="#5D1049">#5D1049</option>
								                        <option value="#4A148C">#4A148C</option>
								                        <option value="#2962FF">#2962FF</option>
								                        <option value="#404E67">#404E67</option>
								                        <option value="#FE5E71">#FE5E71</option>
			                        					<option value="#1A237E">#1A237E</option>
		                                            </select>
						                            <span class="noto font14 m-lr10" style="line-height:35px;">왼쪽 리스트에 적용된 색상이 메뉴 색상으로 지정됩니다.</span>
						                        </td>
						                    </tr>
						                    <tr class="m-t10">
		                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">읽기권한</td>
		                                        <td class="">
		                                            <select class="sel-135 m-lr3" name="menu_read">
		                                                <option value="1" selected>모두</option>
		                                                <option value="2">직원</option>
		                                            </select>
		                                        </td>
		                                    </tr>
		                                    <tr class="m-t10">
		                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">쓰기권한</td>
		                                        <td class="">
		                                            <select class="sel-135 m-lr3" name="menu_write">
		                                                <option value="1">모두</option>
		                                                <option value="2" selected>직원</option>
		                                            </select>
		                                        </td>
	                                        </tr>
		                                    <tr class="m-t10">
		                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">댓글권한</td>
		                                        <td class="">
		                                            <select class="sel-135 m-lr3" name="menu_reply">
		                                                <option value="1">모두</option>
		                                                <option value="2" selected>직원</option>
		                                            </select>
		                                        </td>
	                                        </tr>
		                                    <tr class="m-t10">
		                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">다운권한</td>
		                                        <td class="">
		                                            <select class="sel-135 m-lr3" name="menu_download">
		                                                <option value="1">모두</option>
		                                                <option value="2" selected>직원</option>
		                                            </select>
		                                            <input type="hidden" name="menu_maker" value="${sessionScope.empName}"/>
		                                        </td>
		                                    </tr>
		                                    
						                </table>
						                <div class="center font14">
						                	<button type="button" class="btn-on" id="btn" >등록</button>
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
$(function () {
    $("#menu_color").change(function() {
        $("#rowColor").css({
            backgroundColor : this.value,
            color : 'white'
        });
    });
});

</script>
		        
<script>
	function boardMake() {

		if( $.trim($("#menu_name").val()) == '' ) {
			alert("메뉴명을 입력하세요.");
			$("#menu_name").focus();
			return false;
		}
		
		$.ajax({
			url		: "${pageContext.request.contextPath}/board/com_menu_insert",
			type	: "POST",
			data	: $("#frm").serialize(),
			success	: function(resData) {
				alert( $("#menu_name").val() + "게시판 & 댓글게시판이 생성되었습니다.");
				window.location.href = 	"${pageContext.request.contextPath}/admin/company_menu_set";			
			},
			error	:function() {
				alert("시스템 에러");			
			}
		});
	}
	
	$("#btn").click(function() {
		boardMake();
	});
</script>
<script>
function menuDeleteAll() {
	var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
    
    if( str ) {
        var chkArr = new Array();
        $(".chk:checked").each(function () {
        	chkArr.push($(this).attr("data-uid"));
        });
        
        //alert(chkArr);
                
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/board/com_menu_delete_all",
        	type 	: "POST", 	
        	data 	: { chkArr : chkArr },
        	success	: function (resData) {
        		alert("삭제되었습니다.");
	    		window.location.reload();
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}

function boardDelete(menu_code) {
	var str = confirm("삭제 후 복구는 불가능합니다.\n선택하신 정보를 삭제하시겠습니까?");
    
    if( str ) {      
        $.ajax({
        	url 	: "${pageContext.request.contextPath}/board/com_board_delete",
        	type 	: "POST", 	
        	data 	: { menu_code : menu_code },
        	success	: function (resData) {
        		alert("삭제되었습니다.");
	    		window.location.reload();
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
    }
}

$(function() {
	$("#menuDeleteAll").click(function() {
		menuDeleteAll();
	});
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

$(function () {
	$("#menu_code").keyup(function () {
		$(this).val( $(this).val().replace(/[0-9]|[^\!-z]/gi,"") );
	});
});
</script>

<script>
	function chkCode() {
		var formData = {
			menu_code : $("#menu_code").val()
		};

		$.ajax({
        	url 	: "${pageContext.request.contextPath}/board/menu_check",
        	type 	: "POST", 	
        	data 	: formData,
        	success	: function (resData) {
            	if( resData == "failure" ) {
            		alert("사용할 수 없는 게시판 코드입니다.");
            		$("#menu_code").val("");
            		$("#menu_code").focus();
                }
            },
            error 	: function() {
            	alert("선택하신 정보가 없습니다.");
            }
        });
	}
</script>
</html>