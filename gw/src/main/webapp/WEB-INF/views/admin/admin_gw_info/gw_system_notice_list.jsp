<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style>
		tr{
			height:40px;
		}
		td{
			border:1px solid #d5d5d5;
		}

		.tr-even{
		    background-color: #eff3f9;
		} 
   </style>
<body>
    <div class="main-wrap noto font14" style="width:100%;">
        <div class="p20">
        	<div class="flex flex-justify" style="line-height:center;">
   	            <div class="notice-title font14 noto">
	                <h3><i class="fas fa-book"></i> 시스템 공지사항</h3>
	            </div>
	            <div>
	            	<button class="btn-on" onClick="noticeInsertOne();">공지작성</button>
	            </div>
        	</div>

            <hr />
            <div class="list">
                <table class="noto font14 center" style="width:100%;">
                    <tr class="weight700" style="background-color: #6f809a; color: #fff;">
                        <td class="td-5">번호</td>
                        <td class="td-10">구분</td>
                        <td class="td-50">제목</td>
                        <td class="td-5">조회수</td>
                        <td class="td-10">작성자</td>
                        <td class="td-10">작성일</td>
                        <td class="td-10">관리</td>
                    </tr>
                    <tr>
                        <td>50</td>
                        <td>공지</td>
                        <td class="left p10 under weight700 ">시스템 정기 정검 안내</td>
                        <td>13</td>
                        <td>13</td>
                        <td>2020/09/16</td>
                        <td>
                        	<button class="s-btn-on">수정</button>
                        	<button class="s-btn-off">삭제</button>
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

</body>
<script>
    $(function () {
        $(".list tr:nth-child(2n+3)").addClass("tr-even");
    });

    /* popup 버튼 클릭시 모달창 오픈 토글*/
    $(function(){
        $(".popup").click(function(){
            $(".modal-wrapper").toggleClass("open");
        });
    });

    function noticeInsertOne(){
   	 //window.open(주소, 별명, 넓이/높이/위치/스코롤바)
   	 var url 	="${pageContext.request.contextPath}/notice/system_notice_insert";
   	 var nick	="notice";
   	 var opt	="width=1300, height=700, top=100, left=100";
   	 window.open(url,nick,opt);
   	 
    } 

</script>



</html>