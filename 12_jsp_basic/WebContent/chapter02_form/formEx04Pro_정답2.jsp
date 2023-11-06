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
		
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String result = "로그인 실패";
		
		if (dbId.equals(id) && dbPw.equals(pw)) result = "로그인 성공";
	
	%>
	
	<h1><%=result %></h1>	

</body>
</html>