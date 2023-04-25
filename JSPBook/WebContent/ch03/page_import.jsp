<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date"%>
<%@ page session="true" %>
<!-- session="true" 기본(생략가능) / session="false" 세션객체를 사용 안함 -->
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	Today is <%=new Date()%>
	<%
		//세션 내장 객체의 now 이름 속성의 값으로 현재시각을 넣어줌
		session.setAttribute("now", new Date());
	%>
</body>
</html>