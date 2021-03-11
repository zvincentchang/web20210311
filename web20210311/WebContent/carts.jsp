<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carts</title>
</head>
<body>

	<jsp:useBean id="cart" scope="session" class="beans.MyBean" />
	<jsp:setProperty name="cart" property="*" />
	<%
	   cart.processRequest();
	%>

	<br> You have the following items in your cart:
	<% 
	    String[] items = cart.getItems();
	    pageContext.setAttribute("carts", items);
	%>
	<ol>
		<c:forEach var="current" items="${carts}">
			<li>
			   <c:out value="${current}" />
			</li>			
		</c:forEach>
		
	</ol>


</body>
</html>