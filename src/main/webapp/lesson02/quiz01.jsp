<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	1. 1부터 n까지의 합계를 구하는 함수
	<br>
	<%!		
		// 1) 합계
		// input(n), output(합계)

		public int getSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	2. 점수들의 평균 구하기
	<br>
	<%
		int sum = 0;
		double average = 0;
		int[] scores = {80, 90, 100, 95, 80};
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		average = sum / (double)scores.length;
	
	%>
	
	3. 채점 결과
	<br>
	<%
		int correct = 0;
		int score = 0;
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				correct ++;
			}
		}
		score = correct * 10;
	%>
	
	4. 나이 구하기
	<br>
	<%
		String birthDay = "20010820";
		String birth = birthDay.substring(0, 4);
		// out.print(birth);
		int year = Integer.parseInt(birth);
		int age = 2023 - year + 1;
		
	%>
	
	
	<h2>1부터 50까지의 합은 <%= getSum(50) %></h2>
	<h2>평균 점수는 <%= average %>입니다.</h2>
	<h2>채점 결과는 <%= score %>입니다.</h2>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
	
	
</body>
</html>