<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%@ page import="cn.register.product.SqlProduct" %>
<%@ page import="cn.register.product.Product" %>
<%@ page import="cn.register.Factory" %>
<%@ page import="java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册登录系统首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="register.css" type="text/css" />
</head>
<%
String UserId = (String)session.getAttribute("user");	//从session中获取用户ID
if (UserId == null || UserId == "")       	//判断用户ID是否为空，即判断是否登录
{
	response.sendRedirect("login.jsp");     //未登录则跳转到login.jsp登录页面
}

Product product = null;
//初始化SqlProduct类 
SqlProduct sqlProduct = Factory.getInstance().initSqlProduct();
//该方法返回Iterator“反复器”数据类型
Iterator<Product> iterator = sqlProduct.getProducts();

String product_name = "";		//定义产品名称变量
float price = 0;           		//定义产品价格变量
String description = "";		//定义产品描述变量
%>
<body>
<table width="80%" align="center">
	<tr>
		<td class="title">&nbsp;用户注册登录系统==<span class="title1">产品展示</span>==</td>
		<td style="width: 150; height: 20; vertical-align: middle; text-align: center;">
		<%=UserId%>&nbsp;您 好!&nbsp;&nbsp;<a href="login.jsp">登录</a>&nbsp;|&nbsp;
		<a href="logout.jsp">注销</a></td>
	</tr>
</table>
<hr align="center" width="75%" color="#990000" size="1" />
<table width="80%" align="center">
	<tr>
		<td height="5" colspan="2"></td>
	</tr>
	<%
		//循环输出产品信息
		while (iterator.hasNext())
		{
			product = (Product)iterator.next();
			product_name = product.getProduct_name();
			price = product.getPrice();
			description = product.getDescription();
	%>
		<tr>
			<td>&nbsp;产品名称：<%=product_name%></td>
			<td width="40%">
				&nbsp;报价：<span style="color: #FF0000; font-style: italic;"><%=price%></span>
			</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;描述：<%=description%></td>
		</tr>
		<tr>
			<td height="5" colspan="2"><hr size="3" width="10%" /></td>
		</tr>
	<%
	    }
	%>
</table>
<div align="center" class="tail">2006==本公司版权拥有</div>
</body>
</html>