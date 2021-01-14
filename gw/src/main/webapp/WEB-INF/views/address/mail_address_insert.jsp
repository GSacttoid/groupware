<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- INCLUDE HEADER (ALL) -->
<%@ include file="/WEB-INF/views/INCLUDE/GW_HEADER.jsp" %>
<!-- /INCLUDE HEADER (ALL) -->

<body>
	<div class="main-wrap noto font14" style="width: 100%">
		<div class="p20">
			<div class="notice-title font16 noto">
				<h3>
					<i class="fas fa-info-circle m-lr5"></i> 메일주소 등록하기
				</h3>
			</div>
			<hr />

			<div class="p5" style="border: 1px solid #c1c1c1;">
				<form method="POST" id="frm">
					<table>
						<tr class="">
							<td class="td-20 bg-gray noto font14 weight500 right p-lr20">메일 주소</td>
							<td class="td-80 p-lr3">
								<input type="text" name="ma_address" class="input-135"/>
								<span class="noto weight700 font14 m-lr5" style="line-height:37px;">@</span>
								<select class="sel-135" name="ma_group" >
									<option value="">-직접입력-</option>
									<option value="">@naver.com</option>
									<option value="">@gmail.com</option>
									<option value="">@nate.com</option>
									<option value="">@daum.com</option>
								</select>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">이름</td>
							<td class="p-lr3">
								<input type="text" name="ma_name" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">그룹</td>
							<td class="p-lr3">
								<select class="sel-135" name="ma_group" ></select>
								<button class="btn-normal">새그룹 만들기</button>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">회사</td>
							<td class="p-lr3">
								<input type="text" name="ma_company" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">부서</td>
							<td class="p-lr3">
								<input type="text" name="ma_buseo" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">직급</td>
							<td class="p-lr3">
								<input type="text" name="ma_grade" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">핸드폰</td>
							<td class="p-lr3">
								<input type="text" name="ma_phone" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">유선전화</td>
							<td class="p-lr3">
								<input type="text" name="ma_tel" class="input-135"/>
							</td>
						</tr>
						<tr class="">
							<td class="bg-gray noto font14 weight500 right p-lr20">메모</td>
							<td class="p-lr3">
								<input type="text" name="ma_content" class="input-100"/>
							</td>
						</tr>
					</table>
					<div class="btn-grp center m-t10">
						<button type="submit" class="btn-on">저장</button>
						<button type="reset" class="btn-off">취소</button>
						<button type="button" class="btn-red" onClick="window.close();">닫기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>