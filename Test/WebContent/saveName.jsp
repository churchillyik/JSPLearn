<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<% 
    String name = request.getParameter("username");  //获取上一页面GetName.jsp 中输入的用户名 
    session.setAttribute("user",name);     //把用户名信息存储在session中 
    String sessionUserName = (String)session.getAttribute("user");  //从session中获取到用户信息 
    out.println("hello!"+sessionUserName);      //打印出用户信息
%>
</body>
</html>