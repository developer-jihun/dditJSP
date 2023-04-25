<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>결과</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	//요청파라미터, HTTP파라미터, QueryString(String 타입)를 get해보자
	String memId = request.getParameter("memId");
	String password = request.getParameter("password");
	String rememberMe = request.getParameter("remember-me");
%>
<p>memId : <%=memId%></p>
<p>password : <%=password%></p>
<p>rememberMe : <%=rememberMe%></p>
</body>
</html>



