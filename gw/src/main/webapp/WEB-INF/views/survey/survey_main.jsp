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
                <%@ include file="/WEB-INF/views/survey/SURVEY_MENU.jsp" %>
                <!-- /INCLUDE MENU (ALL) -->
                <div class="detail-wrap">
                	<!-- INCLUDE MENU_DETAIL (ADMIN) -->
                    <%@ include file="/WEB-INF/views/survey/SURVEY_MENU_DETAIL.jsp" %>
                    <!-- /INCLUDE MENU_DETAIL (ADMIN) -->
                </div>
                <div class="main-wrap noto font14" style="width:100%">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-book m-lr5"></i>설문조사</h3>
                        </div>
                        <hr />
                        <div class="flex">
                            <div class="noto font16 weight700 m-lr10 m-b5">1. 진행중인 설문 리스트</div>
                            <button type="button" class="list-btn m-lr5" onclick="location.href='grp_survey_ongoing_list.html'">진행중인 설문 전체보기</button>
                        </div>
        
                        <div class="page-survey-view flex m-b10">

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-red">설문상태: 진행중</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 under bg-gray">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-red">설문상태: 진행중</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 under bg-gray">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-red">설문상태: 진행중</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 under bg-gray">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-red">설문상태: 진행중</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 under bg-gray">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-red">설문상태: 진행중</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 under bg-gray">결과보기</div>
                            </div>
                        </div>
                        <hr />
                        <div class="flex" style="margin-top: 10px;">
                            <div class="noto font16 weight700 m-lr10 m-b5">2. 종료된 설문 리스트</div>
                            <button type="button" class="list-btn m-lr5" onclick="location.href='grp_survey_closed_list.html'">종료된 설문 전체보기</button>
                        </div>
        
                        <div class="page-survey-view flex m-b10">

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-cancel">설문상태: 종료</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 f6 under bg-blue">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-cancel">설문상태: 종료</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 f6 under bg-blue">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-cancel">설문상태: 종료</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 f6 under bg-blue">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-cancel">설문상태: 종료</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 f6 under bg-blue">결과보기</div>
                            </div>

                            <div class="page-survey-wrap td-20 m-lr5" style="border: 1px solid #e7e7e7;">
                                <div class="survey p20 noto" style="width: 100%; line-height: 1.8;">
                                    <span class="btn-cancel">설문상태: 종료</span>
                                    <h2 class="m-t10">연차 사용 유효기간에 대한 설문조사</h2>
                                    <p>2020-09-14~2020-09-16</p>
                                    <p>작성자: 홍길동</p>
                                    <p>설문결과: 공개</p>
                                </div>
                                <div class="center noto font14 weight700 p10 f6 under bg-blue">결과보기</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

</html>