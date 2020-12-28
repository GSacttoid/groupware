<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

    .board-wrap tr:first-child{
        background-color: #6f809a;
        color: #fff;
    }
    .tr-even{
        background-color: #eff3f9;
    }
</style>
<body>
                <div class="main-wrap noto font14" style="width:100%">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-book m-lr5"></i>회사 공지사항</h3>
                        </div>
                        <hr />

                        <div class="" style="display: block;">
                            <div class="search-wrap flex flex-justify m-b5">
                                <div class="m-b5">
                                    <span class="btn-cancel" style="border: 1px solid #474747;">전체 게시물 수 40 개</span>
                                </div>
                                
                                <div class="flex flex-justify">
                                    <form method="post" action="grp_company_notice.html">
                                        <select class="" name="searchOpt">
                                            <option value="">-- 검색구분 --</option>
                                            <option value="subject">제목</option>
                                            <option value="writer">작성자</option>
                                        </select>
                                        <input type="text" name="words" required style="margin-left: -2px;"/>
                                        <button type="submit" class="btn-off" style="margin-left: -2px;">게시글 검색</button>
                                        <button type="button" class="btn-on" onClick="location.href='${pageContext.request.contextPath}/admin/com_notice_insert'">게시글 작성</button>
                                    </form>
                                </div>
                            </div>

                            <div class="board-wrap" style="width: 100%;">
                                <table style="width: 100%;">
                                    <tr class="center tr-color font14 weight700">
                                        <td class="td-5">번호</td>
                                        <td class="td-5">분류</td>
                                        <td class="td-55">게시물 제목</td>
                                        <td class="td-10">작성자</td>
                                        <td class="td-5">조회</td>
                                        <td class="td-10">날짜</td>
                                        <td class="td-10">관리</td>
                                    </tr>
                                    <tr class="center font14">
                                        <td>40</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/20 - 창립 100주년 행사 안내</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.09</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>

                                    <tr class="center font14">
                                        <td>39</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/16 - 승진자 명단</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.06</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>
                                    </tr>

                                    <tr class="center font14">
                                        <td>38</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/20 - 창립 100주년 행사 안내</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.09</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>

                                    <tr class="center font14">
                                        <td>37</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/16 - 승진자 명단</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.06</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>
                                    </tr>

                                    <tr class="center font14">
                                        <td>36</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/20 - 창립 100주년 행사 안내</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.09</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>

                                    <tr class="center font14">
                                        <td>35</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/16 - 승진자 명단</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.06</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>
                                    </tr>

                                    <tr class="center font14">
                                        <td>34</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/20 - 창립 100주년 행사 안내</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.09</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>

                                    <tr class="center font14">
                                        <td>33</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/16 - 승진자 명단</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.06</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>
                                    </tr>

                                    <tr class="center font14">
                                        <td>32</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/20 - 창립 100주년 행사 안내</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.09</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>

                                    <tr class="center font14">
                                        <td>31</td>
                                        <td>공지</td>
                                        <td class="left p-lr10">
                                            <a href="grp_board_view.html" class="under weight700"><i class="fas fa-bullhorn m-lr5" style="color: #fc6468;"></i>2020/09/16 - 승진자 명단</a>
                                        </td>
                                        <td>관리자</td>
                                        <td>12</td>
                                        <td>2020.09.06</td>
                                        <td>
                                            <button type="button" class="s-btn-on" onclick="location.href='grp_board_modify.html?id=10'">수정</button>
                                            <button type="button" class="s-btn-off">삭제</button>
                                        </td>
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
                    </div>
                </div>
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+3)").addClass("tr-even");
    });
</script>
</html>