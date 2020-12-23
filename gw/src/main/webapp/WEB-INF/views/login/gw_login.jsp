<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GreenArt Company Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style_login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/6ecca0b569.js" crossorigin="anonymous"></script>
</head>

<body>
    <main>
        <div class="logo">
            <h1>GreenArt Company Groupware</h1>
        </div>
        <div class="login-box">
            <h2>Login</h2>
            <div class="">
                <form name="frm" id="frm" method="post" action="${pageContext.request.contextPath}/admin/main" autocomplete="off">
                    <div class="input-wrap">
                        <div class="pos">
                            <span class="form-icon"><i class="far fa-id-card"></i></span>
                            <input type="text" name="mem_id" id="mem_id" class="input" tabindex="1" placeholder="아이디 입력해주세요." autofocus />
                        </div>
                        <div class="pos">
                            <span class="form-icon"><i class="fas fa-unlock-alt"></i></span>
                            <input type="password" name="mem_pwd" id="mem_pwd" class="input" tabindex="2" placeholder="패스워드 입력해주세요." />
                        </div>
                        <div class="check-box">
                            <label style="display: flex;"><input type="checkbox" name="remember" value="remember" checked />
                                <span style="padding-left: 7px; font-size: 14px; color: #8898aa;">아이디 저장하기</span>
                            </label>
                        </div>
                    </div>

                    <div class="">
                        <button class="btn" type="submit">Login</button>
                    </div>
                    <div class="register">
                        <span class="forgot">
                            <a href="#">아이디/비밀번호 찾기</a>
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

<script>

</script>
</html>