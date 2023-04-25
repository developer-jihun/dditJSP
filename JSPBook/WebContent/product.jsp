<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%	//스크립틀릿
	//DAO(Data Access Object => 데이터를 가져오는 객체)
	ProductRepository productDAO = 
				ProductRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />

	<!-- ---------상품 상세 시작-------------- -->
	<div class="jumbotron">
		<!-- container : 이 안에 내용 있다 -->
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<% //스크립틀릿
		//http://localhost/product.jsp?id=P1234
		//id=P1234 요청파라미터는 request 객체 안에 있음
		//파라미터의 값의 타입은 String
		String id = request.getParameter("id"); //P1234
		
		//P1234 기본키에 해당되는 상품 1행을 가져오자
		//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
		/*
		ProductVO [productId=P1234, pname=iPhone 6s, 
		unitPrice=800000.0, description=4.7-inch, 
		manufacturer=Samsung, category=Smart Phone, unitsInStock=1000, 
		condition=New, filename=P1234.jpg, quantity=0]
		*/
		ProductVO productVO = productDAO.getProductById(id);
	%>
	<c:set var="productVO" value="<%=productVO%>" />
	<!-- 내용 -->
	<div class="container">
		<!-- 1건의 상품. 1행 -->
		<div class="row">
			<!-- 이미지 div -->
			<div class="col-md-5">
				<img src="/images/${productVO.filename}"
				alt="${productVO.pname}" title="${productVO.pname}" 
				style="width:100%;" />
			</div>
			<!-- 6크기의 1열 div -->
			<div class="col-md-6">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p>
					<b>상품 코드 : </b>
					<span class="badge badge-danger">
						${productVO.productId}
					</span>
				</p>
				<p><b>제조사 : ${productVO.manufacturer}</b></p>
				<p><b>분   류 : ${productVO.category}</b></p>
				<p><b>재고수 : ${productVO.unitsInStock}</b></p>
				<h4>
					<%=productVO.getUnitPrice()%>
					<fmt:formatNumber value="${productVO.unitPrice}" 
						type="currency" currencySymbol="￦" />
				원</h4>
				<p>
					<form name="addForm" action="addCart.jsp?id=<%=productVO.getProductId()%>"
						method="post">
						<a href="#" class="btn btn-info">상품 주문&raquo;</a>
						<a href="cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
						<a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
					</form>
				</p>
			</div>
		</div>
	</div>	
	<!-- ---------상품 상세 끝-------------- -->

	<jsp:include page="footer.jsp" />
</body>
</html>









