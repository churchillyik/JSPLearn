<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" info="这是第一个info属性设置的例子" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
<% 
    out.println(getServletInfo());    //打印出info属性所定义的字符串
%>
<form method=post action="saveName.jsp">
    您的姓名：<input type=text name=username size=20>
    <p><input type=submit value="提交">&nbsp;<input type=reset value="重置">
</form>
</div>
</body>
</html>