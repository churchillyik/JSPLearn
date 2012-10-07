<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<center><h3>response.sendRedirect()使用例子</h3></center>
<form action="index4.jsp"> 
	<table border=1>
	<tr>
		<td>
		<select name="pg">
		<option value=0>本页</option>
		<option value=1>hello页面</option>
		<option value=2>goodbye 页面</option>
		</select>
		</td>
	</tr> 
	<tr>
		<td><input type="submit" value="提交"></td>
	</tr>
	</table>
</form> 
<% 
   String pg = request.getParameter("pg");    //获取传递参数pg 
   if("1".equals(pg))         //如果pg等于 1 
      response.sendRedirect("hello.jsp");     //则页面重定向为hello.jsp 
   else if("2".equals(pg))        //如果pg等于 2 
      response.sendRedirect("goodbye.jsp");    //则页面重定向为goodbye.jsp 
   else           //否则不进行页面重定向，即还显示本页 
      out.println("没有进行页面重定向"); 
%>
</body>
</html>