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
	<div class="page-wrap bg-white ">
				<div class="page-right p20">
					<div class="page-main-wrap">
						<div class="title m-lr3">
							<h2 class="font18 noto m-t10 m-b5 tomato" style="color:tomato;">
								<i class="fas fa-feather-alt"></i> 내정보 상세보기
							</h2>
						</div>
						<div class="page-member-bottom">
							<div class="page-content">
								<form method="post" id="frm" action="${pageContext.request.contextPath}/myInfo_register" enctype="multipart/form-data">
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
														<input type="text" class="input-135" value="GreenArt" maxlength="20" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">부서명</td>
													<td class="td-13 p-lr3">
														<select id="emp_buseo" name="emp_buseo" class="sel-135">
														</select>
													</td>
													<td class="td-7 center under bg-gray noto weight700">직책명</td>
													<td class="td-13 p-lr3">
														<select id="emp_grade" name="emp_grade" class="sel-135">
														</select>
													</td>
													<td class="td-7 center under bg-gray noto weight700">입사년월일</td>
													<td class="td-13 p-lr3">
														<input type="text" autocomplete="off" name="emp_enter" id="emp_enter" class="input-135" maxlength="10"/>
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
															<option value="남자">남자</option>
															<option value="여자">여자</option>
														</select>
													</td>
													<td class="td-7 center under bg-gray noto weight700">생년월일</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_birth" id="emp_birth" class="input-135 noto" maxlength="8" placeholder="0000-00-00"/> 
													</td>
													<td class="td-7 center under bg-gray noto weight700">핸드폰</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_phone" id="emp_phone" class="input-135" maxlength="13" placeholder="010-0000-0000" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">내선번호</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_company_tel" id="emp_company_tel" class="input-135" maxlength="13" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">Tel</td>
													<td class="td-13 p-lr3">
														<input type="text" name="" id="" class="input-135" maxlength="13" />
													</td>
												</tr>
												
												<tr class="tr-35">
													<td class="td-7 center under bg-gray noto weight700">키</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_height" id="emp_height" class="input-135" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">몸무게</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_weight" id="emp_weight" class="input-135" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">취미</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_hobby" id="emp_hobby" class="input-135" maxlength="20" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">특기</td>
													<td class="td-13 p-lr3">
														<input type="text" name="emp_speciality" id="emp_speciality" class="input-135" maxlength="20" />
													</td>
													<td class="td-7 center under bg-gray noto weight700">결혼여부</td>
													<td class="td-13 p-lr3">
														<select name="empMarried" id="empMarried" class="sel-135">
															<option value="미혼">미혼</option>
															<option value="미혼">기혼</option>
														</select>
													</td>
												</tr>
												
												<tr class="tr-35">
													<td class="td-7 center under bg-gray noto weight700">보유자격</td>
													<td class="td-13 p-lr3" colspan="9" >
														<input type="text" name="" id="" class="input-100" maxlength="20" />
													</td>
												</tr>

												<tr class="tr-35">
													<td class="td-7 center under bg-gray noto weight700">어학사항
														1</td>
													<td class="td-13 p-lr3" colspan="9">
														<input type="text" name="" id="" class="input-100" maxlength="20" />
													</td>
												</tr>
											</table>
										</div>
									</div>
									<div class="comment">
										<h2 class="font16 noto m-t10 m-b5 m-lr3">추가사항 입력</h2>
										<textarea name="empComment" id="editor" class="noto" 
											style="width: 100%; height: 300px; border: 1px solid #ccc; padding: 10px; border-radius: 2px;"></textarea>
										<script>
                                            CKEDITOR.replace( 'editor' );
                                            CKEDITOR.config.height = 150;
                                        </script>
									</div>
									<div class="member-info m-t10">
										<div class="member-right center">
											<button type="submit" class="btn-on" id="btn">내용저장</button>
											<button type="reset" class="btn-off" id="">새로고침</button>
											<button type="button" class="btn-red" id="" onClick="window.close();">창닫기</button>
										</div>
									</div>
									<input type="hidden" name="empId" value="${sessionScope.empId}" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>

<script>
function readURL(input) { 
	if (input.files && input.files[0]) { 
		var reader = new FileReader(); 
		reader.onload = function (e) { 
			$('#empPhotoImg').attr('src', e.target.result);
		} 
		reader.readAsDataURL(input.files[0]);
	}
}

	$(function() {
		$("#empPhoto").change(function(){ 
			readURL(this); 
		});  
	});
</script>
<script>
	function loadBuseo() {
		$.ajax({
			type 	: "POST",
			url 	: "${pageContext.request.contextPath}/get_buseo",
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType: 'json',
			success	: function(responseData) {
				//$("#buseo").append("<option value=''>부서를 선택하세요.</option>");
				$.each(responseData, function(key, value) {
					$("#empBuseoCode").append("<option value="+value.buseo_id+">"+value.buseo_name+"</option>");
				});
			},
			error	: function() {
				alert("시스템 에러");
			}
		});
	}

	function loadGrade() {
		$.ajax({
			type 	: "POST",
			url 	: "${pageContext.request.contextPath}/get_grade",
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType: 'json',
			success	: function(responseData) {
				//$("#grade").append("<option value=''>직책을 선택하세요.</option>");
				$.each(responseData, function(key, value) {
					$("#empGradeCode").append("<option value="+value.grade_id+">"+value.grade_name+"</option>");
				});
			},
			error	: function() {
				alert("시스템 에러");
			}
		});
	}

	$(function() {
		loadBuseo();
		loadGrade();
		$("#empEnter").datepicker({
			dateFormat:"yy-mm-dd"
		});
	});
</script>






