<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

</head>
<body>
	<h1>메인페이지(main)</h1>
	<a href="sub.jsp">서브페이지로 이동</a>
	<h2>메인페이지 내용</h2>
	<p>.................</p>
	<p>.................</p>
	<p>.................</p>
	<p>.................</p>
	<hr><hr>
	<%-- 디렉티브(지시어, directive) include : 복사 & 붙여넣기 형태로 적용됨 --%>
	<%@ include file="01_declaration.jsp" %>
	<%@ include file="02_scriptlet.jspf" %>
	<%@ include file="footer.jsp" %>
	
</body>
</html>