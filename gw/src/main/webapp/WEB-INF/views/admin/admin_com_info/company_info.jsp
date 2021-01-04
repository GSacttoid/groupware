<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
/* table tr 높이 */
tr {
    height:40px;
}

/* table 선색 */
td {
    border:1px solid #d5d5d5;
}
</style>

<body>
     <div class="main-wrap noto font14" style="width:100%;">
         
         <div class="p20">
             <div class="notice-title">
                 <h3><i class="fas fa-info-circle m-lr5"></i>회사 로고 등록</h3>
             </div>
             <hr />
             <form method="post" action="#">
                 <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                     <tr style="height:150px;">
                         <td style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 5px;">
                             <span class="">회사 로고 이미지 등록</span>
                         </td>
                         <td style="width: 80%; padding-left: 20px; line-height: 2;">
                             <span class="">※최적 사이즈: 216 × 61필셀 (확장자: jpg, jpeg, gif, png)</span><br />
                             <span class="">※등록된 로고이미지는 그룹웨어 맨 위 상단에 위치합니다.</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-10 center weight700 noto bg-gray">첨부파일</td>
                         <td colspan="3" class="td-90 p-lr3">
                             <input type="file" class="input-100" />
                         </td>
                     </tr>
                 </table>

                 <table style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                     <tr style="height:150px;">
                         <td style="width: 20%; height: 100px; text-align: center; background-color: #e2e2e2; padding: 5px;">
                             <span class="">문서 상단 로고 이미지 등록</span>
                         </td>
                         <td style="width: 80%; padding-left: 20px; line-height: 2;">
                             <span class="">※최적 사이즈: 110 × 45필셀 (확장자: jpg, jpeg, gif, png)</span><br />
                             <span class="">※등록된 타이틀 이미지는 전자결재 문서 상단에 위치합니다.</span>
                         </td>
                     </tr>
                     <tr>
                         <td class="td-10 center weight700 noto bg-gray">첨부파일</td>
                         <td colspan="3" class="td-90 p-lr3">
                             <input type="file" class="input-100" />
                         </td>
                     </tr>
                 </table>
                 <div class="btn-grp center m-t10">
                     <button type="submit" class="btn-on">저장</button>
                     <button type="reset" class="btn-off">취소</button>
                 </div>
             </form>
             <br />
             <div class="notice-title">
                 <h3><i class="fas fa-info-circle m-lr5"></i>회사 정보 등록</h3>
             </div>
             <hr />
             <form method="post" action="#">
                 <table style="width:100%; border: 1px solid #ccc; margin-bottom: 10px;">
                     <tr>
                         <td class="center weight700 p-tb5" style="width:20%; background-color: #e2e2e2;">회사명</td>
                         <td class="td-30 p-lr3">
                             <input type="text" class="input-100 " />
                         </td>
                         <td class="td-20 center weight700 p-tb5" style="background-color: #e2e2e2;">사업자 등록번호</td>
                         <td class="td-30 p-lr3">
                             <input type="text" class="input-100" />
                         </td>
                     </tr>
                     <tr>
                         <td class="center weight700 p-tb5" style="background-color: #e2e2e2;">대표자명</td>
                         <td class=" p-lr3">
                             <input type="text" class="input-100" />
                         </td>
                         <td class="td-20 center weight700 p-tb5" style="background-color: #e2e2e2;">사업자 등록증 등록</td>
                         <td colspan="3" class=" p-lr3">
                             <input type="file" class="input-100" />
                         </td>
                     </tr>
                     <tr>
                         <td class="center weight700 p-tb5" style="background-color: #e2e2e2;">회사 전화번호</td>
                         <td class=" p-lr3">
                             <input type="text" class="input-100" />
                         </td>
                         <td class="center weight700 p-tb5" style="background-color: #e2e2e2;">회사 FAX번호</td>
                         <td class=" p-lr3">
                             <input type="text" class="input-100" />
                         </td>
                     </tr>
                     <tr>
                         <td class="center weight700 p-tb5" style="background-color: #e2e2e2;">회사 주소</td>
                         <td colspan="3" style="width: 100%; line-height: 2.8;" class=" p-lr3">
                             <input type="text" class="input-135" /><button type="button" class="input-95" style="margin-left:3px; background-color: #d5d5d5;">우편번호 검색</button><br />
                             <input type="text" class="input-100" />
                         </td>
                     </tr>
                 </table>
                 <div class="btn-grp center m-t10">
                     <button type="submit" class="btn-on">저장</button>
                     <button type="reset" class="btn-off">취소</button>
                 </div>
             </form>
         </div>
     </div>
</body>

</html>