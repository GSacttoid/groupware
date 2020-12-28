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

</style>
<body>
<div class="main-wrap noto font14" style="width:100%;">
    
    <div class="p20">
        <div class="notice-title font16 noto">
            <h3><i class="fas fa-info-circle m-lr5"></i>부서 등록</h3>
        </div>
        <hr />
        
            <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                <tr>
                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
                        <div class="noto font14">
                            <ul>
                                <li>회사의 부서를 등록하는 메뉴입니다.</li>
                                <li>부서를 만들면 자동으로 부서메뉴도 생성됩니다.</li>
                                <li>하위부서설정에 리스트를 클릭하면 하위부서 설정 창이 뜨고 부서명 입력 후 등록 하면됩니다.</li>
                            </ul>
                        </div>
                    </td>
                </tr>
            </table>
            <br />
        <form method="post" action="#">
            <div class="p10" style="border: 1px solid #c1c1c1;">
            	<div class="noto font16 weight700 m-tb10">1. 부서 만들기</div>
                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;" >
                    <tr class="m-t10">
                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">부서 등록하기</td>
                        <td>
                            <input type="text" class="input-135" style="margin-left: 2px;" />
                            <button type="submit" class="btn-on" >등록</button>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
        <br />

        <form method="post" action="#">
            <div class="p10" style="border: 1px solid #c1c1c1;">
                <div class="">
                    <div class="noto font16 weight700 m-tb10">2. 등록된 부서 리스트</div>
                    <div class="noto font14 m-b10">사용중인 부서 : 6 개</div>
                    <div class="btn-grp m-b10">
                        <button class="depart-btn" type="button" >전체 선택</button>
                        <button class="depart-btn" type="button" style="background-color: #3f51b5;">선택 수정</button>
                        <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                    </div>
                </div>
                <div class="flex flex-justify table">
                	<div class="w-100">
                    	<table style="width:99%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                              <tr class="center noto font14 bg-gray" style="height: 40px; border: 1px solid #c1c1c1;">
                                  <td style="border: 1px solid #c1c1c1; width:10%">선택</td>
                                  <td style="border: 1px solid #c1c1c1;">부서명</td>
                                  <td style="border: 1px solid #c1c1c1; width:30%">하위부서 설정</td>
                                  <td style="border: 1px solid #c1c1c1; width:20%">생성일</td>
                              </tr>
                              <tr class="center noto font14">
                                  <td>
                                      <input type="checkbox"/>
                                  </td>
                                  <td>기획부</td>
                                  <td >
                                      <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                  </td>
                                  <td>2020/09/16</td>
                              </tr>
                              <tr class="center noto font14">
                                  <td>
                                      <input type="checkbox"/>
                                  </td>
                                  <td>인사부</td>
                                  <td >
                                      <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                  </td>
                                  <td>2020/09/16</td>
                              </tr>
                              <tr class="center noto font14">
                                  <td>
                                      <input type="checkbox"/>
                                  </td>
                                  <td>총무부</td>
                                  <td >
                                      <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                  </td>
                                  <td>2020/09/16</td>
                              </tr>
                    	</table>
                   	</div>
                   	<div class="w-100">
                    	<table style="width:99%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                            <tr class="center noto font14 bg-gray">
                                <td class="td-10">선택</td>
                                <td class="">부서명</td>
                                <td class="td-20">하위부서 설정</td>
                                <td class="td-20">생성일</td>
                            </tr>
                            <tr class="center noto font14">
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td>개발부</td>
                                <td >
                                    <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                </td>
                                <td>2020/09/16</td>
                            </tr>
                            <tr class="center noto font14">
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td>전산부</td>
                                <td >
                                    <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                </td>
                                <td>2020/09/16</td>
                            </tr>
                            <tr class="center noto font14">
                                <td>
                                    <input type="checkbox"/>
                                </td>
                                <td>영업부</td>
                                <td >
                                    <input type="button" class="depart-btn m-lr5" value="리스트"/>
                                </td>
                                <td>2020/09/16</td>
                            </tr>
                 	</table>
                	</div>
             </div>
                <div class="btn-grp center m-t10">
                    <button type="submit" class="btn-on">저장</button>
                    <button type="button" class="btn-off">취소</button>
                </div>
            </div>
        </form>
    </div>
</div>

</body>

</html>