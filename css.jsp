<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %> 
<%@ page import="java.util.Date" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>CSS文件外部调用方法的实现</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>JSP大全</h1>
<p class="tt">这是一本详细介绍JSP使用的书籍！</p>
<p class="tt1">这是一本详细介绍JSP使用的书籍！</p>
<p class="tt2">这是一本详细介绍JSP使用的书籍！</p>
<p class="tt3">这是一本详细介绍JSP使用的书籍！</p>
<% 
//以下为Java 小脚本语言 
Date now_date = new Date(); 
out.println("<p>当前日期为：" + now_date + "</p>"); 
%>
<%= now_date %>
</body>
</html>