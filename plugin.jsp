<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用plugin加载Applet</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<CENTER> 实现画圆功能 </CENTER>
<BR><HR><BR>
<CENTER> 
<!-- 用plugin 加载applet -->
<!-- 设置属性radius（圆半径） -->
<!-- 设置属性color（圆显示的颜色 -->
<!-- 当无法加载时显示这段代码 -->
<jsp:plugin type="applet" code="circleApplet.class" width="100" height="100" align="center">
	<jsp:params>
		<jsp:param name="radius" value="30"/>
		<jsp:param name="color" value="0xff0000"/>
	</jsp:params>
	<jsp:fallback>无法加载Applet</jsp:fallback>
</jsp:plugin>
</CENTER>
</body>
</html>