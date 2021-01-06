<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="">
	<div class="title-detail" style="font-size: 14px; border-bottom: 1px solid #6d6d6d;">
		<h2>
			<a href="${pageContext.request.contextPath}/home/main" title="Home" class="f6"><i class="fas fa-home"></i> Home 메뉴</a>
		</h2>
	</div>
</div>

<div class="accordion">
	<div>
		<div class="myInfo">
			<p class="noto font16 weight700 m-lr5">나의 정보</p>
			<p class="noto font14 weight500 m-lr5">아이디	: ${sessionScope.empId}</p>
			<p class="noto font14 weight500 m-lr5">이름	: ${sessionScope.empName} 님</p>
			<p class="noto font14 weight500 m-lr5">직급	: ${sessionScope.empGradeName}</p>
			<p class="noto font14 weight500 m-lr5">권한	: ${sessionScope.empAuth} 등급</p>
		</div>
		<div class="m-lr5 m-t5">
			<a onClick="myInfo();" title="사용자 정보" class="font16 noto" style="color:#5ebfd9; padding:5px 0px; cursor:pointer;">
				<i class="fas fa-user f6" style="color:#5ebfd9;"></i> 내정보 상세보기
			</a>
		</div>
	</div>

	<div style="font-size: 14px; border-top:1px solid #6d6d6d; border-bottom: 1px solid #6d6d6d; margin-top:10px;">
		<div class="m-t5" style="line-height:1.8;">
			<p class="noto font14 weight500 m-lr5">출근시간	: </p>
			<p class="noto font14 weight500 m-lr5">퇴근시간	: </p>
			<p class="noto font14 weight500 m-lr5">현재상태	: </p>
			<p class="noto font14 weight500 m-lr5">잔여휴가	: </p>
		</div>

		<div class="flex flex-justify">
			<button class="noto font16 m-tb10 m-lr3" style="width:100px; border: 2px solid #5ebfd9; border-radius:50px; padding:10px;">출근하기</button>
			<button class="noto font16 m-tb10 m-lr3" style="width:100px; border: 2px solid #f2f2f2; border-radius:50px; padding:10px;">퇴근하기</button>
		</div>
	</div>
	
	<div class="p10" style="font-size: 14px; height:250px; margin-top:10px; background-color:#D6D6D3">
		<div style="line-height:1.8;" class="flex flex-justify">
			<p class="noto font16 weight500 m-lr5" style="color:#000;"><i class="fas fa-sticky-note"></i> 메모</p>
			<p class="noto font16 weight500 m-lr5" style="color:#000; cursor:pointer;"><i class="far fa-plus-square"></i> 추가</p>
		</div>
		<div class="m-t10" style="line-height:1.8; ">
		
			<div class="flex flex-justify" style="height:25px; border-bottom:1px solid #e9e9e9;">
				<p class="noto font14 weight500 m-lr5" style="color:#000;">메모1 </p>
				<p class="noto font14 weight500" style="color:#000; cursor:pointer;"><i class="far fa-minus-square"></i></p>
			</div>
			
			<div class="flex flex-justify" style="height:25px; border-bottom:1px solid #e9e9e9;">
				<p class="noto font14 weight500 m-lr5" style="color:#000;">메모2 </p>
				<p class="noto font14 weight500" style="color:#000; cursor:pointer;"><i class="far fa-minus-square"></i></p>
			</div>
			
			<div class="flex flex-justify" style="height:25px; border-bottom:1px solid #e9e9e9;">
				<p class="noto font14 weight500 m-lr5" style="color:#000;">메모3 </p>
				<p class="noto font14 weight500" style="color:#000; cursor:pointer;"><i class="far fa-minus-square"></i></p>
			</div>

		</div>
	</div>


</div>