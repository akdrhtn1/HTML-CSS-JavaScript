<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식(expression)</title>
</head>
<body>
	<h1>표현식(expression)</h1>
	<p>HTML 문을 사용해서 클라이언트에게 전달</p>
	<hr>
	<% out.print("<h2>out객체를 이용해서 클라이언트에게 전달</h2>"); %>
	<h2><% out.print("out객체를 이용해서 클라이언트에게 전달"); %></h2>
	<hr>
	
	<h2>표현식(expression) 사용해서 클라이언트에게 전달</h2>
	<h3><%="표현식 사용해서 클라이언트에게 전달" %></h3>
	<hr><hr>
</body>
</html>




