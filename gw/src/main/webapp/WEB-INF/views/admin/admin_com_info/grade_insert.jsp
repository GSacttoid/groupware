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
</style>
<body>
                <div class="main-wrap noto font14" style="width:100%;">
                    
                    <div class="p20">
                        <div class="notice-title font16 noto">
                            <h3><i class="fas fa-info-circle m-lr5"></i>직급 등록</h3>
                        </div>
                        <hr />
                        
                            <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 5px;">
                                <tr>
                                    <td style="width: 20%; line-height: 1.8; padding: 10px;">
                                        <div class="noto font14">
                                            <ul>
                                                <li>회사의 직급을 등록하거나 수정하실 수 있습니다.</li>
                                                <li>위 아래 버튼을 눌러 위치를 변경하실 수 있습니다.</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        <form method="post" action="#">
                            <div class="p10" style="border: 1px solid #c1c1c1;">
                            	<div class="noto font16 weight700 m-tb10">1. 직급 만들기</div>
                                <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                    <tr class="m-t10">
                                        <td class="font14" style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">직급 등록하기</td>
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
                                    <div class="noto font16 weight700 m-tb10">2. 등록된 직급 리스트</div>
                                    <div class="noto font14 m-b10">사용중인 직급 : 8 개</div>
                                    <div class="btn-grp m-b10">
                                        <button class="depart-btn" type="button" >전체 선택</button>
                                        <button class="depart-btn" type="button" style="background-color: #3f51b5;">선택 수정</button>
                                        <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                                    </div>
                                </div>
                                <div class="">
                                   	<table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                         <tr class="center noto font14 bg-gray">
                                             <td class="td-5">선택</td>
                                             <td class="td-5">No</td>
                                             <td class="td-50">직급명</td>
                                             <td class="td-15">권한설정</td>
                                             <td class="td-25">관리 [위치 변경]</td>
                                             <td class="td-10">생성일</td>
                                         </tr>
                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>1</td>
                                             <td>대표이사</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>2</td>
                                             <td>전무이사</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>3</td>
                                             <td>이사</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>4</td>
                                             <td>부장</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>5</td>
                                             <td>팀장</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>6</td>
                                             <td>과장</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>7</td>
                                             <td>대리</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>
                                                 <input type="checkbox"/>
                                             </td>
                                             <td>8</td>
                                             <td>사원</td>
                                             <td>
                                                 <select class="sel-135">
                                                     <option class="" value="">--권한등급--</option>
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
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-up" style="font-size: 22px;"></i></button>
                                                 <button type="button" class="depart-btn m-lr5"><i class="fas fa-angle-down" style="font-size: 22px;"></i></button>
                                             </td>
                                             <td>2020/09/16</td>
                                         </tr>
                                    </table>
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