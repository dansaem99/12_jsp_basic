<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	
		request.setCharacterEncoding("utf-8");
	
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int myAnswer = Integer.parseInt(request.getParameter("answer"));
		int answer = num1 * num2;
		
		String result = "";
		
		if (myAnswer == answer) result = "정답!";
		else result = "땡";
	
	%>
	
	<h3><%=num1 %> X <%=num2 %> = <%=myAnswer %></h3>
	<h3>결과 : <%=result %></h3>
	
</body>
</html>