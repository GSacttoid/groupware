<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	tr:first-child{
	    background-color: #6f809a;
	    color: #fff;
	}
	.tr-even{
	    background-color: #eff3f9;
	} 
   </style>
<body>

    <div class="main-wrap noto font14" style="width:100%;">
        <div class="p20">
            <div class="notice-title font14 noto">
                <h3><i class="fas fa-book"></i> 시스템 공지사항</h3>
            </div>
            <hr />
            <div class="">
                <table class="font14 center w-100">
                    <tr class="weight700">
                        <td class="td-5">번호</td>
                        <td class="td-10">구분</td>
                        <td class="td-60">제목</td>
                        <td class="td-10">조회수</td>
                        <td class="td-10">작성일</td>
                    </tr>
                    <tr>
                        <td>50</td>
                        <td>공지</td>
                        <td class="left p10 under weight700 ">시스템 정기 정검 안내</td>
                        <td>13</td>
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
    </div>

</body>
<script>
    $(function () {
        $("tr:nth-child(2n+3)").addClass("tr-even");
    });
</script>
</html>