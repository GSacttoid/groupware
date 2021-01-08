<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenArt Company</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_register.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/6ecca0b569.js" crossorigin="anonymous"></script>
</head>
<style>
.logo{
	width:300px;
	height:140px;
	cursor:pointer;
	margin-left:30px;
	line-height:0.1;
	padding:20px;
}
</style>
<body>
    <main>
        <div class="logo" onClick="location.href='${pageContext.request.contextPath}/'">
           	<h1 class="center noto weight900" style="color:#fff;">${logo}</h1>
     		<h2 class="center" style="color:#787878;">${logoSub}</h2>
        </div>
        <div class="login-box" id="login-box"style="">
            <h2>계정 등록</h2>
            <div class="">
                <form name="frm" id="frm" method="post" action="${pageContext.request.contextPath}/gw_register" autocomplete="off">
                    <div class="input-wrap">
                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-building"></i></span>
                            <select class="select" name="emp_buseo" id="emp_buseo" >
         						
                            </select>
                        </div>

                        <div class="pos">
                            <span class="form-icon"><i class="far fa-id-card"></i></span>
                            <input type="text" name="emp_id" id="emp_id" class="input" tabindex="2" required placeholder="사용하실 아이디를 입력해주세요."/>
                        </div>            

                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-unlock-alt"></i></span>
                            <input type="password" name="emp_pwd" id="emp_pwd" class="input" tabindex="3" required placeholder="암호를 입력해주세요." />
                        </div>

                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-unlock-alt"></i></span>
                            <input type="password" name="repwd" id="repwd" class="input" tabindex="4" required placeholder="암호를 재입력해주세요." />
                        </div>
						
                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-user-check"></i></span>
                            <input type="text" name="emp_name" id="emp_name" class="input" tabindex="5" required placeholder="이름을 입력해주세요." />
                        </div>

                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-phone-square-alt"></i></span>
                            <input type="text" name="emp_phone" id="emp_phone" class="input" tabindex="6" required placeholder="연락처를 입력하세요. ex) 010-1234-1234" />
                        </div>
                        <p>※ 입력하신 연락처로 승인정보가 발송됩니다.</p>
                    </div>

                    <div class="">
                        <button class="btn" id="btn" name="btn" type="submit" >등록 승인 요청하기</button>
                    </div>
                    <div class="register">
                        <span class="account">
                            <a href="${pageContext.request.contextPath}">로그인화면으로</a>
                        </span>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
            <p class="copy">COPYRIGHT ⓒ GREENART COMPANY. ALL RIGHTS RESERVED.</p>
        </div>
    </main>
</body>

<script>
	/* select - option에 부서리스트 불러오기 (20201223_jhpark) */
	function loadBuseo() {
		$.ajax({
			type 	: "POST",
			url 	: "${pageContext.request.contextPath}/get_buseo",
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType: 'json',
			success	: function(responseData) {
				//$("#buseo").append("<option value=''>부서를 선택하세요.</option>");
				$.each(responseData, function(key, value) {
					$("#emp_buseo").append("<option value="+value.buseo_id+">"+value.buseo_name+"</option>");
				});
			},
			error	: function() {
				alert("시스템 에러");
			}
		});
	}
	
	/*아이디 체크 (20201220_jhpark) */
	function checkInfo() {

		$('#emp_id').blur(function () {
			$.ajax({
	            type: "POST",
	            url: "${pageContext.request.contextPath}/chk_empId",
	            data: {"emp_id": $('#emp_id').val()},
	            success: function (data) {
	                if ($.trim(data) == "success") {
		                //alert("사용할 수 있는 사원번호입니다.");
	                }else{
	                	alert("사용할 수 없는 사원아이디입니다.\n다른 아이디로 입력해주세요.");
	                	$('#emp_id').val("");
	                	$('#emp_id').focus();
		            }
	            }
	        })
		});

		
		$("#btn").click(function() {
			if( $("#emp_id").val() == '' ) {
				alert("사원번호를 입력하세요.");
				$("#emp_id").focus();
				return false;
			}
			$("#frm").submit();
		});
	}
	
	/* 패스워드 확인 (20201220_jhpark) */
	$("#repwd").blur(function() {
		var pwd = $("#emp_pwd").val();
		var repwd = $("#repwd").val();
		
		if( pwd != repwd ) {
			alert("패스워드가 일치하지 않습니다.\n다시 입력해주세요.");
			$("#emp_pwd").val("");
			$("#repwd").val("");
			$("#emp_pwd").focus();
		}
	});
	
	/* 실행 (20201220_jhpark) */
	$(function(){
		loadBuseo();
		checkInfo();
	});

</script>
</html>