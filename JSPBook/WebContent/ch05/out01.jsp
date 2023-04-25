<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%	//스크립틀릿
		out.println("오늘의 날짜 및 시각 : <br />");
		out.println(Calendar.getInstance().getTime());
	%>
</body>
</html>