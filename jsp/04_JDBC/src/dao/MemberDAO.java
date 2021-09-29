package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	
	Connection con; //데이터베이스 접근할수있도록 설정
	PreparedStatement pstmt; // DB에서 쿼리를 실행 시켜주는 객체
	ResultSet rs; //DB의 테이블의 결과를 리턴받아 자바에 저장해주는 객체
	
	public void getCon() {

//		커넷션풀을 이용해서 db에 접근
		try {
			//외부에서 DB를 읽어드려야 하기에 
			Context initctx = new InitialContext();
			//톰캣 서버에 정보를담아놓은 곳으로 이동
			Context envctx = (Context) initctx.lookup("java:comp/env");
			//데이터 소스 객체를 선언
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			//데이터 소스를 기준으로 커넷션을 연결해주시오
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int selectId(String id) {
		
		int count = 0;
		StringBuilder sql = new StringBuilder();
		
		try{
			getCon();
			
			sql.append("SELECT COUNT(*) FROM MEMBER WHERE ID = ?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				count = rs.getInt(1);
			}
				
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return count;
		
	}
}
