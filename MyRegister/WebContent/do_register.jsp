<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%@ page import="cn.register.DateFormat" %>
<%@ page import="cn.register.user.User" %>
<%@ page import="cn.register.user.SqlUser" %>
<%@ page import="cn.register.Factory" %>
<%@ page import="cn.register.MD5" %>
<%
//获取上一页面传递过来的参数
String ID = request.getParameter("ID");
String password = request.getParameter("password");
String rpassword = request.getParameter("rpassword");
String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "utf-8");;
String sex = request.getParameter("sex");
String year = request.getParameter("year");
if (year.length() == 1)
{
	year = "0" + year;
}
String mouth = request.getParameter("mouth");
if (mouth.length() == 1)
{
	mouth = "0" + mouth;
}
String day = request.getParameter("day");
if (day.length() == 1)
{
	day = "0" + day;
}
String date = year + "-" + mouth + "-" + day;
String description = new String(request.getParameter("description").getBytes("ISO-8859-1"), "utf-8");

//初始化User实例
User user = Factory.getInstance().initUser();
//初始化SqlUser实例
SqlUser sqlUser = Factory.getInstance().initSqlUser();
//调用DateFormat类中getDate()方法实现字符串类型日期转变成Long类型日期
long birth = DateFormat.getDate(date);

//如果两次密码输入正确
if (sqlUser.checkRPwd(password, rpassword))
{
	user.setUser_id(ID);
	user.setPassword(password);
	user.setName(name);
	user.setSex(sex);
	user.setBirth(birth);
	user.setDescription(description);
	//将用户注册信息保存到数据库中，如果成功
	if (sqlUser.saveUser(user))
	{
		session.setAttribute("user", ID);
		response.sendRedirect("index.jsp");
	}
	else
	{
		//否则数据库操作失败 
		response.sendRedirect("register.jsp");
	}
}
else
{
	//两次密码不符合
	response.sendRedirect("register.jsp");
}

%>