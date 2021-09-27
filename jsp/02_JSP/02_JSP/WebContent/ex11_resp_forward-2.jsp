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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

%>
	<h2>[ex11_resp_forward-2.jsp]</h2>
	<h2>아이디 : <%=id %></h2>
	<h2>비밀번호 : <%=pwd %></h2>
</body>
</html>