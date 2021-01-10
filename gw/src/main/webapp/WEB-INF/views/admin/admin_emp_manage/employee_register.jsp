<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- datepicker(달력모양 css) -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- datepicker(달력모양 css) -->
<style>
.photo-area {
	width: 150px;
	height: 200px;
}

.photo-area>img {
	width: 100%;
	height: 100%;
	display: inline-block;
}
.tr-35{
	height:40px;
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
				<div class="main-wrap bg-white ">
					<div class="page-right p20">
						<div class="page-main-wrap">
							<div class="title m-lr3">
								<h2 class="font18 noto m-t10 m-b5 tomato" style="color:tomato;">
									<i class="fas fa-feather-alt"></i> 신규 사원정보 등록하기
								</h2>
							</div>
							<div class="page-member-bottom">
								<div class="page-content">
									<form method="post" id="frm" name="frm" onsubmit="return false" enctype="multipart/form-data" autocomplete="off">
										<div class="member-info flex">
											<div class="member-left">
												<div class="photo-area">
													<img src="${pageContext.request.contextPath}/images/no.jpg" id="empPhotoImg" />
												</div>
												<div class="member-img-btn center m-t10">
													<input type="file" name="file" id="empPhoto" />
												</div>
											</div>
											<div class="member-right w-100 m-lr10" >
												<table>
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">아이디</td>
														<td class="td-13 p-lr3" colspan="9">
															<input type="text" class="input-135" id="emp_id" name="emp_id" maxlength="20" />
															<span id="msg" class="noto font16 weight700" style="color:#f00;"></span>
														</td>
													</tr>
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">회사명</td>
														<td class="td-13 p-lr3">
															<input type="text" class="input-135" value="GreenArt" maxlength="20" readonly />
														</td>
														<td class="td-7 center under bg-gray noto weight700">부서명</td>
														<td class="td-13 p-lr3">
															<select id="emp_buseo" name="emp_buseo" class="sel-135">
																<c:forEach var="buseoList" items="${buseoList}" varStatus="status">
														 			<option value="${buseoList.buseo_id}">${buseoList.buseo_name}</option>
														 		</c:forEach>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">직책명</td>
														<td class="td-13 p-lr3">
															<select id="emp_grade" name="emp_grade" class="sel-135">
																<c:forEach var="gradeList" items="${gradeList}" varStatus="status">
														 			<option value="${gradeList.grade_id}">${gradeList.grade_name}</option>
														 		</c:forEach>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">입사일</td>
														<td class="td-13 p-lr3">
															<input type="text" autocomplete="off" name="emp_enter" id="emp_enter" class="input-135"  
															onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)" maxlength="10"/>
														</td>
														<td class="td-7 center under bg-gray noto weight700">비밀번호</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_pwd" id="emp_pwd" class="input-135" maxlength="20" />
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">사원명/성별</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_name" id="emp_name" class="input-75" />
															<select name="emp_gender" id="emp_gender" class="sel-55">
																<option value="남자"  >남자</option>
																<option value="여자"  >여자</option>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">생년월일</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_birth" id="emp_birth" class="input-135 noto"  
															onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)" maxlength="8"/> 
														</td>
														<td class="td-7 center under bg-gray noto weight700">핸드폰</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_phone" id="emp_phone" class="input-135"  maxlength="13"/>
														</td>
														<td class="td-7 center under bg-gray noto weight700">내선번호</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_company_tel" id="emp_company_tel" class="input-135"  maxlength="13" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">Tel</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_tel" id="emp_tel" class="input-135" maxlength="13" />
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">키</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_height" id="emp_height" class="input-135"  />
														</td>
														<td class="td-7 center under bg-gray noto weight700">몸무게</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_weight" id="emp_weight" class="input-135"  />
														</td>
														<td class="td-7 center under bg-gray noto weight700">취미</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_hobby" id="emp_hobby" class="input-135" maxlength="20"  />
														</td>
														<td class="td-7 center under bg-gray noto weight700">특기</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_speciality" id="emp_speciality" class="input-135" maxlength="20"  />
														</td>
														<td class="td-7 center under bg-gray noto weight700">결혼여부</td>
														<td class="td-13 p-lr3">
															<select name="emp_married" id="emp_married" class="sel-135">
																<option value="미혼"  >미혼</option>
																<option value="기혼"  >기혼</option>
															</select>
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">보유자격</td>
														<td class="td-13 p-lr3" colspan="9" >
															<input type="text" name="emp_license" id="emp_license" class="input-100" maxlength="20"  />
														</td>
													</tr>
	
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">어학사항
															1</td>
														<td class="td-13 p-lr3" colspan="9">
															<input type="text" name="emp_lang" id="emp_lang" class="input-100" maxlength="20"  />
														</td>
													</tr>
												</table>
											</div>
										</div>
										<div class="comment">
											<h2 class="font16 noto m-t10 m-b5 m-lr3">추가사항 입력</h2>
											<textarea name="emp_comment" id="editor" class="noto" 
												style="width: 100%; height: 300px; border: 1px solid #ccc; padding: 10px; border-radius: 2px;"></textarea>
											<script>
	                                            CKEDITOR.replace( 'editor' );
	                                            CKEDITOR.config.height = 150;
	                                        </script>
										</div>
										<div class="member-info m-t10">
											<div class="member-right center">
												<button type="button" class="btn-on" id="btn" onClick="noticeRegister();">내용저장</button>
												<button type="reset" class="btn-off" id="">새로고침</button>
												<a type="button" class="btn-red" id="" href="${pageContext.request.contextPath}/admin/employee_list">목록으로</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
<script>
$(function() {
	$('#emp_id').blur(function () {
		$.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/chk_empId",
            data: {"emp_id": $('#emp_id').val()},
            success: function (data) {
                if ($.trim(data) == "success") {
	                //alert("사용할 수 있는 사원번호입니다.");
                }else{
                	alert("사용할 수 없는 사원아이디입니다.\n다른 아이디로 입력해주세요.");
                	$('#emp_id').val("");
                	$('#emp_id').focus();
	            }
            }
        })
	});

	
	$("#btn").click(function() {
		if( $("#emp_id").val() == '' ) {
			alert("사원아이디를 입력하세요.");
			$("#emp_id").focus();
			return false;
		}
		$("#frm").submit();
	});
});
</script>
<script>
function noticeRegister(){
	var str = confirm("입력하신 정보를 등록하시겠습니까?\n확인) 입사일 & 생년월일은 필수 입력항목입니다.");

    if( str ) { 
		CKEDITOR.instances.editor.updateElement();
		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/admin/employee_register",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				if(resData == "success"){
					alert("사원정보가 등록되었습니다.");
					window.location.href="${pageContext.request.contextPath}/admin/employee_list";
				}
			},
			error	:function() {
				alert("시스템 에러");
			}
		});
    }
}
</script>
<script>
$(function() {
	$("#emp_enter").datepicker({
		dateFormat:"yy-mm-dd"
	});
});
</script>
<script>
$(function() {
	$("#emp_birth").datepicker({
		dateFormat:"yy-mm-dd"
	});
});
</script>
<script type="text/javascript">

    function auto_date_format( e, oThis ){
        
        var num_arr = [ 
            97, 98, 99, 100, 101, 102, 103, 104, 105, 96,
            48, 49, 50, 51, 52, 53, 54, 55, 56, 57
        ]
        
        var key_code = ( e.which ) ? e.which : e.keyCode;
        if( num_arr.indexOf( Number( key_code ) ) != -1 ){
        
            var len = oThis.value.length;
            if( len == 4 ) oThis.value += "-";
            if( len == 7 ) oThis.value += "-";
        
        }
        
    }
 
</script>

</html>






