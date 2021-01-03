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
<!-- modal layer -->
    <div class="modal-wrapper">
        <div class="modalNotice noto font14 weight500" 
        style="width:65%; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);padding: 20px; transition: 1s; border-radius: 5px;">
				<div class="p10 bg-white">
					<div class="title">
						<h3 class="tomato font18 noto m-b10 m-lr10">
							<i class="fas fa-feather-alt"></i><span> 시스템 공지사항 작성하기</span>
						</h3>
					</div>
					<div class="board-insert">
						<form id="frm" method="post" enctype="multipart/form-data" autocomplete="off">
							
							<table style="border:1px solid #d5d5d5;">
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 분류</td>
									<td class="" colspan="3" style="border:1px solid #d5d5d5;">
										<select name="sn_type"	class="sel-135">
											<option value="공지사항">공지사항</option>
											<option value="일반게시글">일반게시글</option>
										</select>
									</td>
									
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 제목</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="text" name="sn_title" class="input-100" maxlength="50" required/>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">작성자</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="text" name="sn_maker" class="" maxlength="5" required readonly value="${sessionScope.empName}" />
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">접근권한</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<span class="noto font14 center p-lr10" style="line-height:35px;">읽기권한: </span>
										<select name="sn_read"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
										<input type="hidden" name="sn_write" value="1" />
										<span class="noto font14 center p-lr10" style="line-height:35px;">다운로드권한: </span>
										<select name="sn_download"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
										
										<span class="noto font14 center p-lr10" style="line-height:35px;">댓글권한: </span>
										<select name="sn_reply"	class="sel-135 noto font14">
											<option value="1">사원이상</option>
											<option value="2">대리이상</option>
											<option value="3">과장이상</option>
											<option value="4">부장이상</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">게시글 내용</td>
									<td colspan="3" class="td-90"	style="">
										<textarea name="sn_content" id="editor" 
											style="width: 100%; height: 300px; padding: 10px; border-radius: 2px;" class="noto">
										</textarea> 
										<script>
											CKEDITOR.replace('editor');
											CKEDITOR.config.height = 300;
										</script>
									</td>
								</tr>
								<tr>
									<td class="td-10 center weight700 noto font14 under bg-gray" style="border:1px solid #d5d5d5;">첨부파일</td>
									<td colspan="3" class="td-90" style="border:1px solid #d5d5d5;">
										<input type="file" name="sn_files" class="input-100" />
									</td>
								</tr>
							</table>
							<div class="btn-grp center m-t10">
								<button type="submit" name="btn" class="btn-normal" onClick="noticeWrite();">공지작성</button>
								<button type="button" class="btn-red popup">창닫기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div> 
    <!-- //modal layer -->
    <div class="main-wrap noto font14" style="width:100%;">
        <div class="p20">
        	<div class="flex flex-justify" style="line-height:center;">
   	            <div class="notice-title font14 noto">
	                <h3><i class="fas fa-book"></i> 시스템 공지사항</h3>
	            </div>
	            <div>
	            	<button class="btn-on popup">공지작성</button>
	            </div>
        	</div>

            <hr />
            <div class="list">
                <table class="noto font14 center w-100">
                    <tr class="weight700" style="background-color: #6f809a; color: #fff;">
                        <td class="td-5">번호</td>
                        <td class="td-10">구분</td>
                        <td class="">제목</td>
                        <td class="td-5">조회수</td>
                        <td class="td-10">작성자</td>
                        <td class="td-10">작성일</td>
                        <td class="td-8">관리</td>
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
    /*/popup 버튼 클릭시 모달창 오픈 토글*/

   	function noticeWrite() {

		var formData = $("#frm").serialize();
		$.ajax({
			url		: "${pageContext.request.contextPath}/notice/system_notice_insert",
			type	: "POST",
			data	: formData,
			success	: function(resData) {
				alert("공지사항이 등록되었습니다.");
			},
			error	:function() {
				alert("시스템 에러");
			}
		});
	}
</script>



</html>