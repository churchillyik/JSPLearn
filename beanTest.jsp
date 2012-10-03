<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Reusing JavaBeans in JSP</title>
</head>
<body>
<center>
<table border=1>
<p>
<!-- HTML注释：这里定义一个类实例，以testBean作标记，并给message属性变量赋"Hello"作为初始值 -->
<jsp:useBean id="testBean" class="com.helloworld.SimpleBean" >
	<jsp:setProperty name="testBean" property="message" value="Hello" />
</jsp:useBean>
<h1>
	通过jsp:getProperty动作得到的message属性值:
	<I> <jsp:getProperty name="testBean" property="message" /> </I>
</h1>
<%--JSP标记注释：下面给testBean实例中的message 属性变量重新赋"Hello WWW"值 --%>
<jsp:setProperty name="testBean" property="message" value="Hello WWW" />
<h1>通过显现方式获取testBean实例中的 message属性值:
	<I> ${testBean.message} </I>
</h1>
</body>
</html>