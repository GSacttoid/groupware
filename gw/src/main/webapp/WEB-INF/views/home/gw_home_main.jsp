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
                <%@ include file="/WEB-INF/views/home/HOME_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/home/HOME_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div id="main-wrap" class="main-wrap noto font14">
                    
                    <div class="main-admin-notice">
                        <div class="main-left">
                        	<div>
								<div class="notice-title">
	                                <h3><a href="${pageContext.request.contextPath}/notice/company_notice" class="noto font16 under">
	                                <i class="fas fa-book"></i> 회사 공지사항</a></h3>
	                            </div>
	                            <hr />
	                            <c:forEach var="comNoticeList" items="${comNoticeList}" varStatus="status">
		                            <div class="notice-content">
		                                <div class="notice-left">
		                                    <p class="noto"><span style="color: #d92550; margin-right: 10px;">[${comNoticeList.sn_type}]</span>${comNoticeList.sn_title} </p>
		                                </div>
		                                <div class="notice-right">
		                                    <span class="" style="font-size: 14px; color: #555;">${comNoticeList.sn_regdate}</span>
		                                </div>
		                            </div>
	                            </c:forEach>
							</div>
                        </div>
                        <div class="main-right">
                        	<div>
	                            <div class="notice-title">
	                                <h3><a href="${pageContext.request.contextPath}/notice/system_notice" class="noto font16 under">
	                                <i class="fas fa-book"></i> 시스템 공지사항</a></h3>
	                            </div>
	                            <hr />
	                            <c:forEach var="sysNoticeList" items="${sysNoticeList}" varStatus="status">
		                            <div class="notice-content">
		                                <div class="notice-left">
		                                    <p class="noto"><span style="color: #d92550; margin-right: 10px;">[${sysNoticeList.sn_type}]</span>${sysNoticeList.sn_title} </p>
		                                </div>
		                                <div class="notice-right">
		                                    <span class="" style="font-size: 14px; color: #555;">${sysNoticeList.sn_regdate}</span>
		                                </div>
		                            </div>
	                            </c:forEach>
							</div>
                        </div>
                    </div>
    
                    <div class="main-admin-notice p20">
                        <div class="w-100">
                            <div class="notice-title">
	                                <h3><a href="${pageContext.request.contextPath}/survey/main" class="noto font16 under">
	                                <i class="fas fa-vote-yea"></i> 설문조사</a></h3>
	                            </div>
	                            <hr />
	                            <div class="">
	                                <div class="notice-left flex">
	                                    <p class="m-lr10 m-b10">진행중인 설문: <span style="color:#f00;">${openCount}개</span></p>
	                                </div>
	                                <div class="flex" style="width:100%;">
	                                    <c:forEach var="surOpenList" items="${surOpenList}" varStatus="status">
				                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
				                                <div class="survey p10 noto" style="width: 100%; line-height: 1.8;">
				                                	<c:if test="${surOpenList.survey_status == '설문진행중'}">
				                                		<span class="btn-red">설문상태: ${surOpenList.survey_status}</span>
				                                	</c:if>
				                                	<c:if test="${surOpenList.survey_status == '설문대기중'}">
				                                		<span class="btn-cancel">설문상태: ${surOpenList.survey_status}</span>
				                                	</c:if>
				                                    
				                                    <h2 class="m-t10">${surOpenList.survey_title}</h2>
				                                    <p>${surOpenList.survey_startDate}~${surOpenList.survey_endDate}</p>
				                                    <p style="color:#f00;" class="font14 weight700 noto">설문대상: ${surOpenList.survey_view} 
				                                    <c:choose>
				                                    	<c:when test="${surOpenList.survey_view == '부서'}">[${surOpenList.survey_buseo}]</c:when>
				                                    	<c:when test="${surOpenList.survey_view == '직급'}">[${surOpenList.survey_grade}]</c:when>
				                                    	<c:otherwise>[전체]</c:otherwise>
				                                    </c:choose></p>
				                                    <p>작성자: ${surOpenList.survey_maker}</p>
				                                </div>
				                                <div class="center noto font14 weight700 p10 under bg-gray" 
				                                onClick="survey_form('${surOpenList.survey_id}','${surOpenList.survey_status}','${surOpenList.survey_view}','${surOpenList.survey_buseo}','${surOpenList.survey_grade}');">설문참여하기</div>
				                            </div>
										</c:forEach>
	                                </div>
	                            </div>
	                        </div> 
	                    </div>
                 </div>
           	</div>
        </main>
	</div>
</body>
<!-- 설문결과 -->
<style>
.survey_bg {
	position:absolute;
	top:0;
	left:0;
	
	width:100%;
	height:100%;
	background-color:rgba(0, 0, 0, 0.7);
}

.survey_box {
	background-color:#fff;
	width:550px;
	position:absolute;
	top:50%;
	left:50%;
	transform:translate(-50%, -50%);
}

.survey_bg {
	display:none;
}
</style>

<div class="survey_bg" id="survey_bg">
	<div class="survey_win">
		
	</div>
</div>
<!-- 설문결과 -->
</body>
<script>
    function survey_result_do(survey_id){
        $.ajax({
            url		:"${pageContext.request.contextPath}/survey/survey_result",
            type	:"POST",
            data	:{survey_id : survey_id},
            success	:function(resData){
                var a = '';

        		a += '<div class="survey_box">';
        			a += '<div style="border:1px solid #e7e7e7;padding:30px;">';
        				a += '<span class="btn-red">설문상태 : <strong>'+resData.survey_status+'</strong></span>';
       					a += '<div style="line-height:1.8; margin-top:10px;">';
       						a += '<p class="noto font18">1. 설문기간 : <strong>'+resData.survey_startDate+' ~ '+resData.survey_endDate+'</strong></p>';
   							a += '<p class="noto font18">2. 설문참여자수 : <strong>'+resData.survey_total+'</strong>명</p>';
							a += '<p class="noto font18">3. 설문작성자 : <strong>'+resData.survey_maker+'</strong></p>';
							a += '<p class="noto font18">4. 설문작성일 : <strong>'+resData.survey_regdate+'</strong></p>';
						a += '</div>';
        				
						a += '<div style="margin-top:30px;">';
							a += '<h1 class="noto">'+resData.survey_title+'</h1>';
							a += '<div style="display:flex;justify-content:space-between;">';
								a += '<div style="width:60%;line-height:1.8; margin-top:10px;">';
									var token = resData.survey_ex.split("|");
									for(var i = 0; i < token.length-1; i++){
										a += '<p class="noto font18">'+(i+1)+'. '+token[i]+'</p>';
									}
								a += '</div>'
								a += '<div style="width:30%;">'
									var tokenCnt = resData.survey_ex_cnt.split("|");
									for(var i = 0; i < tokenCnt.length-1; i++){
										a += '<div class="center f6 weight700" style="line-height:35px;margin-top:5px;width:100%;height:35px;background-color:#f00;">';
										if(tokenCnt[i] == 0){
											a += "0표(0%)";
										}else{
											a += tokenCnt[i]+'표('+((tokenCnt[i]/resData.survey_total)*100).toFixed(0)+'%)';
										}
										a += '</div>';
									}
								a += '</div>';
							a += '</div>';
						a += '</div>';
					a += '</div>';
					a += '<div class="bg-gray p20 center" style="cursor:pointer;" onClick="survey_close();">';
						a += '<span class=" noto weight700 font18">[닫기]</span>';
					a += '</div>';
				a += '</div>';
			$("#survey_bg").html(a);
            },
            error	:function(){
                alert("시스템 에러!");
            }
        });
    }

    function survey_form_do(survey_id){
        $.ajax({
            url		:"${pageContext.request.contextPath}/survey/survey_result",
            type	:"POST",
            data	:{survey_id : survey_id},
            success	:function(resData){
                var a = '';
				a += '<form name="frm" id="frm">';
	        		a += '<div class="survey_box">';
	        			a += '<div style="border:1px solid #e7e7e7;padding:30px;">';
	        				a += '<span class="btn-red">설문상태 : <strong>'+resData.survey_status+'</strong></span>';
	       					a += '<div style="line-height:1.8; margin-top:10px;">';
	       						a += '<p class="noto font18">1. 설문기간 : <strong>'+resData.survey_startDate+' ~ '+resData.survey_endDate+'</strong></p>';
	   							a += '<p class="noto font18">2. 설문참여자수 : <strong>'+resData.survey_total+'</strong>명</p>';
								a += '<p class="noto font18">3. 설문작성자 : <strong>'+resData.survey_maker+'</strong></p>';
								a += '<p class="noto font18">4. 설문작성일 : <strong>'+resData.survey_regdate+'</strong></p>';
							a += '</div>';
	        				
							a += '<div style="margin-top:30px;">';
								a += '<h1 class="noto">'+resData.survey_title+'</h1>';
								a += '<div style="display:flex;justify-content:space-between;">';
									a += '<div style="width:100%;line-height:1.8; margin-top:10px;">';
										var token = resData.survey_ex.split("|");
										for(var i = 0; i < token.length-1; i++){
											a += '<p class="noto font18">';
											a += '<input type="radio" id="rdo" name="rdo" value="'+i+'" style="width:20px; height:20px; vertical-align:middle;" /> ';
											a += token[i]+'</p>';
										}
									a += '</div>';
								a += '</div>';
							a += '</div>';
						a += '</div>';
						a += '<div class="flex p20 noto center font20 bg-gray">';
							a += '<div style="width:50%; cursor:pointer;" onClick="survey_do();">투표하기</div>';
							a += '<div style="width:50%; cursor:pointer;" onClick="survey_close();">화면닫기</div>';
						a += '</div>';
					a += '</div>';
					a += '<input type="hidden" name="survey_id" value="'+resData.survey_id+'"/>';
				a += '</form>';
			$("#survey_bg").html(a);
            },
            error	:function(){
                alert("시스템 에러!");
            }
        });
    }
    
    function survey_result(survey_id) {
        survey_result_do(survey_id);
        //$("#survey_bg").show();
    	$("#survey_bg").css({
			display	: "block"
		});
	}

    function survey_form(survey_id,survey_status,survey_view,survey_buseo,survey_grade) {
        if(survey_status == '설문진행중'){
            if(survey_view == '회사'){
                survey_form_do(survey_id);
            	$("#survey_bg").css({
        			display	: "block"
        		});
            }else{
                if(survey_view == '부서'){
                    var buseo = '<%=(String)session.getAttribute("empBuseoName")%>';
                    if(survey_buseo == buseo){
                    	survey_form_do(survey_id);
                    	$("#survey_bg").css({
                			display	: "block"
                		});
                    }else{
                    	alert("해당 부서 설문엔 참여하실수 없습니다.");
                    }
                }else{
                	if(survey_view == '직급'){
                		var grade = '<%=(String)session.getAttribute("empGradeName")%>';
                		if(survey_grade == grade){
                        	survey_form_do(survey_id);
                        	$("#survey_bg").css({
                    			display	: "block"
                    		});
                        }else{
                            alert("해당 직급 설문엔 참여하실수 없습니다.");
                        }
                    }else{
                        alert("오류");
                    }
                }
            }
        }else{
            alert("설문기간이 아닙니다.");
            $("#survey_bg").css({
    			display	: "none"
    		});
        }
		
	}

	function buseoCheck(survey_buseo){
		
	}

	function survey_close() {
		//$("#survey_bg").hide();
		$("#survey_bg").css({
			display	: "none"
		});
	}

	function survey_do(){
		if($("#rdo:checked").length < 1 ){
			alert("설문 선택지를 선택하세요.");
			return false;
		}else{
			/* 투표 저장하는 ajax */
			var formData = $("#frm").serialize();
			$.ajax({
				url		:"${pageContext.request.contextPath}/survey/survey_do",
				type	:"POST",
				data	:formData,
				success	:function(resData){
					alert("투표 되었습니다.");
					$("#survey_bg").hide();
					
				},
				error	:function(){
					alert("관리자에게 문의하세요.");
				}
			});
		}
	}
</script>
</html>