<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	#wrap {height:1100px}
	header {}
	.bg_orange {background-color:#FF8000}
	nav {}
	.contents {height:500px}
	footer {height:100px}
	a, a:hover {color:white}
	.border_side {border-style:solid; ,border-color:#FF8000;, border-width:1px}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.`nickname`, B.`pictureUrl`, `title`, `price`	from seller as A join used_goods as B on A.id = B.sellerId";
	ResultSet res = ms.select(selectQuery);
	
%>
	<div id="wrap" class="container">
		<header class="bg-success">
			<h2 class="bg_orange text-white text-center mb-0">HONG당무 마켓</h2>
		</header>
		<nav class="bg-danger">
			<ul class="nav nav-fill w-10 bg_orange">
				<li class="nav-item"><a href="#" class="nav-link">리스트</a></li>
				<li class="nav-item"><a href="#" class="nav-link">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div class="d-flex flex-wrap justify-content-between">
				<%
					while (res.next()) {
				%>
					<div class="p-2 border border_side">
						<img src="<%= res.getString("pictureUrl") %>" alt="판매사진" width="250">
						<div><%= res.getString("title") %></div>
						<div><%= res.getInt("price") %></div>
						<div><%= res.getString("nickname") %></div>				
					</div>
				<%
					}
				%>
			</div>
		</section>
		<footer class="bg-secondary">Copyright © marondal 2021</footer>
	
	</div>
<%
	// DB 연결 해제
	ms.disconnect();
%>
</body>
</html>