<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 전달받은 데이터(파라미터 값) 사용해서 DB데이터 수정 처리 
	 수정할 데이터 : 성명, 금액, 날짜(SYSDATE)
	 정상처리 : LIST.JSP 이동 
	 예외 발생시 : 현재 페이지 보여주기
--%>
	<%
		request.setCharacterEncoding("UTF-8"); 
		int sabun = Integer.parseInt(request.getParameter("sabun"));
		String name = request.getParameter("name");
		int pay = Integer.parseInt(request.getParameter("pay"));
		
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
			sql.append("UPDATE GUEST SET NAME = ?, PAY = ?, REGDATE = SYSDATE WHERE SABUN = ?");
			pstmt = conn.prepareStatement(sql.toString());
			//4. 쿼리실행
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);

			int result = pstmt.executeUpdate();
		
			if(result >0){
				response.sendRedirect("detail.jsp?sabun="+sabun);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();	
				
				
			}catch(Exception e){
				e.printStackTrace();
			}
	}
		
	%>
<html>
<head>
<meta charset="UTF-8">
<title>예외발생</title>
</head>
<body>
	<h1>사원 등록 실패</h1>
	<p>수정처리를 하지 못했습니다<br>
	담당자(8282)에게 연락하세요</p>
	<a href="detail.jsp?sabun=<%=sabun%>">상세페이지로 이동</a>
	<a href="list.jsp">전체목록 보기</a>
</body>
</html>