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
	
		String me = request.getParameter("me");
		String com = request.getParameter("com");
		
		String result = "";
		
		if (com.equals(me)) result = "비겼다.";
		else if (me.equals("가위")) result = "졌다.";
		else if (me.equals("보")) result = "이겼다.";
		else result = "잘못된 입력값 입니다. 가위 혹은 바위 혹은 보를 입력해주세요.";
	
	%>
	
	<h3>com : <%=com %></h3>
	<h3>me : <%=me %></h3>
	<h3><%=result %></h3>

</body>
</html>