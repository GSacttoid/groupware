<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    .member-list tr:first-child{
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
                            <h3><i class="fas fa-info-circle m-lr5"></i>사원 관리</h3>
                        </div>
                        <hr />
                            <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 5px;">
                                <tr>
                                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
                                        <div class="noto font14">
                                            <ul>
                                                <li>관리자의 승인완료를 통해 등록된 직원 리스트입니다.</li>
                                                <li>관리자는 일반회원으로 변경한 뒤에 삭제나 퇴사처리를 하실 수 있습니다.</li>
                                                <li>삭제된 회원은 복구가 불가능하지만, 퇴사처리된 회원은 다시 일반회원으로 변경되며 기본데이터들은 삭제되지 않습니다.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />

                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                                <div class="">
                                    <div class="flex m-b10" >
                                        <div class="noto font16 weight700">1. 등록된 사원 리스트</div>
                                        <div class="m-lr20">
                                            <button type="button" class="list-btn m-lr5" onclick="location.href='${pageContext.request.contextPath}/admin/gw_employee_waiting'">가입대기 리스트</button>
                                            <button type="button" class="list-btn m-lr5" onclick="location.href='${pageContext.request.contextPath}/admin/gw_employee_resign'">퇴사자 리스트</button>
                                            <button type="button" class="excel-btn m-lr5"><i class="far fa-file-excel m-lr5"></i>엑셀 파일로 저장 </button>
                                        </div>
                                    </div>
                                    <div class="noto font14 m-b10">등록중인 사원 : 125 명</div>
                                    <div class="flex flex-justify">
                                        <div class="">
                                            <div class="btn-grp m-b10">
                                                <button class="depart-btn" type="button" >전체 선택</button>
                                                <button class="depart-btn" type="button" style="background-color: #3f51b5;">선택 수정</button>
                                                <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                                            </div>
                                        </div>
                                        <div class="">
                                            <select class="" name="searchOpt">
                                                <option value="">--검색 조건--</option>
                                                <option value="name">이름</option>
                                                <option value="grade">직급</option>
                                            </select>
                                            <input type="text" name="words" required style="margin-left: -2px;"/>
                                            <button type="submit" class="btn-off" style="margin-left: -2px;">직원 검색</button>
                                            <button type="button" class="btn-on" onClick="location.href='${pageContext.request.contextPath}/admin/gw_employee_register'">사원 등록</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="member-list" style="margin-top: 10px;">
                                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                        <tr class="center noto font14 bg-gray">
                                            <td class="td-5">선택</td>
                                            <td class="td-5">No</td>
                                            <td class="td-10">아이디</td>
                                            <td class="td-10">부서</td>
                                            <td class="td-10">이름</td>
                                            <td class="td-10">직급</td>
                                            <td class="td-10">전화번호</td>
                                            <td class="td-10">사내번호</td>
                                            <td class="td-10">권한설정</td>
                                            <td class="td-10">관리</td>
                                            <td class="td-10">입사일</td>
                                        </tr>

                                        <tr class="center noto font14">
                                            <td>
                                                <input type="checkbox"/>
                                            </td>
                                            <td>120</td>
                                            <td>admin</td>
                                            <td>박그린</td>
                                            <td>전산부</td>
                                            <td>과장</td>
                                            <td>010-1234-5678</td>
                                            <td>1212</td>
                                            <td>
                                                <select class="sel-135">
                                                    <option class="" value="">--기본: 직급 권한--</option>
                                                    <option class="" value="">9등급</option>
                                                    <option class="" value="">8등급</option>
                                                    <option class="" value="">7등급</option>
                                                    <option class="" value="">6등급</option>
                                                    <option class="" value="">5등급</option>
                                                    <option class="" value="">4등급</option>
                                                    <option class="" value="">3등급</option>
                                                    <option class="" value="">2등급</option>
                                                    <option class="" value="">1등급</option>
                                                </select>
                                            </td>
                                            <td >
                                                <button type="button" class="depart-btn m-lr5">퇴사</button>
                                            </td>
                                            <td>2020/09/16</td>
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
</body>
<script>
    $(function () {
        $("tr:nth-child(2n+3)").addClass("tr-even");
    });
</script>
</html>