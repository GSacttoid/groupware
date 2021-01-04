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
tr:first-child{
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
.depart-btn {
    display: inline-block;
    width: 65px;
    height: 25px;
    text-align: center;
    border-radius: 2px;
    background-color: #c1c1c1;
    border: 1px solid transparent;
    color: #fff;
    font-size: 12px;
    cursor: pointer;
    font-weight: 700;
}
.depart-btn:hover{
    background-color: #3f51b5;
    color: #fff;
}
</style>
<body>
     <div class="main-wrap noto font14" style="width:100%;">
         
         <div class="p20">
             <div class="notice-title font16 noto">
                 <h3><i class="fas fa-info-circle m-lr5"></i>휴가 종류 설정</h3>
             </div>
             <hr />

             <form method="post" action="#">
                 <div class="p10" style="border: 1px solid #c1c1c1;">
                     <div class="">
                         <div class="noto font16 weight700 m-tb10">1. 휴가 종류별 설정</div>
                     </div>
                     <div class="">
                     	<div class="btn-grp m-b10">
                             <button class="depart-btn" type="button" >전체 선택</button>
                             <button class="depart-btn" type="button" style="background-color: #fc6468;">선택 삭제</button>
                         </div>
                         <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14">
                                     <td class="td-10">선택</td>
                                     <td class="td-30">휴가명</td>                                          
                                     <td class="td-30">현재 설정</td>
                                     <td class="td-30">차감 설정</td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">정기 휴가계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">결근 (병가)계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">보건 휴가계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">조퇴계</td>
                                     <td class="" style="color: #000;">휴가 차감 안함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">경조사 휴가계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">교육/훈련계</td>
                                     <td class="" style="color: #000;">휴가 차감 안함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">출산 휴가계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">사유서계</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">연차</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>
                                         <input type="checkbox"/>
                                     </td>
                                     <td class="">월차</td>
                                     <td class="" style="color: #f00;">휴가 차감함</td>
                                     <td >
                                         <select >
                                             <option>--- 선택 ---</option>
                                             <option style="color: #f00;">휴가 차감함</option>
                                             <option>휴가 차감 안함</option>
                                         </select>
                                     </td>
                                 </tr>
                         </table>
                     </div>
                     <div class="btn-grp center m-t10">
                         <button type="button" class="btn-on">저장</button>
                         <button type="reset" class="btn-off">취소</button>
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