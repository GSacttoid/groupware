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
                                <h3><a href="${pageContext.request.contextPath}/admin/system_notice" class="noto font16 under"><i class="fas fa-book"></i> 결제 내역</a></h3>
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

                        </div>
                        <div class="main-right">
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/gw_company_info" class="noto font16 under"><i class="fas fa-book"></i> 시스템 공지사항</a></h3>
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
    
                    <div class="main-admin-notice">
                        <div class="main-left">
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/system_notice" class="noto font16 under"><i class="fas fa-book"></i> 설문조사</a></h3>
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

                        </div>
                    </div>
                        
                     <div class="main-admin-notice">
                        <div class="main-left">
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/system_notice" class="noto font16 under"><i class="fas fa-book"></i> 자유게시판</a></h3>
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

                        </div>
                        <div class="main-right">
                            <div class="notice-title">
                                <h3><a href="${pageContext.request.contextPath}/admin/gw_company_info" class="noto font16 under"><i class="fas fa-book"></i> 부서게시판</a></h3>
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

                        </div>
                    </div>
                 </div>
           	</div>
        </main>
	</div>
</body>
<script>

</script>
</html>