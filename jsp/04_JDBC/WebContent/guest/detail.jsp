<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<%



	int sabun = Integer.parseInt(request.getParameter("sabun"));

	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs =null;
	
	//DB 데이터 저장용 변수
	String name= "";
	Date regdate = null;
	int pay = 0;
	StringBuilder sql = new StringBuilder();
	
	try{
		Class.forName(DRIVER);
		//2. DB연결
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		//사용할 SQL 쿼리 작성

		sql.append("SELECT SABUN, NAME, REGDATE, PAY FROM GUEST ");
		sql.append("WHERE SABUN = ?");
		pstmt = conn.prepareStatement(sql.toString());
		pstmt.setInt(1, sabun);
		rs = pstmt.executeQuery();
	
		if(rs.next()){
			//rs.getInt("SABUN");
			name = rs.getString("NAME");
			regdate = rs.getDate("REGDATE");
			pay = rs.getInt("PAY");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(rs!=null) rs.close();
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
<title>상세페이지</title>
</head>
<body>
	<h1>상세정보</h1>
	<table>
		<tr>
			<th>사번</th>
			<td><%=sabun %></td>
		</tr>
		
		<tr>
			<th>성명</th>
			<td><%=name %></td>
		</tr>
		
		<tr>
			<th>날짜</th>
			<td><%=regdate %></td>
		</tr>
		
		<tr>
			<th>금액</th>
			<td><%=pay %></td>
		</tr>
	</table>
	<%--<%String name1 = URLEncoder.encode(name,"UTF-8"); --%>
	
	<a href="editForm.jsp?sabun=<%=sabun %>&name=<%=URLEncoder.encode(name,"UTF-8") %>&pay=<%=pay %>">수정</a>
	<a href="delete.jsp?sabun=<%=sabun %>">삭제</a>
	<a href="list.jsp">목록보기</a>
</body>
</html>