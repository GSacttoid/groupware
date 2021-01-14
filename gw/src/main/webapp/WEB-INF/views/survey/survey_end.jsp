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
	    .tr-even {
			background-color: #eff3f9;
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
                <div class="main-wrap noto font14" id="main" style="width:100%;">
			        <div class="p20">
			        	<div class="flex flex-justify" style="line-height:center;">
			   	            <div class="notice-title font16 noto">
	                            <h3><i class="fas fa-book m-lr5"></i> 종료된 설문조사 [전체]</h3>
	                        </div>
				            <div>
				            	<button class="btn-on" onClick="location.href='${pageContext.request.contextPath}/survey/survey_insert'">설문작성</button>
				            </div>
			        	</div>
			
			            <hr />
			            <div class="list">
			                <table class="noto font14 center" style="width:100%;">
			                    <tr class="weight700" style="background-color: #6f809a; color: #fff;">
			                        <td class="td-5">번호</td>
			                        <td class="td-5">설문대상</td>
			                        <td class="td-8">대상상세</td>
			                        <td class="td-10">설문상태</td>
			                        <td class="td-10">설문방법</td>
			                        <td >설문제목</td>
			                        <td class="td-5">참여자수</td>
			                        <td class="td-5">작성자</td>
			                        <td class="td-15">설문기간</td>
			                        
			                        <c:if test = "${sessionScope.empId != null && sessionScope.empAuth > 9}">
			                        	<td class="td-5">관리</td>
			                        </c:if>
			                        
			                    </tr>
			                    <c:forEach var="survey_ing" items="${list}" varStatus="status">
				                    <tr>
				                        <td>${survey_ing.survey_id}</td>
				                        <td>${survey_ing.survey_view}</td>
				                        <td>
				                        	<c:choose>
				                        		<c:when test="${survey_ing.survey_view == '회사'}"><span class="noto font14 weight500">전체</span></c:when>
				                        		<c:when test="${survey_ing.survey_view == '부서'}"><span class="noto font14 weight500">${survey_ing.survey_buseo}</span></c:when>
				                        		<c:when test="${survey_ing.survey_view == '직급'}"><span class="noto font14 weight500">${survey_ing.survey_grade}</span></c:when>
				                        	</c:choose>
				                        </td>
				                        <td>
				                        	<c:if test="${survey_ing.survey_status == '설문진행중'}">
				                        		<div class="noto font14 p5 f6 m-lr20" style="background-color: #fc6468; border-radius: 2px;">${survey_ing.survey_status}</div>
				                        	</c:if>
				                        	
				                        	<c:if test="${survey_ing.survey_status == '설문대기중'}">
				                        		<div class="noto font14 weight500 p5 m-lr20 bg-gray" style="border-radius: 2px; border:1px solid #d5d5d5;">${survey_ing.survey_status}</div>
				                        	</c:if>
				                        	
				                        	<c:if test="${survey_ing.survey_status == '설문종료'}">
				                        		<div class="noto font14 weight500 p5 m-lr20 bg-gray" style="border-radius: 2px; border:1px solid #d5d5d5;">${survey_ing.survey_status}</div>
				                        	</c:if>
			                        	</td>
			                        	<td>${survey_ing.survey_way}</td>
				                        <td>
				                        	<div class="left p10 under weight700" 
				                        	onClick="survey_result('${survey_ing.survey_id}');">${survey_ing.survey_title}</div>
				                        </td>
				                        <td>${survey_ing.survey_total}</td>
				                        <td>${survey_ing.survey_maker}</td>
				                        <td>${survey_ing.survey_startDate} ~ ${survey_ing.survey_endDate}</td>
				                        <c:if test = "${sessionScope.empId != null && sessionScope.empAuth > 9}">
					                        <td>
					                        	<button type=button class="s-btn-red f6" id="deleteSurvey" 
					                        	onClick="surveyDelete(${survey_ing.survey_id});">삭제</button>
					                        </td>
				                        </c:if>
				                    </tr>
								</c:forEach>
			                </table>
							<div>
								<c:if test = "${count > 0}">
			                    	<div class="page-grp center m-t10">
			                         	<c:choose>
			                               	<c:when test = "${curPage > 1}">
												<span class="page">
			                                     	<a href="${pageContext.request.contextPath}/survey/survey_list/total_ing?curPage=1"><i class="fas fa-angle-double-left"></i></a>
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
			                                    	<a href="${pageContext.request.contextPath}/survey/survey_list/total_ing?curPage=${curPage-1}"><i class="fas fa-angle-left"></i></a>
			                                	</span>
			                               	</c:when>
			                             	<c:otherwise>
				                               	<span class="page">
				                               		<i class="fas fa-angle-left"></i>
				                               	</span>
			                           		</c:otherwise>
			                           	</c:choose>
			                           	<c:forEach begin="${blockBegin}" end = "${blockEnd}" var="num">
			                           		<c:if test="${selected != num}">
			                           			<a href="${pageContext.request.contextPath}/survey/survey_list/total_ing?curPage=${num}">
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
			                               		<a href="${pageContext.request.contextPath}/survey/survey_list/total_ing?curPage=${curPage+1}">
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
			                                   		<a href="${pageContext.request.contextPath}/survey/survey_list/total_ing?curPage=${totalPage}"><i class="fas fa-angle-double-right"></i></a>
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
							</div>
			            </div>
					</div>
			    </div>
            </div>
        </main>
    </div>
</body>
<script type="text/javascript">
$(function () {
    $("tr:nth-child(2n+1)").addClass("tr-even");
})
</script>
<script>
function surveyDelete(survey_id){
	var str = confirm("설문조사를 삭제하시겠습니까?");
    if( str ) { 
		$.ajax({
			url		: "${pageContext.request.contextPath}/survey/survey_delete",
			type	: "POST",
			data	: {survey_id : survey_id},
			success : function(resData) {
				if(resData == "success"){
					alert("삭제 되었습니다.");
					window.location.reload();
				}
			},
			error	: function() {
				alert("관리자에게 문의하세요.");
			}
		});
	}
}

</script>
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
                            alert("해당  직급 설문엔 참여하실수 없습니다.");
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

	function survey_close() {
		//$("#survey_bg").hide();
		$("#survey_bg").css({
			display	: "none"
		});
	}

</script>
</html>