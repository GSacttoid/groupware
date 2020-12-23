<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<style>
table {
	border-collapse: collapse;
}
tr{
    height: 40px;
    border: 1px solid #c1c1c1;
}
.list tr:first-child{
    background-color: #6f809a;
    color: #fff;
}
.tr-even{
    background-color: #eff3f9;
} 
td{
    border: 1px solid #c1c1c1;
}
</style>
<body>
    <!-- modal layer -->
    <div class="modal-wrapper">
        <div class="modal_member_list noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h3><i class="fas fa-info-circle"></i>관리자 지정하기</h3>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">

                            </div>
                            <div class="m-b5">
                                <select class="" name="searchOpt">
                                    <option value="">--검색 조건--</option>
                                    <option value="name">이름</option>
                                    <option value="grade">직급</option>
                                    <option value="buseo">부서</option>
                                </select>
                                <input type="text" name="words" required style="margin-left: -2px;"/>
                                <button type="submit" class="btn-off" style="margin-left: -2px;">직원 검색</button>
                                <button type="button" class="popup btn-red">창 닫기</button>
                            </div>
                        </div>

                            <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 bg-gray">
                                     <td class="td-5">No</td>
                                     <td class="td-10">아이디</td>
                                     <td class="td-10">이름</td>
                                     <td class="td-10">부서</td>
                                     <td class="td-10">직급</td>
                                     <td class="td-10">입사일</td>
                                     <td class="td-5">선택</td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>120</td>
                                     <td>admin</td>
                                     <td>박그린</td>
                                     <td>전산부</td>
                                     <td>과장</td>
                                     <td>2020/09/16</td>
                                     <td>
                                         <button type="button" class="s-btn-on">선택</button>
                                     </td>
                                 </tr>
                            </table>

                        <div class="page-grp center m-t10">
                            <span class="page"><a href=""><i class="fas fa-angle-double-left"></i></a></span>
                            <span class="page"><a href=""><i class="fas fa-angle-left"></i></a></span>
                            <span class="page page-active"><a href="" class="f6">1</a></span>
                            <span class="page"><a href="">2</a></span>
                            <span class="page"><a href="">3</a></span>
                            <span class="page"><a href="">4</a></span>
                            <span class="page"><a href="">5</a></span>
                            <span class="page"><a href=""><i class="fas fa-angle-right"></i></a></span>
                            <span class="page"><a href=""><i class="fas fa-angle-double-right"></i></a></span>
                        </div>
                    </div>
                </form>
            </div>  
        </div>
    </div>
    <!-- //modal layer -->
    <div class="total-wrap">
        <!-- INCLUDE LOGO (ALL) -->
        <%@ include file="/WEB-INF/views/INCLUDE/GW_LOGO.jsp" %>
        <!-- /INCLUDE LOGO (ALL) -->
        <main>
            <div class="container">
                <!-- INCLUDE MENU (ALL) -->
                <%@ include file="/WEB-INF/views/INCLUDE/GW_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                    <!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/INCLUDE/GW_MENU_DETAIL_ADMIN.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->

                </div>
                <div class="main-wrap noto font14">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-info-circle m-lr5"></i>관리자 정보 관리</h3>
                        </div>
                        <hr />
                        
                            <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 5px;">
                                <tr>
                                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
                                        <div class="noto font14">
                                            <ul>
                                                <li>각 메뉴마다 관리자를 지정할 수 있습니다.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                            	<div class="noto font16 weight700 m-tb10">1. 관리자 지정하기</div>
                                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                    <tr class="m-t10">
                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리 권한</td>
                                        <td class="p10" >
                                            <div class="flex">
                                                <label class="noto font14 weight700 m-lr10"><input type="radio" name="menu-admin" value="" style="margin: 5px;"  />전체 관리자</label>
                                                <label class="noto font14 weight700 m-lr10"><input type="radio" name="menu-admin" value="" style="margin: 5px;"  />회사메뉴 관리자</label>
                                                <label class="noto font14 weight700 m-lr10"><input type="radio" name="menu-admin" value="" style="margin: 5px;"  />부서메뉴 관리자</label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="">
                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리자 지정하기</td>
                                        <td>
                                            <input type="text" class="input-135" style="margin-left: 2px;" />
                                            <button type="button" class="btn-on popup" >관리자 찾기</button>
                                        </td>
                                    </tr>
                                </table>
                                <div class="btn-grp center m-t10">
                                    <button type="submit" class="btn-on">저장</button>
                                    <button type="button" class="btn-off">취소</button>
                                </div>
                            </div>
                        </form>
                        <br />

                        
                        <div class="p10" style="border: 1px solid #c1c1c1;">
                            <div class="">
                                <div class="noto font16 weight700 m-tb10">2. 등록된 관리자</div>
                            </div>
                            <form method="post" action="#">
                                <div class="list">
                                    <div class="flex m-b5" style="height: 20px; line-height: 20px;">
                                        <div class="noto font16 weight700">※전체 관리자</div>
                                        <div class="noto font14 m-lr20" >등록된 관리자 : 3 명</div>
                                    </div>
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                         <tr class="center noto font14 bg-gray">
                                             <td class="td-5">No</td>
                                             <td class="td-10">아이디</td>
                                             <td class="td-10">직급</td>
                                             <td class="td-30">이름</td>
                                             <td class="td-25">관리 권한</td>
                                             <td class="td-20">관리</td>
                                         </tr>
                                         <tr class="center noto font14">
                                             <td>1</td>
                                             <td>admin</td>
                                             <td>과장</td>
                                             <td>박그린</td>
                                             <td>전체 관리자</td>
                                             <td >
                                                 <button type="button" class="depart-btn m-lr5">수정</button>
                                                 <button type="button" class="depart-btn m-lr5">삭제</button>
                                             </td>
                                         </tr>
                                    </table>
                                </div>
                            </form>

                            <form method="post" action="#">
                                <div class="list">
                                    <div class="flex m-b5" style="height: 20px; line-height: 20px;">
                                        <div class="noto font16 weight700">※회사메뉴 관리자</div>
                                        <div class="noto font14 m-lr20" >등록된 관리자 : 2 명</div>
                                    </div>
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                         <tr class="center noto font14 bg-gray">
                                             <td class="td-5">No</td>
                                             <td class="td-10">아이디</td>
                                             <td class="td-10">직급</td>
                                             <td class="td-30">이름</td>
                                             <td class="td-25">관리 권한</td>
                                             <td class="td-20">관리</td>
                                         </tr>
                                         <tr class="center noto font14">
                                             <td>1</td>
                                             <td>blue</td>
                                             <td>과장</td>
                                             <td>박블루</td>
                                             <td>회사메뉴 관리자 (회사정보, 사원관리)</td>
                                             <td >
                                                 <button type="button" class="depart-btn m-lr5">수정</button>
                                                 <button type="button" class="depart-btn m-lr5">삭제</button>
                                             </td>
                                         </tr>
                                    </table>
                                </div>
                            </form>

                            <form method="post" action="#">
                                <div class="list">
                                    <div class="flex m-b5" style="height: 20px; line-height: 20px;">
                                        <div class="noto font16 weight700">※부서메뉴 관리자</div>
                                        <div class="noto font14 m-lr20" >등록된 관리자 : 4 명</div>
                                    </div>
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                        <tr class="center noto font14 bg-gray">
                                            <td class="td-5">No</td>
                                            <td class="td-10">아이디</td>
                                            <td class="td-10">직급</td>
                                            <td class="td-30">이름</td>
                                            <td class="td-25">관리 권한</td>
                                            <td class="td-20">관리</td>
                                        </tr>
                                        <tr class="center noto font14">
                                            <td>1</td>
                                            <td>blue</td>
                                            <td>과장</td>
                                            <td>박블루</td>
                                            <td>부서메뉴 관리자 (인사부)</td>
                                            <td >
                                                <button type="button" class="depart-btn m-lr5">수정</button>
                                                <button type="button" class="depart-btn m-lr5">삭제</button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
<script>
/* popup 버튼 클릭시 모달창 오픈 토글*/
$(function(){
    $(".popup").click(function(){
        $(".modal-wrapper").toggleClass("open");
    });
});
/*/popup 버튼 클릭시 모달창 오픈 토글*/
</script>
</html>