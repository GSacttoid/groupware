<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<style>
tr {
	height: 40px;
	border: 1px solid #c1c1c1;
}

td {
	border: 1px solid #c1c1c1;
}

input[type="radio"] {
	width: 15px;
	height: 15px;
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

.list-btn:hover {
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
								<i class="fas fa-info-circle m-lr5"></i>출퇴근 설정
							</h3>
						</div>
						<hr />

						<form method="post" action="#">
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="noto font16 weight700 m-tb5">1. 출퇴근 시간 설정하기</div>
								<table
									style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px; margin-top: 10px;">
									<tr>
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">현재
											출퇴근 시간 설정</td>
										<td class="p10 noto font14 weight700">
											<p>출근 시간: 09:00</p>
											<p>퇴근 시간: 18:00</p>
										</td>
									</tr>
									<tr class="m-t10 p10">
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">출근
											시간</td>
										<td class="flex"><select class="sel-55"
											style="margin-left: 5px;">
												<option>--시--</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select>
											<p class="font16 noto weight700 m-lr5"
												style="line-height: 35px;">시</p> <select class="sel-55">
												<option>--분--</option>
												<option value="0">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
										</select>
											<p class="font16 noto weight700"
												style="margin-left: 5px; line-height: 35px;">분</p></td>
									</tr>

									<tr class="m-t10">
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">퇴근
											시간</td>
										<td class="flex"><select class="sel-55"
											style="margin-left: 5px;">
												<option>--시--</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select>
											<p class="font16 noto weight700 m-lr5"
												style="line-height: 35px;">시</p> <select class="sel-55">
												<option>--분--</option>
												<option value="0">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
										</select>
											<p class="font16 noto weight700"
												style="margin-left: 5px; line-height: 35px;">분</p></td>
									</tr>
								</table>
								<div class="btn-grp center m-t10">
									<button type="button" class="btn-on">저장</button>
									<button type="reset" class="btn-off">새로고침</button>
								</div>
							</div>
						</form>
						<br />

						<form method="post" action="#">
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="">
									<div class="noto font16 weight700 m-tb5">2. 출퇴근 체크 방법</div>
									<div class="noto font16 weight700 m-b10">사용중인 방법 : 사내
										pc에서만 가능</div>
								</div>
								<div class="">
									<table
										style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
										<tr class="center noto font14 bg-gray">
											<td class="td-10">선택</td>
											<td class="td-10">현재 설정</td>
											<td class="td-50">체크 방법</td>
											<td class="td-30">관리 [IP 설정]</td>
										</tr>

										<tr class="center noto font14">
											<td><input type="radio" name="commute-ip" /></td>
											<td>-</td>
											<td>모든 PC에서 출퇴근 체크 가능</td>
											<td>모든 PC에서 출퇴근 체크 가능</td>
										</tr>

										<tr class="center noto font14">
											<td><input type="radio" name="commute-ip" checked /></td>
											<td><i class="fas fa-check"
												style="font-size: 20px; color: #f00;"></i></td>
											<td>사내 PC에서 체크 가능</td>
											<td>
												<button type="button" class="list-btn m-lr5">아이피 설정</button>
											</td>
										</tr>

										<tr class="center noto font14">
											<td><input type="radio" name="commute-ip" /></td>
											<td>-</td>
											<td>개인 전용 PC에서 체크 가능</td>
											<td>
												<button type="button" class="list-btn m-lr5">아이피 설정</button>
											</td>
										</tr>
									</table>
								</div>
								<div class="btn-grp center m-t10">
									<button type="button" class="btn-on">저장</button>
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