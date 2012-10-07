<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商行－注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="register.css" type="text/css"/>
<SCRIPT LANGUAGE=javascript>
<!--
function checkform()
{
	if (document.form.ID.value == ""
			|| !(document.form.ID.value).indexOf("/")
			|| !(document.form.ID.value).indexOf("."))
	{
	     alert("用户名为空或者有非法字符！");
		document.form.ID.focus();
	}
	else if (document.form.password.value == ""
			|| (document.form.password.value).length < 6)
	{
		alert("密码为空或者太短，为了你的安全请填写！");
		document.form.password.focus();
	}
	else if (document.form.rpassword.value == ""
			|| (document.form.rpassword.value) != (document.form.password.value))
	{
    	alert("重置密码为空，或者和密码不一致！");
    	document.form.rpassword.focus();
	}
	else if (document.form.name.value == "")
	{
	   alert("您的姓名为空！");
	   document.form.name.focus();
	}
	else
	{
	    document.form.submit();
	}
}
//-->
</SCRIPT>
</head>
<body>
<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
<tr>
	<td height="5">&nbsp;</td>
</tr>
<tr>
	<td>
		<div align="center">
			<font size=3><Strong>用户注册</strong></font><br>
			<hr width="80%" size="1">
		</div>
	</td>
</tr>
<tr>
	<td>
	<form method=post action="do_register.jsp" name="form">
		<table width="80%" border="0" cellspacing="0" cellpadding="0" align="center">
		<tr height="30">
			<td width="20%" align="right">&nbsp;用户名：</td>
			<td width="40%" align="left">
				&nbsp;<input type="text" name="ID" size="15">&nbsp;
			</td>
			<td width="40%" align="left">
				&nbsp;<font color="#0099FF">请不要包含'/'、'\'、','等字符</font>
			</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;密码：</td>
			<td width="40%" align="left">
				&nbsp;<input type="Password" name="password" size="15">&nbsp;
			</td>
			<td width="40%" align="left">
				&nbsp;<font color="#0099FF">密码要足够长，以确保安全</font>
			</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;重新输入一次密码：</td>
			<td width="40%" align="left">
				&nbsp; <input type="Password" name="rpassword" size="15">&nbsp;
			</td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;姓名：</td>
			<td width="40%" align="left">
				&nbsp;<input type="text" name="name" size="15"></td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;性别：</td>
			<td width="40%" align="left">&nbsp; 
				<input type="radio" name="sex" value="0" checked>男
				<input type="radio" name="sex" value="1">女
			</td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;出生年月：</td>
			<td width="40%" align="left">&nbsp;
				<select name="year">
				<%! int i = 0; %>
				<%
					for (i = 1970; i <= 2000; i++)
					{
				%>
				<option value=<%=i%>><%=i%></option>
				<%
					}
				%>
				</select>年
				<select name="mouth">
				<%
					for (i = 1; i <= 12; i++)
					{
				%>
				<option value=<%=i%>><%=i%></option>
				<%
					}
				%>
				</select>月 
				<select name="day">
				<%
					for (i = 1; i <= 31; i++)
					{
				%>
				<option value=<%=i%>><%=i%></option>
				<%
					}
				%>
				</select>日
			</td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;个人说明：</td>
			<td width="40%" align="left">&nbsp; 
				<textarea name="description" cols="30" rows="5"></textarea></td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr height="30">
			<td width="20%" align="right">&nbsp;</td>
			<td width="40%" align="left">&nbsp;</td>
			<td width="40%" align="left">&nbsp;</td>
		</tr>
		<tr>
			<td colspan=3 align="center"><hr width="80%" size="1"></td>
		</tr>
		<tr height="30">
			<td colspan=3 align="center">
				<a href="javascript:checkform();">
				<img src="imags/buy_reg.jpg" border="0"></a>&nbsp;&nbsp;
				<a href="javascript:document.form.reset()">
				<img src="imags/buy_reset.jpg" border="0"></a>
			</td>
		</tr>
		</table>
	</form>
	</td>
</tr>
</table>
</body>
</html>