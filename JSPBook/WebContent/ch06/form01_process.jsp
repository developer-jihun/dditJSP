<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% //스크립틀릿
	//한글 처리
	request.setCharacterEncoding("UTF-8");
	//form01_process.jsp를 요청 시 폼데이터가 request 객체에 들어가고
	//form01_process.jsp로 값들이 전달됨(name1=value1&name2=value2...)
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");//여러개의 값을 배열로 받자
	String city = request.getParameter("city");
	String food = request.getParameter("food");
%>
<!-- 표현문 -->
<p>id : <%=id%></p>
<p>passwd : <%=passwd%></p>
<p>name : <%=name%></p>
<p>phone : <%=phone%></p>
<p>gender : <%=gender%></p>
<p>hobby : 
	<%
	//list는 size, 배열을 length
	if(hobby != null){
		for(int i=0;i<hobby.length;i++){
			out.print(" " + hobby[i]);	
		}//end for
	}//end if
	%>
</p>
<p>city : <%=city%></p>
<p>food : <%=food%></p>


