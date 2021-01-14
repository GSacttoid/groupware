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
                <%@ include file="/WEB-INF/views/board/BOARD_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/board/BOARD_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div class="main-wrap noto font14 flex flex-justify" id="main" style="width:100%;">
			        <div class="main-left" >
			        	<div class="notice-title">
                            <h3><a href="${pageContext.request.contextPath}/board/company_notice" class="noto font16 under">
                            <i class="fas fa-book"></i> 최근 게시글</a></h3>
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
			        
			        <div class="main-right">
			        	<div class="notice-title">
                            <h3><a href="${pageContext.request.contextPath}/board/company_notice" class="noto font16 under">
                            <i class="fas fa-book"></i> 내가쓴 게시글</a></h3>
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
                        
                        <div class="notice-title">
                            <h3><a href="${pageContext.request.contextPath}/board/company_notice" class="noto font16 under">
                            <i class="fas fa-book"></i> 즐겨찾기 게시글</a></h3>
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
            </div>
        </main>
    </div>
</body>

</html>