<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object(내장 객체)</title>
</head>
<body>
<%	//스크립틀릿
	//모든 헤더(웹브라우저가 요청 시 헤더정보를 보냄)의 이름을 가져와보자
	//		=> 리턴타입 : Enumeration(열거형)
	Enumeration en = request.getHeaderNames();

	//has : 있니?
	//More : 더
	//Elements : 요소들이
	//값이 있을 때에만 반복
	while(en.hasMoreElements()){
		//현재 헤더 이름을 가져옴(Object(컵) -> String(머그컵)으로 downcasting)
		String headerName = (String)en.nextElement();
		
		String headerValue = request.getHeader(headerName);
		//out : 내장객체 중 하나로써 화면에 데이터를 출력해줌
		out.print("<p>headerName : " + headerName + 
				", headerValue : " + headerValue  + "</p>");
	}
%>
</body>
</html>









