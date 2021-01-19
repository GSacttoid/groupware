<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
	<style>
	    .detailButton{
	        border: 1px solid #6d6d6d;
	        color: #000;
	        background-color: #c1c1c1;
	        cursor: pointer;
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
                <%@ include file="/WEB-INF/views/survey/SURVEY_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/survey/SURVEY_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div class="main-wrap noto font14 p20" style="width:100%">
                    <div class="notice-title font16 noto">
                        <h3><i class="fas fa-book m-lr5"></i> 설문조사 등록하기</h3>
                    </div>
                    <hr />
                        
                        <div>
                        	<form id="frm" method="post" autocomplete="off" onsubmit="return fales;">
                        		<table>
               		                <tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문대상</td>
                        				<td class="td-90 p-lr3 flex" style="width:100%;">
                        					<select id="survey_view" name="survey_view" class="sel-135">
                        						<option value="회사">회사</option>
                        						<option value="부서">부서</option>
                        						<option value="직급">직급</option>
                        					</select>
                     						<div id="buseo_box" class="m-lr3" style="display: none;">
                   								<select id="survey_buseo" name="survey_buseo" class="sel-135">
                   								    <c:forEach var="buseoList" items="${buseoList}" varStatus="status">
								 						<option value="${buseoList.buseo_name}">${buseoList.buseo_name}</option>
										 			</c:forEach>
								 				</select>
                     						</div>
                     						<div id="grade_box" class="sel-135" style="display: none;">
	                     						<select id="survey_grade" name="survey_grade" class="sel-135">
	                     							<c:forEach var="gradeList" items="${gradeList}" varStatus="status">
										 				<option value="${gradeList.grade_name}">${gradeList.grade_name}</option>
										 			</c:forEach>
										 		</select>
                     						</div>
                     						<span class="font14 noto m-lr10" style="line-height:38px;">'부서' 또는 '직급'을 선택하시면 상세 설정이 가능합니다.</span>
                        				</td>
                        			</tr>
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문상태</td>
                        				<td class="td-90 p-lr3">
                        					<select name="survey_status" class="sel-135">
                        						<option value="설문진행중">설문진행중</option>
                        						<option value="설문대기중">설문대기중</option>
                        						<option value="설문종료">설문종료</option>
                        					</select>
                        					<span class="font14 noto m-lr10" style="line-height:38px;"></span>
                        				</td>
                        			</tr>
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문방식</td>
                        				<td class="td-90 p-lr3">
                        					<select name="survey_way" class="sel-135">
                        						<option value="단일투표">단일투표</option><!-- radio 버튼 방식으로 투표 -->
                        					</select>
                        				</td>
                        			</tr>

                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">결과공개여부</td>
                        				<td class="td-90 p-lr3">
                        					<select name="survey_result" class="sel-135">
                        						<option value="공개">공개</option>
                        						<option value="비공개">비공개</option>
                        					</select>
                        				</td>
                        			</tr>
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문기간</td>
                        				<td class="td-90 p-lr3">
                        					<input type="text" autoComplete="off" name="survey_startDate" id="survey_startDate" class="input-200" placeholder="시작일" />
                        					<span style="line-height:35px;">-</span>
                        					<input type="text" autoComplete="off" name="survey_endDate" id="survey_endDate" class="input-200" placeholder="종료일" />
                        				</td>
                        			</tr>
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문작성자</td>
                        				<td class="td-90 p-lr3">
                        					<input type="text" name="survey_maker" id="survey_maker" class="input-135" value="${sessionScope.empName}" />
                        				</td>
                        			</tr>
                        		</table>
                        		<table style="margin-top:5px;">
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문제목</td>
                        				<td class="td-90 p-lr3">
                        					<input type="text" name="survey_title" id="survey_title" class="input-100" />
                        				</td>
                        			</tr>
                        			<tr>
                        				<td class="td-10 font14 center weight500 noto bg-gray">설문내용</td>
                        				<td class="td-90 p-lr3">
                        					<input type="text" name="survey_content" id="survey_content" class="input-100" />
                        				</td>
                        			</tr>
                        			<tr>
                        				<td style="vertical-align:top;padding-top:5px;" class="td-10 font14 center weight500 noto bg-gray">
                        					<span class="">설문보기</span>
                        					
                        					<div class="m-t10">
	                        					<span class="">항목추가</span>
	                        					<span><i class="far fa-plus-square font18" id="ex-plus" style="cursor:pointer; color:tomato;"></i></span>
	                        					<span><i class="far fa-minus-square font18" id="ex-minus" style="cursor:pointer; color:tomato;"></i></span>
                        					</div>
                        				</td>
                        				<td class="td-90 p-lr3">
                        					<div id="ex-area">
                        						<div class="ex">
	                        						<span style="line-height:35px;">1. </span><input type="text" name="survey_example" id="survey_example1" style="width:50%;margin:2px 0;" />
	                        					</div>
	                        					<div class="ex">
	                        						<span style="line-height:35px;">2. </span><input type="text" name="survey_example" id="survey_example2" style="width:50%;margin:2px 0;" />
	                        					</div>
                        					</div>
                        				</td>
                        			</tr>
                        		</table>
                        		<div class="btn-grp center m-t10">
                                    <button type="button" class="btn-on margin-l1" id="surveyBtn" >설문생성</button>
                                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                                </div>
                        	</form>
                        </div>
                    </div>
          
 			</div>
        </main>
    </div>
</body>
<script>
$(function(){
	$("#survey_view").change(function(){
		if($("#survey_view").val() == '부서'){
			$("#buseo_box").show();
			$("#grade_box").hide();
		}
		if($("#survey_view").val() == '직급'){
			$("#grade_box").show();
			$("#buseo_box").hide();
		}
		if($("#survey_view").val() == '회사'){
			$("#grade_box").hide();
			$("#buseo_box").hide();
		}
	});
});
</script>
<script>
	$(function() {
		$("#survey_startDate, #survey_endDate").datepicker({
			dateFormat: 'yy-mm-dd'
		});

		
	$("#surveyBtn").click(function(){

		if( $("#survey_startDate").val() == '' ) {
			alert("설문 시작일을 선택하세요.");
			$("#survey_startDate").focus();
			return false;
		}

		if( $("#survey_endDate").val() == '' ) {
			alert("설문 종료일을 선택하세요.");
			$("#survey_endDate").focus();
			return false;
		}

		if( $("#survey_title").val() == '' ) {
			alert("설문 제목을 입력하세요.");
			$("#survey_title").focus();
			return false;
		}

		if( $("#survey_example1").val() == '' ) {
			alert("설문의 첫 번째 보기를 입력하세요.");
			$("#survey_example1").focus();
			return false;
		}

		if( $("#survey_example2").val() == '' ) {
			alert("설문의 두 번째 보기를 입력하세요.");
			$("#survey_example2").focus();
			return false;
		}

		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/survey/survey_insert",
			type	: "POST",
			data	: formData,
			success : function(resData) {
				alert("설문이 생성 되었습니다.");
				window.location.href = "${pageContext.request.contextPath}/survey/main";
			},
			error	: function() {
				alert("관리자에게 문의하세요.");
			}
		});
	});
		
		var cnt = 2;
		var max = 5;
		$("#ex-plus").click(function() {
			if( cnt < max ) {
				cnt++;
				$('#ex-area').append('<div class="ex"><span style="line-height:35px;">'+cnt+'. </span><input type="text" name="survey_example" id="survey_example'+cnt+'" style="width:50%;margin:2px 0;" /></div>');
			}else{
				alert("설문 보기는 5개 까지만 생성 가능합니다.");
				return;
			}
		});

		$("#ex-minus").click(function(){
			if( cnt < 3 ) {
				alert("최소 2개의 설문 보기는 존재해야 합니다.");
				return;
			}else{
				$(".ex:last").remove(); //: 가상요소(css)
				cnt--;
			}
		});
	});
</script>
</html>