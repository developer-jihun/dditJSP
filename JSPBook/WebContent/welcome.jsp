<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<link rel="stylesheet" href="/css/bootstrap.min.css" />
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!	//선언문
		//전역변수
		String greeting = "Welcome to yyb's Web Shopping Mall";
		String tagline = "Welcome to Web Market";
	%>
	<!-- 표현문 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><%=greeting%></h1>
		</div>
	</div>
	<main role="main">
	<div class="container">
		<div class="text-center">
			<h3><%=tagline%></h3>
			<% //스크립틀릿
				//1초마다 페이지를 갱신(새로고침)
				response.setIntHeader("Refresh", 1);
				Date day = new Date();
				String am_pm;
				int hour = day.getHours();	//시(12)
				int minute = day.getMinutes();	//분(24)
				int second = day.getSeconds();	//초(31)
				//0 ~ 11 => 0. 정수/정수 => 정수
				if(hour / 12 == 0){
					am_pm = "AM";
				}else{	//12~24 => 1 또는 2가 됨
					am_pm = "PM";
					//13~23시를 1~11시로 표현
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				//out : JSP 내장 객체 중 하나
				out.print("현재 접속 시각 : " + CT + "<br />");
			%>
		</div>
	</div>
	</main>
	<%@ include file="footer.jsp"%>
</body>
</html>







