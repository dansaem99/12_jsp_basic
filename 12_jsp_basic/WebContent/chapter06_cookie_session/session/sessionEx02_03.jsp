<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<h3>마이페이지</h3>
	<% 
		// 세션 데이터 반환 > session.getAttribute("세션명");
		// getAttribte(); 메서드의 반환타입은 Object형 이므로 개발자가 직접 형 변환을 한 후 작업한다.
		String id = (String)session.getAttribute("id");
		String role = (String)session.getAttribute("role");
	%>
	
	<p><%=id %>(<%=role %>)님 로그인중</p>


</body>
</html>