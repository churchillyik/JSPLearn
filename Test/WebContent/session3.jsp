<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center><h3>显示答案</h3></center>
<%! String food=""; %>
<%
food = request.getParameter("food");    //取得food参数值
String name = (String)session.getValue("theusername"); //从session取出关键字为theusername的对象
%>
您的用户名：<%=name%>
<p>您喜欢吃：<%=food%>
</body>
</html>