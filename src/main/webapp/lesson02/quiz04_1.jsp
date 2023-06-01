<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환 결과</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
		// 1cm 1inch =>  * 0.39
		// yard => 0.011
		// feet => 0.032
		// meter => 0.01
	
		int cm = Integer.valueOf(request.getParameter("length"));
		String[] unitArr = request.getParameterValues("unit");
		
		String inch = null;
		String yard = null;
		String feet = null;
		String meter = null;
		
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= cm %>cm</h2>
		<hr>
		<p>
			<h2>
				<%
				if (unitArr != null) {
					for (String unit : unitArr) {
						
							if (unit.equals("inch")) {
								inch = (cm * 0.393701) + "in";
								out.println(inch + "<br>");
							} else if (unit.equals("yard")) {
								yard = (cm * 0.0109361) + "yd";
								out.println(yard + "<br>");
							} else if (unit.equals("feet")) {
								feet = (cm * 0.0328084) + "ft";
								out.println(feet + "<br>");
							} else if (unit.equals("meter")) {
								meter = (cm * 0.01) + "m";
								out.println(meter + "<br>");
							}
						
					}
				}
				%>
			
			</h2>
			
		</p>
	</div>
</body>
</html>