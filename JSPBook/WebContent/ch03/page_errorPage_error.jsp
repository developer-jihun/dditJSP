<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!-- isErrorPage : 이 JSP페이지가 오류 페이지? 
	false : 아닌데? 나 오류페이지 아니다능.
	true : 맞다능
-->
<!DOCTYPE html>
<html>
<head>
<title>서비스 문제 발생</title>
</head>
<body>
<!-- /images : WebContent > images 폴더 -->
<img src="/images/error.jpg" /><br />
<!-- 오류 타입 -->
<%=exception.getClass().getName()%>
<!-- 오류 메시지 -->
<%=exception.getMessage()%>
<%
	exception.printStackTrace(new PrintWriter(out));
%>
</body>
</html>






