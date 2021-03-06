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
}

td {
	border: 1px solid #d5d5d5;
}

.board-wrap tr:first-child {
	background-color: #6f809a;
	color: #fff;
}

.tr-even {
	background-color: #eff3f9;
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
								<i class="fas fa-book m-lr5"></i>전자결재 양식관리
							</h3>
						</div>
						<hr />

						<div class="" style="display: block;">
							<div class="search-wrap flex flex-justify m-b5">
								<div class="m-b5">
									<span class="btn-cancel" style="border: 1px solid #474747;">
										전체 게시물 수 30 개 </span>
								</div>

								<div class="flex flex-justify">
									<form method="post" action="grp_company_notice.html">
										<select class="" name="searchOpt">
											<option value="">-- 검색구분 --</option>
											<option value="section">구분</option>
											<option value="kind">양식 종류</option>
											<option value="subject">양식 이름</option>
										</select> <input type="text" name="words" required
											style="margin-left: -2px;" />
										<button type="submit" class="btn-off"
											style="margin-left: -2px;">게시글 검색</button>
										<button type="button" class="btn-on">새양식 작성</button>
									</form>
								</div>
							</div>

							<div class="board-wrap" style="width: 100%;">
								<table style="width: 100%;">
									<tr class="center tr-color font14 weight700">
										<td class="td-5">번호</td>
										<td class="td-10">구분</td>
										<td class="td-10">양식 종류</td>
										<td class="td-30">양식 이름</td>
										<td class="td-10">작성자</td>
										<td class="td-5">조회</td>
										<td class="td-10">등록 날짜</td>
										<td class="td-10">접근권한등급</td>
										<td class="td-10">관리</td>
									</tr>

									<tr class="center font14">
										<td>30</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">구매 청구서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>2등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>29</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">매각 청구서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>4등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>28</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">차량 관리 (배차신청서)</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>2등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>27</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">휴가 계획서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>2등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>26</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">연차 계획서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>2등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>25</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">입찰 계약서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>5등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>24</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">견적서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>5등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>23</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">연차 제출서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>5등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>22</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">품의서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>3등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
										</td>
									</tr>

									<tr class="center font14">
										<td>21</td>
										<td>공용</td>
										<td>문서</td>
										<td class="noto font14 weight700 under">휴가 계획서</td>
										<td>김그린</td>
										<td>13</td>
										<td>2020/09/22</td>
										<td>2등급</td>
										<td>
											<button type="button" class="s-btn-on">수정</button>
											<button type="button" class="s-btn-off">삭제</button>
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
								<span class="page"><a href=""><i class="fas fa-angle-double-right"></i></a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
<script>
	$(function() {
		$("tr:nth-child(2n+3)").addClass("tr-even");
	});
</script>
</html>