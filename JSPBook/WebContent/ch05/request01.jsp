<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object(내장 객체)</title>
</head>
<body>
	<!-- 폼페이지 
	request01_process.jsp?id=a001&passwd=java
	id=a001&passwd=java : 요청(HTTP) 파라미터 => request객체에 들어 간다
	-->
	<form action="request01_process.jsp" method="post">
		<!-- 폼데이터 -->
		<p>아이디 : <input type="text" name="id" /> </p>
		<p>비밀번호 : <input type="text" name="passwd" /> </p>
		<p><input type="submit" value="전송" /></p>
	</form>

</body>
</html>










