<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="../1.header.jsp" %>
	<%
		// JSP 스크립트 태그[ JAVa 코드 작성 공간 ]
			//session.invalidate();	// 모든 세션 제거
		session.setAttribute("mid", null);	// 특정 세션 제거
	
		// 페이지 전환[ 메인페이지 이동 ]
		response.sendRedirect("/frontend_portfolio/1.index.jsp");
	%>


</body>
</html>