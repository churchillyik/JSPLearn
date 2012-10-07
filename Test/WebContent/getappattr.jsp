<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>获得用户名：<%=application.getAttribute("name")%>
<br>计数值：
<%
	//将保存在application中的关键字为counter的字符串对象取出，然后强制转化成整数型
	int mycounter = Integer.valueOf(application.getAttribute("counter").toString()).intValue();
	out.println(mycounter);
	//将数值加一，然后用新的值来更新保存再application中的 counter对象
	application.setAttribute("counter",Integer.toString(mycounter+1));
%>
</body>
</html>