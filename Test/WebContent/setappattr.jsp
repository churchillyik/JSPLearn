<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h4>获得application信息</h4> 
<br>ServletInfo:<%=application.getServerInfo()%> 
<br>application.jsp real path: <%=application.getRealPath("/application.jsp")%> 
<br>HelloServlet Real Path: <%=application.getRealPath("/servletsample/HelloServlet")%> 
<br>Major Version: <%=application.getMajorVersion()%> 
<br>get MIME: <%=application.getMimeType("/servletsample/demo.htm")%> 
<br>getResource: <%=application.getResource("/HelloJSP.jsp")%> 
<%  
	out.println("<br><h4>设置数值</h4>"); 
	application.setAttribute("name","zzb");   //把字符串“zzb”对象保存在 application中 
	application.setAttribute("counter","1");   //把字符串值“1”保存在application中 
	out.println("set name=zzb"); 
	out.println("<br>set counter=1"); 
%>
</body>
</html>