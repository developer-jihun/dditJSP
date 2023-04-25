<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<%//스크립틀릿
	//지역변수
	int a = 10;int b = 20;
	int c = 30;
%>
<!-- 다음과 같이 출력해보자(표현문을 사용해보자)
 a + b + c = 30 -->
<p>a + b + c = <%=a+b+c%></p>
</body>
</html>




