<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servletEx04CartList</title>
</head>
<body>

	<h3>세션확인</h3>
	<p>${sessionScope.id }</p>
	<p>${sessionScope.role }</p>
	<p>${sessionScope.isMobile }</p>
	
	<hr>
	
	<h3>리퀘스트 화깅</h3>
	<p>${title }</p>
	<p>${name }</p>
	<p>${contect }</p>

</body>
</html>