<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp"%>
<!-- /INCLUDE HEADER (ALL) -->
<style>
table {
	border-collapse: collapse;
}

tr {
	height: 40px;
	border: 1px solid #d5d5d5;
}

.list tr:first-child {
	background-color: #6f809a;
	color: #fff;
}

.tr-even {
	background-color: #eff3f9;
}

td {
	border: 1px solid #d5d5d5;
}

input[type="radio"] {
	width: 15px;
	height: 15px;
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
								<i class="fas fa-info-circle m-lr5"></i>관리자 정보 관리
							</h3>
						</div>
						<hr />

						<table style="width: 100%; border: 1px solid #c1c1c1;">
							<tr>
								<td style="width: 20%; line-height: 1.8; padding: 10px;">
									<div class="noto font14">
										<ul>
											<li>각 메뉴마다 관리자를 지정할 수 있습니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</table>
						<br />
						<form method="post" action="#">
							<div class="p10" style="border: 1px solid #c1c1c1;">
								<div class="noto font16 weight700 m-b10">1. 관리자 지정하기</div>
								<table
									style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
									<tr class="m-t10">
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리
											권한</td>
										<td class="p10">
											<div class="flex">
												<label class="noto font14 weight700 m-lr10"><input
													type="radio" name="menu-admin" value=""
													style="margin: 4px;" />전체 관리자</label> <label
													class="noto font14 weight700 m-lr10"><input
													type="radio" name="menu-admin" value=""
													style="margin: 4px;" />회사메뉴 관리자</label> <label
													class="noto font14 weight700 m-lr10"><input
													type="radio" name="menu-admin" value=""
													style="margin: 4px;" />부서메뉴 관리자</label>
											</div>
										</td>
									</tr>
									<tr class="">
										<td class="font14"
											style="width: 20%; text-align: center; background-color: #e2e2e2; padding: 10px;">관리자
											지정하기</td>
										<td><input type="text" class="input-135"
											style="margin-left: 2px;" />
											<button type="button" class="btn-on" onClick="adminInsert();">관리자
												찾기</button></td>
									</tr>
								</table>
								<div class="btn-grp center m-t10">
									<button type="submit" class="btn-on">저장</button>
									<button type="reset" class="btn-off">취소</button>
								</div>
							</div>
						</form>
						<br />


						<div class="p10" style="border: 1px solid #c1c1c1;">
							<div class="">
								<div class="noto font16 weight700 m-b10">2. 등록된 관리자</div>
							</div>
							<form method="post" action="#">
								<div class="list">
									<div class="flex m-b5" style="height: 20px; line-height: 20px;">
										<div class="noto font16 weight700">※전체 관리자</div>
										<div class="noto font14 m-lr20">등록된 관리자 : 3 명</div>
									</div>
									<table
										style="width: 100%; border: 1px solid #c1c1c1; margin-bottom: 10px;">
										<tr class="center noto font14 bg-gray">
											<td class="td-5">No</td>
											<td class="td-10">아이디</td>
											<td class="td-10">직급</td>
											<td class="">이름</td>
											<td class="td-25">관리 권한</td>
											<td class="td-20">관리</td>
										</tr>
										<tr class="center noto font14">
											<td>1</td>
											<td>admin</td>
											<td>과장</td>
											<td>박그린</td>
											<td>전체 관리자</td>
											<td>
												<button type="button" class="s-btn-on">수정</button>
												<button type="button" class="s-btn-off">삭제</button>
											</td>
										</tr>
									</table>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
<script>
	function adminInsert() {
		//window.open(주소, 별명, 넓이/높이/위치/스코롤바)
		var url = "${pageContext.request.contextPath}/admin_info/admin_insert";
		var nick = "notice";
		var opt = "width=1300, height=700, top=100, left=100";
		window.open(url, nick, opt);
	}
</script>
</html>