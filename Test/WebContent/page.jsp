<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center><h3>Page内置对象的实例</h3></center> 
<%! Object obj; %>          <!-- 对象申明 -->
getClass:<%= page.getClass() %>
<br>hashCode:<%= page.hashCode()%>
<br>toString:<%= page.toString()%>
<br>equals:<%= page.equals(obj) %>
<br>equlas2:<%= page.equals(this) %>
</body>
</html>