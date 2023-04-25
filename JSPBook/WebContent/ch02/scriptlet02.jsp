<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<%//스크립틀릿 태그
	for(int i=0;i<=10;i++){//0~10
		if(i%2==0)//짝수일 때
			//짝수인 경우에만 화면 출력
			out.print("<p>" + i + "</p>");
		
	}

%>
</body>
</html>