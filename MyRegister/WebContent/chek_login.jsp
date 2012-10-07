<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%@ page import="cn.register.user.SqlUser"%>
<%@ page import="cn.register.Factory"%>
<%
	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	String chkcode = request.getParameter("chkcode");  //取得chkcode参数值 
	String rand = (String)session.getAttribute("rand");  //取得rand参数值

	SqlUser sqlUser = Factory.getInstance().initSqlUser();
	int index = sqlUser.checkUser(ID, password);
	if (chkcode.equals(rand))
	{
		if (index == 1)
		{
			response.sendRedirect("login.jsp?info=1");
		}
		else if (index == 2)
		{
			response.sendRedirect("login.jsp?info=2");
		}
		else
		{
			session.setAttribute("user", ID);
			response.sendRedirect("index.jsp");
		} 
	}
	else
	{ 
		response.sendRedirect("index.jsp?info=3"); 
	}
%>