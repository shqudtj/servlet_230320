<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<div class="mr-3 col-2">
		<a href="/lesson03/quiz02/melong.jsp" class=" text-success"><h2>Melong</h2></a>
	</div>	
	<div class="d-flex col-10">
		<form method="get" action="/lesson03/quiz02/melong_info.jsp">
			<div class="input-group">
				<input type="text" class="form-control" name="search" placeholder="검색" value="<%= request.getParameter("search") %>">
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">검색</button>
				</div>
			</div>
		</form>
	</div>
</header>