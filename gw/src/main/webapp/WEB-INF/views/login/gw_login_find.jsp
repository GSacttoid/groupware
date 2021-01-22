<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <h2>계정 정보 확인</h2>
            <div class="">
                <form name="id_find" id="id_find" method="post" action="${pageContext.request.contextPath}/gw_id_find" autocomplete="off">
                    <div class="input-wrap">
						
                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-user-check"></i></span>
                            <input type="text" name="emp_name" id="emp_name" class="input" tabindex="1" required placeholder="이름을 입력해주세요." />
                        </div>

                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-phone-square-alt"></i></span>
                            <input type="text" name="emp_phone" id="emp_phone" class="input phoneNumber" maxlength="13" tabindex="2" required placeholder="연락처를 입력하세요." />
                        </div>
                        <p class="" style="color:#f00; font-size:16px; font-weight:700; margin-left:10px;">${msgId}</p>
                    </div>

                    <div class="">
                        <button class="btn" id="btn" name="btn" tabindex="3" type="submit" >아이디 확인하기</button>
                    </div>
               </form>
               <form name="pwd_find" id="pwd_find" method="post" action="${pageContext.request.contextPath}/gw_pwd_find" autocomplete="off">
                    <div class="input-wrap m-t10">
                        <div class="pos">
                            <span class="form-icon"><i class="far fa-id-card"></i></span>
                            <input type="text" name="emp_id" id="emp_id" class="input" tabindex="4" required placeholder="아이디를 입력해주세요." />
                        </div>

                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-phone-square-alt"></i></span>
                            <input type="text" name="emp_phone" id="emp_phone" class="input phoneNumber" maxlength="13" tabindex="5" required placeholder="연락처를 입력하세요." />
                        </div>
                        <p class="" style="color:#f00; font-size:16px; font-weight:700; margin-left:10px;">${msgPwd}</p>
                    </div>

                    <div class="">
                        <button class="btn" id="btn" name="btn" tabindex="6" type="submit" >패스워드 확인하기</button>
                    </div>
               </form>
                    <div class="register">
                        <span class="account">
                            <a href="${pageContext.request.contextPath}">로그인화면으로</a>
                        </span>
                        <div class="clearfix"></div>
                    </div>

            </div>
            <p class="copy">COPYRIGHT ⓒ GREENART COMPANY. ALL RIGHTS RESERVED.</p>
        </div>
    </main>
</body>

<script>	
$(document).on("keyup", ".phoneNumber", function() { 
	$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
});

</script>
</html>