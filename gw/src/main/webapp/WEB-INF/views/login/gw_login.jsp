<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenArt Company</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_login.css">
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
        <div class="login-box" style="height:450px;">
            <h2>Login</h2>
            <div class="">
                <form name="frm" id="frm" method="post" action="${pageContext.request.contextPath}/" autocomplete="off">
                    <div class="input-wrap">
                        <div class="pos">
                            <span class="form-icon"><i class="far fa-id-card"></i></span>
                            <input type="text" name="emp_id" id="emp_id" class="input" tabindex="1" placeholder="아이디 입력해주세요." required autofocus />
                        </div>
                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-unlock-alt"></i></span>
                            <input type="password" name="emp_pwd" id="emp_pwd" class="input" tabindex="2" placeholder="패스워드 입력해주세요." required />
                        </div>
                        <div class="check-box">
                            <div style="color:#f00;font-size:16px;text-align:center;font-weight:700;">${msg}</div>
                        </div>
                    </div>

                    <div class="">
                        <button class="btn" type="submit">Login</button>
                    </div>
                    <div class="register">
                        <span class="forgot">
                            <a href="${pageContext.request.contextPath}/gw_login_find">아이디/비밀번호 찾기</a>
                        </span>
                        <span class="account">
                            <a href="${pageContext.request.contextPath}/gw_register">계정 생성하기</a>
                        </span>
                        <div class="clearfix"></div>
                    </div>
                </form>
            </div>
            <p class="copy">COPYRIGHT ⓒ GREENART COMPANY. ALL RIGHTS RESERVED.</p>
        </div>
    </main>
</body>

</html>