<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>request内置对象的实例</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form aciton="request.jsp">
	<br>Get request results:
	<br><input type="text" name="myname">
	<br><input type="submit" name="get value">
</form>
返回HTTP请求信息中使用的方法名称:<%=request.getMethod()%>
<br>
返回请求信息中调用Servlet的URL部分:<%=request.getServletPath()%>
<br>
返回HTTP GET 请求信息中URL之后的查询字符串:<%=request.getQueryString()%>
<br>
返回请求实体的MIME类型:<%=request.getContentType()%>
<br>
返回请求信息中的协议名名字和版本号:<%=request.getProtocol()%>
<br>
有关任何路径信息:<%=request.getPathInfo()%>
<br>
返回接受请求的服务器主机:<%=request.getServerName()%>
<br>
返回服务器的端口号:<%=request.getServerPort()%>
<br>
返回提交请求的客户机的规范名字:<%=request.getRemoteHost()%>
<br>
返回提交请求的客户机的IP 地址:<%=request.getRemoteAddr()%>
<br>
返回请求中使用的模式（协议）名字:<%=request.getScheme()%>
<br>
返回这个request值，提交过来的值:<%=request.getParameter("myname")%>
</body>
</html>