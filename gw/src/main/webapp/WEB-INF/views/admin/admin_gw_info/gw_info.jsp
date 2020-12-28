<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style>
        .button{
            border: 1px solid #6d6d6d;
            color: #000;
            background-color: #c1c1c1;
            cursor: pointer;
        }
    </style>
<body>
    <!-- modal layer -->
    <div class="modal-wrapper">
        <div class="modal noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h2><i class="fas fa-info-circle"></i>그룹웨어 서비스 추가하기</h2>
                </div>
                <hr />
                <form method="post" action="#">
                    <table class="p10" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                        <div class="m-tb5 noto font16 weight700">※사용중인 그룹웨어 서비스</div>
                        <tr>
                            <td style="width: 20%; height:35px; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">도메인 명</td>
                            <td style="width: 80%; padding: 5px 10px;">gw.greenart.kr</td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height:35px; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 개설일</td>
                            <td style="width: 80%; padding: 5px 10px;">2009/04/02</td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">그룹웨어 이용 만료일</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">2020/12/15까지</p>
                                <select class="sel-135">
                                    <option>--- 연장기간 선택 ---</option>
                                    <option> 1년 추가 </option>
                                    <option> 2년 추가 </option>
                                    <option> 3년 추가 </option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">최대 사용자</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">150명</p>
                                <select class="sel-135">
                                    <option>--- 추가인원 선택 ---</option>
                                    <option> 10명 추가 </option>
                                    <option> 50명 추가 </option>
                                    <option> 100명 추가 </option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">총 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">3000 MB</p>
                                <select class="sel-135">
                                    <option>--- 추가용량 선택 ---</option>
                                    <option> 500 MB 추가 </option>
                                    <option> 1000 MB 추가 </option>
                                    <option> 2000 MB 추가 </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                        <div class="m-tb5 noto font16 weight700">※사용중인 할당용량 변경하기</div>
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">메일 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">1000 MB</p>
                                <select class="sel-135">
                                    <option>--- 할당용량 선택 ---</option>
                                    <option> 500 MB </option>
                                    <option> 1000 MB </option>
                                    <option> 1500 MB </option>
                                    <option> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
    
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">웹하드 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">1000 MB</p>
                                <select class="sel-135">
                                    <option>--- 할당용량 선택 ---</option>
                                        <option> 500 MB </option>
                                        <option> 1000 MB </option>
                                        <option> 1500 MB </option>
                                        <option> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
                                
                        <tr>
                            <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 10px 0;">그룹웨어 사용 용량</td>
                            <td style="width: 100%; display: flex; padding: 5px 10px; line-height: 35px;">
                                <p style="margin-right: 20px;">1000 MB</p>
                                <select class="sel-135">
                                    <option>--- 할당용량 선택 ---</option>
                                    <option> 500 MB </option>
                                    <option> 1000 MB </option>
                                    <option> 1500 MB </option>
                                    <option> 2000 MB </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center m-t10">
                        <button type="submit" class="btn-on">저장</button>
                        <button type="reset" class="btn-off">새로고침</button>
                        <button type="button" class="popup btn-off">창 닫기</button>
                    </div>
                </form>
            </div>  
        </div>
    </div>
    <!-- //modal layer -->

    <div class="total-wrap">
        
                <div class="main-wrap noto font14" style="width:100%;">
                    
                    <div class="p20">
                        <div class="notice-title">
                            <h3><i class="fas fa-info-circle"></i> 그룹웨어 사용정보</h3>
                        </div>
                        <hr />
                        <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                            <tr>
                                <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">도메인 명</td>
                                <td style="width: 80%; font-weight: 500; padding: 5px 10px;">gw.greenart.kr</td>
                            </tr>
                            <tr>
                                <td style="width: 20%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 개설일</td>
                                <td style="width: 80%; font-weight: 500; padding: 5px 10px;">2009/04/02</td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 이용정보</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;">2009/04/02 ~ 2020/12/15</p>
                                    <span class="button noto font14 p-lr10 weight300 popup">사용기간 연장하기</span>
                                </td>
                            </tr>
                        </table>

                        <div class="notice-title">
                            <h3><i class="fas fa-info-circle"></i> 그룹웨어 사용자 정보</h3>
                        </div>
                        <hr />
                        <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">가입된 회원수</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;"><span>125</span> 명</p>
                                    <a class="button  noto font14 p-lr10 weight300" href="${pageContext.request.contextPath}/gw_employee_list">가입자 리스트</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">가입 대기자 수</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;"><span style="color: #f00;">3</span> 명</p>
                                    <a class="button  noto font14 p-lr10 weight300" href="${pageContext.request.contextPath}/gw_employee_waiting">가입대기 리스트</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">퇴사처리된 회원수</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;"><span>1</span> 명</p>
                                    <a class="button  noto font14 p-lr10 weight300" href="${pageContext.request.contextPath}/gw_employee_resign">퇴사자 리스트</a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">최대 사용자</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;"><span>150</span> 명</p>
                                    <span class="button noto font14 p-lr10 weight300 popup">최대 사용자 변경하기</span>
                                </td>
                            </tr>
                        </table>
                        <div class="notice-title">
                            <h3><i class="fas fa-info-circle"></i> 그룹웨어 이용용량정보</h3>
                        </div>
                        <hr />
                        <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">총 용량</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;">1000 / 3000 MB [ 33% 사용중 ]</p>
                                    <span class="button noto font14 p-lr10 weight300 popup">총 용량 변경 / 할당 용량 변경</span>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">메일 용량</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;">500 / 1000 MB [ 50% 사용중 ]</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">웹하드 용량</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;">300 / 1000 MB [ 30% 사용중 ]</p>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20%; height: 100%; text-align: center; background-color: #e2e2e2; font-weight: 700; padding: 5px 0;">그룹웨어 용량</td>
                                <td style="width: 100%; display: flex; font-weight: 500; padding: 5px 10px;">
                                    <p style="margin-right: 20px;">200 / 1000 MB [ 20% 사용중 ]</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
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