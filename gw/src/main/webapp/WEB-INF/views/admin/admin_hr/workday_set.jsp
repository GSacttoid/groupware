<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
<style>
    ul>li::before {
        content: '';
        display: inline-block;
        width: 5px;
        height: 5px;
        background-color: #000;
        margin-right: 10px;
        vertical-align: middle;
        transform: rotate(45deg) translateY(-50%);
    }
	table {
	    border-collapse: collapse;
	}
	tr{
	    height: 40px;
	    border: 1px solid #c1c1c1;
	}
	td{
	    border: 1px solid #c1c1c1;
	}
	.list tr:first-child{
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
                            <h3><i class="fas fa-info-circle m-lr5"></i>근무일 설정</h3>
                        </div>
                        <hr />
                        <div class="flex flex-justify">
                            <div class="" style="width: 60%; border: 1px solid #c1c1c1; padding: 3px;">
                                <div id="calendar" class="calendar"></div>
                            </div>
                            <div class="" style="width: 40%;">
                                <div class="calendar-insert">
                                    <form method="post" action="#">
                                        <div class="p10 m-lr10" style="border: 1px solid #c1c1c1;">
                                        	<div class="noto font16 weight700 m-tb10">1. 일정 만들기</div>
                                            <table style="width:100%; border: 1px solid #c1c1c1;">
                                                <tr class="m-t10">
                                                    <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">일정 시작일</td>
                                                    <td>
                                                        <input type="text" autocomplete="off" id="startDate" class="input-135" style="margin-left: 2px;" />
                                                        <span class="" style="font-size: 26px; margin-left: 5px; color: #6d6d6d;"><i class="fas fa-calendar-alt"></i></span>
                                                    </td>
                                                </tr>
                                                <tr class="m-t10">
                                                    <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">일정 마지막일</td>
                                                    <td>
                                                        <input type="text" autocomplete="off" id="endDate" class="input-135" style="margin-left: 2px;" />
                                                        <span class="" style="font-size: 26px; margin-left: 5px; color: #6d6d6d;"><i class="fas fa-calendar-alt"></i></span>
                                                    </td>
                                                </tr>
                                                <tr class="m-t10">
                                                    <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">일정 내용</td>
                                                    <td>
                                                        <input type="text" class="input-100" style="margin-left: 2px;" />
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="btn-grp center m-t10">
                                                <button type="submit" class="btn-on">저장</button>
                                                <button type="reset" class="btn-off">새로고침</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <div class="calendar-list m-t5">
                                    <form method="post" action="#">
                                        <div class="p10 m-lr10" style="border: 1px solid #c1c1c1;">
                                            <div class="noto font16 weight700 m-tb10">2. 일정 리스트</div>
                                            <div class="m-b5">
                                                <div class="btn-grp">
                                                    <button class="depart-btn" type="button" >전체 선택</button>
                                                    <button class="depart-btn" type="button" style="background-color: #3f51b5;">선택 수정</button>
                                                    <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                                                </div>
                                            </div>
                                            <table class="list" style="width: 100%;">
                                                <tr class="center tr-color font14 weight700">
                                                    <td class="td-8">선택</td>
                                                    <td class="td-20">시작일</td>
                                                    <td class="td-20">마지막일</td>
                                                    <td class="td-22">일정내용</td>
                                                    <td class="td-20">관리</td>
                                                </tr>
            
                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>

                                                <tr class="center font14">
                                                    <td class="">
                                                        <input type="checkbox"/>
                                                    </td>
                                                    <td>2020/09/06</td>
                                                    <td>2020/09/06</td>
                                                    <td>휴일</td>
                                                    <td>
                                                        <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                                        <button type="button" class="s-btn-off">삭제</button>
                                                    </td>
                                                </tr>
                                            </table>
                                            <div class="btn-grp center m-t10">
                                                <button type="submit" class="btn-on">저장</button>
                                                <button type="reset" class="btn-off">새로고침</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
<!-- calendar -->
<script src="${pageContext.request.contextPath}/calendar/core/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/core/locales/ko.js"></script>
<script src="${pageContext.request.contextPath}/calendar/interaction/main.js"></script>
<script src="${pageContext.request.contextPath}/calendar/daygrid/main.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: ['interaction', 'dayGrid'],
            header: {
                left: 'prevYear,prev,next,nextYear today',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay'
            },
            navLinks: true,
            editable: true,
            eventLimit: true,
            locales: "ko",
            events: [{
                    title: '휴일',
                    start: '2020-09-05',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-06',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-12',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-13',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-19',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-20',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-26',
                    color: '#ff0000'
                },
                {
                    title: '휴일',
                    start: '2020-09-27',
                    color: '#ff0000'
                },
                {
                    title: '추석연휴',
                    start: '2020-09-30',
                    end: '2020-10-05',
                    color: '#ff0000'
                },
                {
                    title: '개천절',
                    start: '2020-10-03',
                    color: '#ff0000'
            }]
        });

        calendar.render();
    });
</script>
<!-- //calendar -->

<!-- calendar event -->
<script>
    $(function(){
        $("#startDate, #endDate").datepicker({
            dateFormat : 'yy-mm-dd'
        });
    });
</script>
<!-- //calendar click event -->
</html>