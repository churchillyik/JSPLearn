<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户登陆</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" href="register.css" type="text/css">
<script language="javascript">
<!--
function loginsubmit()
{
	ID = document.form.ID.value;
	password = document.form.password.value;
	if (ID == "" || ID.length > 25)
	{
		alert("您的用户名忘了填写了或者字符数超过规定长度！");
		document.form.ID.focus();
	} 
	else if (password == "" || password.length > 20 || password.length < 6)
	{
		alert("您的密码忘了填写了或者长度不正确！");
		document.form.password.focus();
	}
	else
	{
		document.form.submit();
	}
}
-->
</script>
</head>
<body>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
	<td height="35">&nbsp;</td>
</tr>
<tr>
	<td height="1" align="center">
	<%
		String info = request.getParameter("info");
		if (("1").equals(info))
			out.println("<font size=4 color='red'>用户名不存在，请重新登陆！</font><br><br><br>");
		else if (("2").equals(info))
			out.println("<font size=4 color='red'>密码不正确，请重新登陆！</font><br><br><br>");
		else if (("3").equals(info))
		    out.println("<font size=4 color='red'>验证码不正确，请重新登陆！</font><br><br><br>");
		else
			out.println("<font size=4 color='red'>请登陆！</font><br><br><br>");
	%>
	</td>
</tr>
<tr>
	<td align="center">
		<!--登陆部分-->
		<form method=post action="chek_login.jsp" name="form">
			<table width="170" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="imags/userlogin.gif" border="0"></td>
				</tr>
			</table>
			<table width="170" bgcolor="D2E8FF"
				style="border-bottom: 1px solid #0079CE; border-left: 1px solid #0079CE; border-right: 1px solid #0079CE">
				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td><img src="images/username2.gif"></td>
					<td><input type="text" name="ID" size="13"></td>
				</tr>
				<tr>
					<td width="56"><img src="images/userps2.gif"></td>
					<td width="113"><input type="Password" name="password" size="13"></td>
				</tr>
				 
				<tr>
					<td width="56"><img src="images/userym2.gif"></td>
					<td width="113">
						<input type="text" name="chkcode" size="4">&nbsp;
						<img border=1 src="createMa.jsp">
					</td>
				</tr>
				 
				<tr>
					<td align="center" colspan="2" height="30"><a
						href="javascript:loginsubmit();"><img
							src="imags/log_button.gif" border="0"></a>&nbsp; <a
						href="register.jsp"><img src="imags/reg_button.gif"
							border="0"></a></td>
				</tr>
				<tr>
					<td colspan="2" align="right"></td>
				</tr>
			</table>
		</form>
		<!--登陆部分-->
	</td>
</tr>
</table>
</body>
</html>