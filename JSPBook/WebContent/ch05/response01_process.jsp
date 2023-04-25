<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
<% //스크립틀릿
	//response01_process.jsp?id=a001&passwd=java
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("id");	//a001
	String password = request.getParameter("passwd"); //java
	
	//out.print("<p>userid : " + userid + "</p>");
	//out.print("<p>password : " + password + "</p>");
	
	//userid값이 a001이면서 동시에 password 값이 java인 경우
	if(userid.equals("a001")&&password.equals("java")){
		//	response01_success.jsp로 강제 재요청
		response.sendRedirect("response01_success.jsp");
	}else{//그렇지 않다면
		//	response01_failed.jsp로 강제 재요청
		response.sendRedirect("response01_failed.jsp");		
	}
%>
</body>
</html>





