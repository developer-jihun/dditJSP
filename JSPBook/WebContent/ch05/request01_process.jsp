<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%	//스크립틀릿
		request.setCharacterEncoding("UTF-8");
		//request01_process.jsp?id=a001&passwd=java
		//요청 파라미터의 값은 String 타입
		String userid = request.getParameter("id");	//a001
		String password = request.getParameter("passwd");	//java
		
		//헤더(부수적인 정보를 담고 있음)에 있는 host라는 name에 매핑되어 있는 값을 보자
		String hostValue = request.getHeader("host");
		//헤더에 있는 accept-language라는 name에 매핑되어 있는 값을 보자
		String alValue = request.getHeader("accept-language");
	%>
	<p>호스트명 : <%=hostValue%></p>
	<p>설정된 언어 : <%=alValue%></p>
	<p>아이디 : <%=userid%></p>
	<p>비밀번호 : <%=password%></p>
</body>
</html>









