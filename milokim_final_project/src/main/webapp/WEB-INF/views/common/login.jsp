<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 페이지</title>
	
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
</head>
<style>
.wrap {
   width: 490px;
   padding: 40px 20px 20px 20px;
   background-color: #f5f6f7;
   position: absolute;
   top: 60%;
   left: 50%;
   transform: translate(-50%,-50%);
   border-radius: 30px;
   box-sizing: border-box;
}

.title {
   margin: 0 auto;
    width: 240px;
    height: 44px;
    text-align: center;
    font-size: 25px;
    background-repeat: no-repeat;
    background-position: 0 0;
    background-size: 240px auto;
    margin-bottom: 20px;
}
.kakao{
   margin-top: 15px;
   height: 60px;
   border: solid 1px #FEE500;
   background: #FEE500;
   color: #3c1d1e;
   font-size: 18px; 
   box-sizing: border-box;
   border-radius: 5px;
   cursor: pointer;
   width: 450px;
   display: flex;
}
.kakao_i{
/*    background: url(/resources/icons/kakao_login_medium_narrow.png) no-repeat; */
   width: 40px;
   height: 90%;
   background-size: 100%;
   background-position: 50%;
   margin: 0 20px;
}
.kakao_txt{
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 16px;
   padding-right: 60px;
}

a {
   text-decoration: none;
}

.login {
 	width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 16px;
   padding-right: 60px;
}

</style>

<body>
<div class="wrap">
<div class="title">login</div>
	 <form action="kakaologin" method="post">
			<input type="text" name="username" placeholder="Username"/><br>
			<input type="password" name="password" placeholder="Password"/><br>
		<button class="btn btn-primary py-3 px-5 me-3 animated fadeIn login">로그인</button>
		</form>

	    <a class="kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=77dfb2057fb10018f5dbf8b933cc96dd&redirect_uri=http://localhost:8090/job/common/login
	&response_type=code">
	
		
		
	
      	<div class="kakao_i"></div>
      	<div class="kakao_txt">카카오톡으로 간편로그인 </div>
   	</a>
</div>
</body>
</html>