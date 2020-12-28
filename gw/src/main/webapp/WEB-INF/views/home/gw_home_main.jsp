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
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/system_notice" class="noto font16 under"><i class="fas fa-book"></i> 시스템 공지사항</a></h3>
                            </div>
                            <hr />
                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[공지사항]</span>2020/09/20 그룹웨어 정기정검안내 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.15</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[업데이트]</span>2020/09/12 업데이트 내역 안내 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.12</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[업데이트]</span>2020/09/02 업데이트 내역 안내 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.02</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[공지사항]</span>2020/08/23 그룹웨어 정기정검안내 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.08.10</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[알림]</span>접속 이상 해결방법 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.07.05</span>
                                </div>
                            </div>

                        </div>
                        <div class="main-right">
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/gw_company_info" class="noto font16 under"><i class="fas fa-book"></i> 회사 공지사항</a></h3>
                            </div>
                            <hr />
                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[인사과 알림]</span>운영자 확인이 필요한 근태 정보가 있습니다. </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.15</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[총무과 알림]</span>성과급 지급관련 공지글 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.14</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[전산과 알림]</span>그룹웨어 교육 (9/15) </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.13</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[인사과 알림]</span>코로나 예방관련 안내 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.13</span>
                                </div>
                            </div>

                            <div class="notice-content">
                                <div class="notice-left">
                                    <p class=""><span style="color: #d92550; margin-right: 10px;">[기획과 알림]</span>2020 하반기 긴급대책 회의 소집 </p>
                                </div>
                                <div class="notice-right">
                                    <span class="" style="font-size: 14px; color: #555;">2020.09.12</span>
                                </div>
                            </div>
                        </div>
                    </div>
    
                    <div class="main-admin-info">
                        <div class="main-info">
                            <div class="notice-title">
                                <h3><i class="fas fa-info-circle"></i> 그룹웨어 사용정보</h3>
                            </div>
                            <hr />
                            <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                                <tr>
                                    <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">도메인 명</td>
                                    <td style="width: 80%; font-weight: 500; padding: 5px 10px;">gw.greenart.kr</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 개설일</td>
                                    <td style="width: 80%; font-weight: 500; padding: 5px 10px;">2009/04/02</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 이용정보</td>
                                    <td style="width: 80%; display: flex; font-weight: 500; padding: 5px 10px;">
                                        <p style="margin-right: 20px;">2009/04/02 ~ 2020/12/15</p>
                                        <a class="detailButton  noto font14 p-lr10 weight300" onClick="getGwInfo();">그룹웨어 사용정보 상세보기</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div class="main-info">
                            <div class="notice-title">
                                <h3><i class="fas fa-info-circle"></i> 그룹웨어 관리자정보</h3>
                            </div>
                            <hr />
                            <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                                <tr>
                                    <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">관리자 아이디</td>
                                    <td style="width: 80%; font-weight: 500; padding: 5px 10px;">admin</td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">관리자 이름</td>
                                    <td style="width: 80%; font-weight: 500; padding: 5px 10px;">Master</td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div class="main-info">
                            <div class="notice-title">
                                <h3><i class="fas fa-info-circle"></i> 그룹웨어 이용용량정보</h3>
                            </div>
                            <hr />
                            <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                                <tr>
                                    <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">메일 용량</td>
                                    <td style="width: 80%; display: flex; font-weight: 500; padding: 5px 10px;">
                                        <p style="margin-right: 20px;">550 / 1024 MB [ 54% 사용중 ]</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">웹하드 용량</td>
                                    <td style="width: 80%; display: flex; font-weight: 500; padding: 5px 10px;">
                                        <p style="margin-right: 20px;">310 / 1024 MB [ 30% 사용중 ]</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 용량</td>
                                    <td style="width: 80%; display: flex; font-weight: 500; padding: 5px 10px;">
                                        <p style="margin-right: 20px;">150 / 1024 MB [ 15% 사용중 ]</p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

<script>
/* detail menu 열고 닫는 기능 */
$(function () {
    $("#open").click(function(){
        $("#open").addClass("active-all");
        $("#close").removeClass("active-all");
        $(".accordion-content").show();
        $(".accordion-header").addClass("active");

    });
    $("#close").click(function(){
        $("#close").addClass("active-all");
        $("#open").removeClass("active-all");
        $(".accordion-content").hide();
        $(".accordion-header").removeClass("active");
    });
});

/* detail menu 열고 닫는 버튼 색변경 */
$(function(){
    $(".accordion-header").click(function(){
        $(this).toggleClass("active").next().toggle();
    });
});

/* detail menu - ajax로 열기 */
	function getSystemNotice(){
		$.ajax({
			url		:"${pageContext.request.contextPath}/admin/system_notice",
			type	:"POST",
			datatype:"html",
			success	:function(resData){
				$("#main-wrap").html(resData);
			},
			error	:function(){
				alert("관리자에게 문의하세요.");
			}
		});
	}
	
</script>

</html>