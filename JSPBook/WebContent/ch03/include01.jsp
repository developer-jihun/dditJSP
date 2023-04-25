<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<!-- include 디렉티브(골뱅이)
	현재같은폴더 : ./ 또는 생략
	 -->
	<%@ include file="header.jsp"%>
	<h4>-----현재 페이지 영역(01)-----</h4>
	<!-- include 디렉티브 태그는 정적(파라미터x)임 -->
	<%@ include file="footer.jsp"%>
	
	<!-- include 액션 태그는 동적임(파라미터o) -->
	<!-- footer.jsp?name=value&name=value -->
	<!-- footer.jsp?id=a001&alias=gdi -->
	<jsp:include page="footer.jsp">
		<jsp:param name="id" value="a001"/>
		<jsp:param name="alias" value="gdi"/>
	</jsp:include>
</body>
</html>