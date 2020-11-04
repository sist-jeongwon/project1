<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	text-align: center;
}
.button {
    width:100px;
    background-color: #81c147;
    border: none;
    color:#fff;
    padding: 4px 0;
    text-align: center;
    display: inline-block;
    font-size: 13px;
    margin: 4px;
    cursor: pointer;
    border-radius: 5px
}


</style>
</head>
<body>
	<br>
	<br>
	<br>
	<h2>환영합니다!</h2>
	<br>
	<br>
	<form method=post action="../member/main.do" name="mainBtn"
		id="mainBtn">
		<h5>회원가입이 완료되었습니다.</h5>
		<br> <br>
		<button type="button" class="button" onclick="location.href='../main/main.do' ">메인으로
			이동</button>
	</form>
	<br>
	<br>
	<br>
</body>
</html>
<!--<c:redirect url="../main/main.do"/> -->