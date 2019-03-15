<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style type="text/css">
body {
	background-image : url(images/main.jpg);
	width:100%;  
    height:100%;  
    background-size:100% 100%;  
    color:red;
    font-size: 18px;
    background-repeat:no-repeat ;
	background-attachment: fixed;"
}
.style1 {
	color: red;
	font-size: 36px;
}
.inputUser{
	width:340px;
	height:40px;
	border-radius:10px;
	border:2px solid #CCC;
}
</style>
</head>
<body>
	<br>
	<div class="style1" align="center">注册</div>
	<br>
	<form action="UserServlet" method="post">
		${msg }<br>
		<input type="hidden" name="method" value="1">
		<div align="center">用户名：<input type="text" name="name" class="inputUser"><br></div>
		<br>
		<div align="center">密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" class="inputUser"><br></div>
		<br>
		<div align="center">问&nbsp;&nbsp;&nbsp;&nbsp;题：<input type="text" name="problem" class="inputUser"><br></div>
		<br>
		<div align="center">答&nbsp;&nbsp;&nbsp;&nbsp;案：<input type="text" name="answer" class="inputUser"><br></div>
		<br>
		<div align="center"><input type="submit" value="完成"></div>
	</form>
	<br>
	<div align="center"><a href="login.jsp"><input type="submit" value="返回登录"></a></div>
</body>
</html>