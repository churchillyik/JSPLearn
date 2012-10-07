<%@ page contentType="text/html; charset=utf-8" language="java" errorPage=""%>
<%
session.removeAttribute("user");
response.sendRedirect("login.jsp");
%>