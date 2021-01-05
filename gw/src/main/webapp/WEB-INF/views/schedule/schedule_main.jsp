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
                <%@ include file="/WEB-INF/views/schedule/SCHEDULE_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/schedule/SCHEDULE_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div id="main-wrap" class="main-wrap noto font14" style="width:100%; height:100%;">
                    <div id='calendar' class="calendar"></div>
                </div>
            </div>
        </main>
    </div>
</body>

<script src='${pageContext.request.contextPath}/calendar/core/main.js'></script>
<script src='${pageContext.request.contextPath}/calendar/core/locales/ko.js'></script>
<script src='${pageContext.request.contextPath}/calendar/interaction/main.js'></script>
<script src='${pageContext.request.contextPath}/calendar/daygrid/main.js'></script>

<script>
    function getSchedule(resData) {
        var calendarEl = document.getElementById('#calendar');

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
            events: resData
        });

        calendar.render();
    }
</script>
</html>