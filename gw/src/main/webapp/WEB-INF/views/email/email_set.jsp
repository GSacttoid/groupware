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
tr{
	height:40px;
}
td{
	border:1px solid #d5d5d5;
}
input[type="radio"] {
    width:15px;
    height:15px;
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
                <%@ include file="/WEB-INF/views/email/EMAIL_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/email/EMAIL_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div class="main-wrap noto font14" style="width:100%;">
        
        <div class="p20">
            <div class="notice-title font16 noto">
                <h3><i class="fas fa-cogs"></i> 환경설정</h3>
            </div>
            <hr />

            <div>
            	<form method="post" id="frmRead">
            		<h3 class="m-b5">1. 보안 등급별 열람 설정</h3>
	                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3"><p>기안 상에 설정된 관련자들만 문서 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3"><p style="line-height:35px;">결재 완료 후 직위   	
	                         <select class="sel-135"></select>
	                                                  이상 기본 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3"><p style="line-height:35px;">결재 완료 후 직위   	
	                         <select class="sel-135"></select>
	                                                  이상 기본 열람</p></td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3"><p>모든 임직원 문서 열람</p></td>
	                     </tr>
	                 </table>
	                 <div class="btn-grp center m-t10">
	                     <button type="button" class="btn-on">저장</button>
	                     <button type="reset" class="btn-off" style="color:#000;">취소</button>
	                 </div>
             	</form>
            </div>
            
            <div>
            	<form method="post" id="frmForm">
            		<h3 class="m-b5">2. 일반 설정</h3>
	                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="signLine" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="signLine" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="dsign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="dsign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="asign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="asign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="hsign" value="" style="margin: 4px;" checked />허용함</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="hsign" value="" style="margin: 4px;"  />허용안함</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="csign" value="" style="margin: 4px;" checked />결재 시작</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="csign" value="" style="margin: 4px;"  />결재 완료</label>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;"></td>
	                         <td class="p-lr3">
		                         <label class="noto font14 m-lr10"><input type="radio" name="gsign" value="" style="margin: 4px;" checked />반려 처리</label>
                                 <label class="noto font14 m-lr10"><input type="radio" name="gsign" value="" style="margin: 4px;"  />문서 삭제</label>
	                         </td>
	                     </tr>
	                 </table>
	                 <div class="btn-grp center m-t10">
	                     <button type="button" class="btn-on">저장</button>
	                     <button type="reset" class="btn-off" style="color:#000;">취소</button>
	                 </div>
             	</form>
            </div>
        </div>
    </div>
            </div>
        </main>
    </div>
</body>

</html>