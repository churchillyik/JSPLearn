<%@ page contentType="text/html; charset=GBK" language="java" import="java.sql.*" errorPage="" %> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=GBK"> 
<title>��ӭ��</title> 
</head> 
<body background="images/bg.gif"> 
<center> 
<%  
 String username = request.getParameter("username");  //��ȡ�û�����Ϣ 
 out.println("Welcome "+username+"!");     //�����ӭ���û�����ʾ��Ϣ 
 out.println("<font color=red>  �޸�֮ǰ </font>");
%> 
</center> 
</body> 
</html>