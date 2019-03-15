<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
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
.inputVcode{
	width:280px;
	height:40px;
	border-radius:10px;
	border:2px solid #CCC;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
function change(){
	 var verifyId=document.getElementById("yzm");
	 verifyId.src="${pageContext.request.contextPath }/Vcode?a="+new Date().getTime();
}
</script>
</head>
<body>
	<form  method="post" action="${pageContext.request.contextPath }/UserServlet?method=logi">
		<table width="1000" border="0">
  			<tr>
    			<td width="1000" height="150" align="center" valign="middle">${info }</td>
  			</tr>
  			<tr>
    			<td align="center" valign="middle" class="style1" color="red">党务管理系统</td>
  			</tr>
  			<tr>
    			<td align="center" valign="middle"><label for="textfield"></label>
      			账号：&nbsp;
        		<input name="name" type="text" class="inputUser" id="textfield"  style="text-indent: 10px; color:#999;" /></td>
  			</tr>
  			<tr>
    			<td align="center" valign="middle"><label for="textfield2"></label>
      			密码：&nbsp;
       			<input class="inputUser" name="password" type="password" id="textfield1"  style="text-indent:10px"  /></td>
  			</tr>
  			<tr>
    			<td align="center" valign="middle">
     			验证码：
       			<input class="inputVcode" name="vcode" type="text" placeholder="请输入验证码"  id="textfield2"  style="text-indent:10px"/>
       			<img id="yzm" src="${pageContext.request.contextPath}/Vcode"  onclick="javascript:change();"/>
       			</td>
  			</tr>
  			<tr>
    			<td align="center" valign="middle">&nbsp;&nbsp;<input type="submit"  value="登陆" />&nbsp;&nbsp;&nbsp;&nbsp;
      			<input type="button" onclick="javascript:window.location.href='${pageContext.request.contextPath}/regist.jsp'" name="button2" id="button2" value="注册" />
  				<input type="button" onclick="javascript:window.location.href='${pageContext.request.contextPath}/getpassword.jsp'" name="button2" id="button2" value="忘记密码" /></td>
  			</tr>
		</table>
	</form>
</body>
</html>
