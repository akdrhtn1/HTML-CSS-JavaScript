<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외발생</title>

<%
	int sabun = Integer.parseInt(request.getParameter("sabun"));
	
	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;

	
	StringBuilder sql = new StringBuilder();
	try{
		//1. 드라이버 로딩
		Class.forName(DRIVER);
		//2. DB연결
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		//3. Statment 객체 생성(Connection 객체로부터)
		sql.append("DELETE FROM GUEST WHERE SABUN = ?");
		
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1,sabun);
		
		int result = pstmt.executeUpdate();
		%>
	<script>
		let result = <%=result%>;
		alert(result + "건이 삭제 되었습니다.");
	</script>	
	
<% 
	if(result >0){ 
		response.sendRedirect("list.jsp");	
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>

</head>
<body>
	<h1>사원 등록 실패</h1>
	<p>삭제처리를 하지 못했습니다<br>
	담당자(8282)에게 연락하세요</p>
	<a href="addForm.jsp">입력페이지로 이동</a>
	<a href="list.jsp">전체목록 보기</a>
</body>
</html>