<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->
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
	.accordion-content {
	    display: block;
	}
</style>
<body>
	<div class="total-wrap">
		<!-- INCLUDE LOGO (ALL) -->
		<%@ include file="/WEB-INF/views/INCLUDE/GW_LOGO.jsp"%>
		<!-- /INCLUDE LOGO (ALL) -->
		<main>
			<div class="container">
				<!-- INCLUDE MENU (ALL) -->
				<%@ include file="/WEB-INF/views/admin/ADMIN_MENU.jsp"%>
				<!-- /INCLUDE MENU (ALL) -->
				<div class="detail-wrap">
					<!-- INCLUDE MENU_DETAIL (ADMIN) -->
					<%@ include file="/WEB-INF/views/admin/ADMIN_MENU_DETAIL.jsp"%>
					<!-- /INCLUDE MENU_DETAIL (ADMIN) -->
				</div>
				<div class="main-wrap noto font14" style="width: 100%;">

					<div class="p20">
						<div class="notice-title font16 noto">
							<h3>
								<i class="fas fa-info-circle m-lr5"></i>직급 등록
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
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
								<div class="noto font16 weight700 m-tb5">1. 직급 만들기</div>
								<table
									style="width: 100%; border: 1px solid #c1c1c1; margin-top: 5px;">
									<tr class="m-t10">
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">직급
											등록하기</td>
										<td><input type="text" class="input-135"
											style="margin-left: 2px;" />
											<button type="submit" class="btn-on">등록</button></td>
									</tr>
								</table>
							</div>
						</form>
						<br />

						<form method="post" action="#">
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="">
									<div class="noto font16 weight700 m-tb5">2. 등록된 직급 리스트</div>
									<div class="noto font14 m-b5">사용중인 직급 : 8 개</div>
									<div class="btn-grp m-b10">
										<button class="depart-btn" type="button">전체 선택</button>
										<button class="depart-btn" type="button"
											style="background-color: #fc6468;">선택 삭제</button>
									</div>
								</div>
								<div class="">
									<table style="width: 100%;">
										<tr class="center noto font14 bg-gray">
											<td style="width: 5%;">선택</td>
											<td style="width: 8%;">No</td>
											<td>직급명</td>
											<td style="width: 15%;">권한</td>
											<td style="width: 10%;">생성일</td>
											<td style="width: 10%;">관리</td>
										</tr>

										<tr class="center noto font14">
											<td><input type="checkbox" /></td>
											<td>2</td>
											<td>전무이사</td>
											<td><select class="sel-55">
													<option class="" value="1">1</option>
											</select></td>
											<td>2020/09/16</td>
											<td>
												<button type="button" class="s-btn-on">수정</button>
												<button type="button" class="s-btn-off"
													style="background-color: #fc6468; color: #fff;">삭제</button>
											</td>
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
			</div>
		</main>
	</div>
</body>

</html>