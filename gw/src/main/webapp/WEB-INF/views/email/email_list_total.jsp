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
	height:30px;
}
td{
	border:1px solid #d5d5d5;
}
tr:first-child{
    background-color: #6f809a;
    color: #fff;
}
.tr-even{
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
                <%@ include file="/WEB-INF/views/email/EMAIL_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/email/EMAIL_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div class="main-wrap noto font14" style="width:100%">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-mail-bulk"></i> 전체메일</h3>
                        </div>
                        <hr />
                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                                <div class="">
                                    <div class="flex flex-justify">
                                        <div class="">
                                            <div class="btn-grp">
                                                <button class="btn-on" type="button" >전체 선택</button>
                                                <button class="btn-off" type="button" >읽음</button>
                                                <button class="btn-off" type="button" style="background-color: #fc6468; color:#fff;"><i class="far fa-trash-alt"></i> 삭제</button>
                                                
                                                <button class="btn-off" type="button" style="margin-left:10px;">답장</button>
                                                <button class="btn-off" type="button" >전체답장</button>
                                                <button class="btn-off" type="button" >전달</button>
                                                
                                                <button class="btn-off" type="button" style="margin-left:10px;">이동 <i class="fas fa-caret-down"></i></button>
                                            </div>
                                        </div>
                                        <div class="">
                                            <select class="" name="searchOpt">
                                                <option value="name">이름</option>
                                                <option value="email">이메일</option>
                                                <option value="title">제목</option>
                                            </select>
                                            <input type="text" name="words" required style="margin-left: -2px;"/>
                                            <button type="submit" class="btn-on" style="margin-left: -2px;">메일 검색</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-list" style="margin-top: 10px;">
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                        <tr class="center noto font14">
                                            <td style="width:5%;">선택</td>
                                            <td style="width:5%;">즐겨찾기</td>
                                            <td style="width:10%;">구분</td>
                                            <td style="width:10%;">보낸이</td>
                                            <td style="">제목</td>
                                            <td style="width:10%;">받은 날짜</td>
                                            <td style="width:5%;">용량</td>
                                        </tr>

                                        <tr class="center noto font14">
                                            <td>
                                                <input type="checkbox"/>
                                            </td>
                                            <td><i class="far fa-star"></i><i class="fas fa-star"></i></td>
                                            <td>받은메일함</td>
                                            <td>박그린</td>
                                            <td class="left p-lr5 weight500 under" style="cursor:pointer;">연말결산 자료</td>
                                            <td>2021-01-04</td>
                                            <td>9.3 KB</td>
                                        </tr>
                                    </table>
                                </div>
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
        </main>
    </div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+3)").addClass("tr-even");
    });
</script>
</html>