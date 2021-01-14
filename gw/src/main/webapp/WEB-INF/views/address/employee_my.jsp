<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<%@ include file="/WEB-INF/views/address/ADDRESS_MENU.jsp"%>
				<!-- /INCLUDE MENU (ALL) -->
				<div class="detail-wrap">
					<!-- INCLUDE MENU_DETAIL (ADMIN) -->
					<%@ include file="/WEB-INF/views/address/ADDRESS_MENU_DETAIL.jsp"%>
					<!-- /INCLUDE MENU_DETAIL (ADMIN) -->
				</div>
				<div class="main-wrap bg-white ">
					<div class="page-right p20">
						<div class="page-main-wrap">
							<div class="title m-lr3">
								<h2 class="font18 noto m-t10 m-b5 tomato" style="color:tomato;">
									<i class="fas fa-feather-alt"></i> 사원정보 수정하기 - [[아이디: ${list.emp_id}]]
								</h2>
							</div>
							<div class="page-member-bottom">
								<div class="page-content">
									<form method="post" id="frm" name="frm" enctype="multipart/form-data" autocomplete="off">
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
														<td class="td-7 center under bg-gray noto weight700">회사명</td>
														<td class="td-13 p-lr3">
															<input type="text" class="input-135" value="GreenArt" maxlength="20" readonly />
														</td>
														<td class="td-7 center under bg-gray noto weight700">부서명</td>
														<td class="td-13 p-lr3">
															<select id="emp_buseo" name="emp_buseo" class="sel-135">
																<option value="100" <c:if test="${list.emp_buseo eq '100'}">selected</c:if> >관리부</option>
																<option value="200" <c:if test="${list.emp_buseo eq '200'}">selected</c:if> >영업부</option>
																<option value="300" <c:if test="${list.emp_buseo eq '300'}">selected</c:if> >총무부</option>
																<option value="400" <c:if test="${list.emp_buseo eq '400'}">selected</c:if> >전산부</option>
																<option value="500" <c:if test="${list.emp_buseo eq '500'}">selected</c:if> >생산부</option>
																<option value="600" <c:if test="${list.emp_buseo eq '600'}">selected</c:if> >인사부</option>
																<option value="700" <c:if test="${list.emp_buseo eq '700'}">selected</c:if> >품질부</option>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">직책명</td>
														<td class="td-13 p-lr3">
															<select id="emp_grade" name="emp_grade" class="sel-135">
																<option value="1" <c:if test="${list.emp_grade eq '1'}">selected</c:if> >임시</option>
																<option value="2" <c:if test="${list.emp_grade eq '2'}">selected</c:if> >사원</option>
																<option value="3" <c:if test="${list.emp_grade eq '3'}">selected</c:if> >주임</option>
																<option value="4" <c:if test="${list.emp_grade eq '4'}">selected</c:if> >대리</option>
																<option value="5" <c:if test="${list.emp_grade eq '5'}">selected</c:if> >과장</option>
																<option value="6" <c:if test="${list.emp_grade eq '6'}">selected</c:if> >부장</option>
																<option value="7" <c:if test="${list.emp_grade eq '7'}">selected</c:if> >이사</option>
																<option value="8" <c:if test="${list.emp_grade eq '8'}">selected</c:if> >전무이사</option>
																<option value="10" <c:if test="${list.emp_grade eq '10'}">selected</c:if> >대표이사</option>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">입사일</td>
														<td class="td-13 p-lr3">
															<input type="text" autocomplete="off" name="emp_enter" id="emp_enter" class="input-135" value="${list.emp_enter}" 
															onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)" maxlength="10"/>
														</td>
														<td class="td-7 center under bg-gray noto weight700">비밀번호</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_pwd" id="emp_pwd" class="input-135" value="${list.emp_pwd}" maxlength="20" />
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">사원명/성별</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_name" id="emp_name" class="input-75" value="${list.emp_name}" />
															<select name="emp_gender" id="emp_gender" class="sel-55">
																<option value="남자" <c:if test="${list.emp_gender eq '남자'}">selected</c:if> >남자</option>
																<option value="여자" <c:if test="${list.emp_gender eq '여자'}">selected</c:if> >여자</option>
															</select>
														</td>
														<td class="td-7 center under bg-gray noto weight700">생년월일</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_birth" id="emp_birth" class="input-135 noto" value="${list.emp_birth}" 
															onkeyup="auto_date_format(event, this)" onkeypress="auto_date_format(event, this)" maxlength="8"/> 
														</td>
														<td class="td-7 center under bg-gray noto weight700">핸드폰</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_phone" id="emp_phone" class="input-135" value="${list.emp_phone}" maxlength="13"/>
														</td>
														<td class="td-7 center under bg-gray noto weight700">내선번호</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_company_tel" id="emp_company_tel" class="input-135" value="${list.emp_company_tel}" maxlength="13" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">Tel</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_tel" id="emp_tel" class="input-135" value="${list.emp_tel}" maxlength="13" />
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">키</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_height" id="emp_height" class="input-135" value="${list.emp_height}" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">몸무게</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_weight" id="emp_weight" class="input-135" value="${list.emp_weight}" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">취미</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_hobby" id="emp_hobby" class="input-135" maxlength="20" value="${list.emp_hobby}" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">특기</td>
														<td class="td-13 p-lr3">
															<input type="text" name="emp_speciality" id="emp_speciality" class="input-135" maxlength="20" value="${list.emp_speciality}" />
														</td>
														<td class="td-7 center under bg-gray noto weight700">결혼여부</td>
														<td class="td-13 p-lr3">
															<select name="emp_married" id="emp_married" class="sel-135">
																<option value="미혼" <c:if test="${list.emp_married eq '미혼'}">selected</c:if> >미혼</option>
																<option value="기혼" <c:if test="${list.emp_married eq '기혼'}">selected</c:if> >기혼</option>
															</select>
														</td>
													</tr>
													
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">보유자격</td>
														<td class="td-13 p-lr3" colspan="9" >
															<input type="text" name="emp_license" id="emp_license" class="input-100" maxlength="20" value="${list.emp_license}" />
														</td>
													</tr>
	
													<tr class="tr-35">
														<td class="td-7 center under bg-gray noto weight700">어학사항
															1</td>
														<td class="td-13 p-lr3" colspan="9">
															<input type="text" name="emp_lang" id="emp_lang" class="input-100" maxlength="20" value="${list.emp_lang}" />
														</td>
													</tr>
												</table>
											</div>
										</div>
										<div class="comment">
											<h2 class="font16 noto m-t10 m-b5 m-lr3">추가사항 입력</h2>
											<textarea name="emp_comment" id="editor" class="noto" 
												style="width: 100%; height: 300px; border: 1px solid #ccc; padding: 10px; border-radius: 2px;">${list.emp_comment}</textarea>
											<script>
	                                            CKEDITOR.replace( 'editor' );
	                                            CKEDITOR.config.height = 150;
	                                        </script>
										</div>
										<input type="hidden" name="emp_id" id="emp_id" class="input-100" maxlength="20" value="${list.emp_id}" />
										<div class="member-info m-t10">
											<div class="member-right center">
												<button type="button" class="btn-on" id="btn" onClick="noticeModify('${list.emp_id}');">내용저장</button>
												<button type="reset" class="btn-off" id="">새로고침</button>
												<a type="button" class="btn-red" id="" href="${pageContext.request.contextPath}/address/main">목록으로</a>
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
function noticeModify(emp_id){
	var str = confirm(emp_id+"님의 정보를 수정하시겠습니까?\n확인) 입사일 & 생년월일은 필수 입력항목입니다.");

    if( str ) { 
		CKEDITOR.instances.editor.updateElement();
		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/admin/employee_modify",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				if(resData == "success"){
					alert("사원정보가 수정되었습니다.");
					window.location.href="${pageContext.request.contextPath}/address/main";
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






