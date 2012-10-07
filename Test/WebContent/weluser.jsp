<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK"> 
<title>欢迎您</title> 
</head> 
<body background="images/bg.gif"> 
<center> 
<%  
 String username = request.getParameter("username");  //获取用户名信息 
 out.println("Welcome "+username+"!");     //输出欢迎该用户的提示信息 
 out.println("<font color=red>  修改之前 </font>");
%> 
</center> 
</body> 
</html>