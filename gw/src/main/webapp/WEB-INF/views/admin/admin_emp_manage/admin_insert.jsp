<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_admin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
    <script src="https://kit.fontawesome.com/6ecca0b569.js" crossorigin="anonymous"></script>

<style>
table {
	border-collapse: collapse;
}
tr{
    height: 40px;
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

</style>
 
    <div class="">
        <div class="noto font14 weight500">
            <div class="p20">
                <div class="notice-title">
                    <h3><i class="fas fa-info-circle"></i>관리자 지정하기</h3>
                </div>
                <hr />
                <form method="post" action="#">
                    <div class="member-list" style="margin-top: 10px;">
                        <div class="flex flex-justify">
                            <div class="">

                            </div>
                            <div class="m-b5">
                                <select class="" name="searchOpt">
                                    <option value="">--검색 조건--</option>
                                    <option value="name">이름</option>
                                    <option value="grade">직급</option>
                                    <option value="buseo">부서</option>
                                </select>
                                <input type="text" name="words" required style="margin-left: -2px;"/>
                                <button type="submit" class="btn-off" style="margin-left: -2px;">직원 검색</button>
                                <button type="button" class="btn-red" onClick="window.close();">창 닫기</button>
                            </div>
                        </div>

                            <table class="list" style="width:100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
                                 <tr class="center noto font14 weight700 bg-gray">
                                     <td class="td-5">No</td>
                                     <td class="td-10">아이디</td>
                                     <td class="td-10">이름</td>
                                     <td class="td-10">부서</td>
                                     <td class="td-10">직급</td>
                                     <td class="td-10">입사일</td>
                                     <td class="td-5">선택</td>
                                 </tr>

                                 <tr class="center noto font14">
                                     <td>120</td>
                                     <td>admin</td>
                                     <td>박그린</td>
                                     <td>전산부</td>
                                     <td>과장</td>
                                     <td>2020/09/16</td>
                                     <td>
                                         <button type="button" class="s-btn-on">선택</button>
                                     </td>
                                 </tr>
                            </table>

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
    </div>