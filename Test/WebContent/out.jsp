<%@ page buffer="2kb" autoFlush="true" contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	for(int i=0;i<10;i++)     //迭代输出 
       out.println("Hello world, " + i + "  ");
%> 
<br>BufferSize: <%=out.getBufferSize() %>
<br>BufferRemain: <%=out.getRemaining() %>
<br>AutoFlush: <%=out.isAutoFlush() %>
<% out.clearBuffer(); %>
</body>
</html>