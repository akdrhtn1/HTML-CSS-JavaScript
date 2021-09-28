<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//JDBC 프로그램을 위한 변수 선언
	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs =null;
	
	//사용할 SQL 쿼리 작성
	StringBuilder sql = new StringBuilder();
	sql.append("SELECT SABUN, NAME, REGDATE, PAY FROM GUEST ");
	sql.append("ORDER BY SABUN");
	
	//인원수
	int cnt=0;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
</head>
<body>
	<h1>사원목록</h1>
	<table border>
		<thead>
			<tr>
				<th>사번</th>
				<th>성명</th>
				<th>날짜</th>
				<th>금액</th>
				<th>상세보기</th>
			</tr>
		</thead>
		<tbody>

<%
		try{
			//1. 드라이버 로딩
			Class.forName(DRIVER);
			//2. DB연결
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			//3. Statment 객체 생성(Connection 객체로부터)
			pstmt = conn.prepareStatement(sql.toString());
			//4. 쿼리실행
			rs = pstmt.executeQuery();
			
			while(rs.next()){%>
				<tr>
					<td><%=rs.getInt("SABUN") %></td>
					<td><%=rs.getString("NAME") %></td>
					<td><%=rs.getDate("REGDATE") %></td>
					<td><%=rs.getInt("PAY") %></td>
					<td>
						<a href="detail.jsp?sabun=<%=rs.getInt("SABUN") %>">상세보기</a>
					</td>
				</tr>
<% 		
			
			}
			rs.close();
			
			rs = pstmt.executeQuery("SELECT COUNT(*) AS CNT FROM GUEST");
			if(rs.next()){
				cnt = rs.getInt("CNT");
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
		</tbody>
	</table>
	<p>전체 인원 : <%=cnt %></p>
	<p><a href="addForm.jsp">사원등록</a> </p>
	
</body>
</html>