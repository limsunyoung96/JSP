<%@page import="com.study.common.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.common.util.ProductList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>제품 목록</title>
<style>
.prod-list tbody td {border: 1px dashed;}
.prod-list tbody ul {padding-left: 20px;}
.prod-list tbody ul li {list-style: none; line-height: 1.4em;}

.prod-title a ,
.prod-title a:active,
.prod-title a:focus   {text-overflow:ellipsis; text-decoration: none; }

.prod-image {text-align: center;}
.prod-image img {
	 height: 150px; 
}
</style>
</head>
<body>

<div class="container">
<h3>제품 목록</h3>
<c:set var="list" value="<%=ProductList.getProductList() %>" />


<%
	List<ProdVO> list = ProductList.getProductList();
%>
<%-- <%=list%> --%>
<table class="prod-list">
	<caption class="hidden"><em>컴퓨터 제품 목록</em></caption>
	<colgroup>
		<col style="width: 33%;">
		<col style="width: 33%;">
		<col />
	</colgroup>
	<tbody>
		<%for(int i=0; i<list.size();i++){ %>
		<%
				if(i%3==0){
		%>
					<tr>
		<%
				}
		%>
			<td>
				<ul>
					<li class="prod-image"><a href="prodView.jsp?prodId=<%=list.get(i).getProdId()%>"><img alt="" src="<%=request.getContextPath()%><%=list.get(i).getProdImg()%>"></a>
					<li class="prod-title"><a href="prodView.jsp?prodId=<%=list.get(i).getProdId()%>"><%=list.get(i).getProdName()%></a>
					<li class="prod-price"><%=list.get(i).getProdPrice()%>원
					<li class="prod-reg-date">등록월 <%=list.get(i).getProdRegDate()%>
				</ul>
			</td>
			<%
				if(i%3==2){
			%>
					</tr>
			<%
				}
			} %>
	
	</tbody>

</table>
</div>
</body>
</html>
