<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center><h3>回答问题页面</h3></center>
<%
String username = request.getParameter("username"); //获得传递参数username 
session.setAttribute("theusername",username);   //把用户名保存在session中， String可以当着对象 
%>
<p>您的用户名为：<%=username%></p>
<!-- 提交表单 -->
<form action="session3.jsp">
	<table border="1" align="center">
	<tr><td>您喜欢吃什么：<input type="text" name="food" size="10"></td></tr>
	<tr><td align="center"><input type="submit" value="提交"></td></tr>
	</table>
</form>
</body>
</html>