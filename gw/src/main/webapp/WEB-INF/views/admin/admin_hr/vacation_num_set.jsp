<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
table {
	border-collapse: collapse;
}
tr{
    height: 40px;
    border: 1px solid #d5d5d5;
}
.list tr:first-child{
    background-color: #6f809a;
    color: #fff;
}
.tr-even{
    background-color: #eff3f9;
} 
td{
    border: 1px solid #d5d5d5;
}
input[type="radio"] {
    width:15px;
    height:15px;
}

.list-btn {
    width: 170px;
    height: 25px;
    text-align: center;
    border-radius: 2px;
    background-color: #c1c1c1;
    border: 1px solid transparent;
    color: #000;
    font-size: 14px;
    cursor: pointer;
    font-weight: 700;
}
.list-btn:hover{
    background-color: #3f51b5;
    color: #fff;
}
</style>
<body>
     <div class="main-wrap noto font14" style="width:100%;">
         
         <div class="p10">
             <div class="notice-title font16 noto">
                 <h3><i class="fas fa-info-circle m-lr5"></i>휴가일수 설정</h3>
             </div>
             <hr />
             <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 5px;">
                 <tr>
                     <td style="width: 20%; line-height: 1.8; padding: 10px;">
                         <div class="noto font14">
                             <ul>
                                 <li>직원별로 휴가일수를 관리할수 있으며, 휴가일수를 설정하면 직원들의 휴가 사용현황을 집계 관리할 수 있다.</li>
                             </ul>
                         </div>
                     </td>
                 </tr>
             </table>
             <br />
             <div class="flex flex-justify">
                 <div class="td-50 m-lr5" style="width:50%;">
                     <form method="post" action="#">
                         <div class="p10" style="border: 1px solid #c1c1c1;">
                             <div class="">
                                 <div class="noto font16 weight700 m-tb10">1. 휴가일수 책정 방법</div>
                             </div>
                             <div class="">
                                 <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                             <tr class="center noto font14 bg-gray">
                                                 <td class="td-10">선택</td>                                             
                                                 <td class="td-10">현재 설정</td>
                                                 <td class="td-50">휴가일수 책정 방법</td>
                                             </tr>

                                             <tr class="center noto font14">
                                                 <td>
                                                     <input type="radio" name="commute-ip" />
                                                 </td>
                                                 <td>-</td>
                                                 <td>근무일수 기준으로 휴가일수 계산하는 방법</td>
                                             </tr>

                                             <tr class="center noto font14">
                                                 <td>
                                                     <input type="radio" name="commute-ip" checked/>
                                                 </td>
                                                 <td><i class="fas fa-check" style="font-size: 20px; color: #f00;"></i></td>
                                                 <td>직급 기준으로 휴가일수 계산하는 방법</td>
                                             </tr>
                                 </table>
                             </div>
                             <div class="btn-grp center m-t10">
                                 <button type="submit" class="btn-on">저장</button>
                                 <button type="button" class="btn-off">취소</button>
                             </div>
                         </div>
                     </form>
                     <form method="post" action="#">
                         <div class="p10 m-t10" style="border: 1px solid #c1c1c1;">
                             <div class="">
                                 <div class="noto font16 weight700 m-tb10">2. 직급별 휴가일수 설정</div>
                             </div>
                             <div class="">
                                 <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                             <tr class="center noto font14 bg-gray">
                                                 <td class="td-10">no</td>                                             
                                                 <td class="td-30">직급</td>
                                                 <td class="td-60">휴가일수</td>
                                             </tr>

                                             <tr class="center noto font14">
                                                 <td>1</td>
                                                 <td>대표이사</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>2</td>
                                                 <td>전무이사</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>3</td>
                                                 <td>이사</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>4</td>
                                                 <td>부장</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>5</td>
                                                 <td>팀장</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>6</td>
                                                 <td>과장</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>7</td>
                                                 <td>대리</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>
                                             <tr class="center noto font14">
                                                 <td>8</td>
                                                 <td>사원</td>
                                                 <td>
                                                     <input type="text" class="input-135" name="" />
                                                     <span class="font14 noto" style="line-height: 35px;">일</span>
                                                 </td>
                                             </tr>

                                 </table>
                             </div>
                             <div class="btn-grp center m-t10">
                                 <button type="submit" class="btn-on">저장</button>
                                 <button type="reset" class="btn-off">취소</button>
                             </div>
                         </div>
                     </form>
                 </div>
                 <div class="m-lr5" style="width:50%;">
                     <div class="p10" style="border: 1px solid #c1c1c1;">
                         <div class="">
                             <div class="noto font16 weight700 m-tb10">3. 개인별 휴가일수 현황</div>
                         </div>
                         <div class="">
                             <div class="m-b5">
                                 <form method="post" action="#">
                                     <select class="sel-135" name="" style="margin-left: 2px;">
                                         <option value="">-- 부서 선택 --</option>
                                         <option value="plan">기획부</option>
                                         <option value="hr">인사부</option>
                                         <option value="affairs">총무부</option>
                                         <option value="rnd">개발부</option>
                                         <option value="computing">전산부</option>
                                         <option value="sales">영업부</option>
                                     </select>
                                     <input type="text" name="words" style="margin-left: -2px;"/>
                                     <button type="submit" class="btn-on" style="margin-left: -2px;">검색</button>
                                 </form>
                             </div>
                             <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                         <tr class="center noto font14 bg-gray">
                                             <td class="td-15">아이디</td>
                                             <td class="td-10">부서</td>
                                             <td class="td-15">이름</td>
                                             <td class="td-15">총 휴가일수</td>
                                             <td class="td-15">잔여 휴가일수</td>
                                             <td class="td-30">개인 휴가일수 현황</td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>

                                         <tr class="center noto font14">
                                             <td>Green</td>
                                             <td>기획부</td>
                                             <td>홍길동</td>
                                             <td>16</td>
                                             <td>15</td>
                                             <td>
                                                 <button type="button" class="list-btn m-lr5">휴가현황 상세</button>
                                             </td>
                                         </tr>
                             </table>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
</body>

</html>