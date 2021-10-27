package com.spring.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.spring.biz.common.JDBCUtil;
import com.spring.biz.user.UserVO;


@Repository
public class UserDAO {
	
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;	
	
	private final String USER_GET = "SELECT * FROM USERS1 WHERE ID = ? AND PASSWORD = ?";
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> JDBC 로 getUser() 실행");
		UserVO user = null;
		
		
		try {
			conn= JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setString(1,vo.getId());
			stmt.setString(2,vo.getPassword());
			
			rs = stmt.executeQuery();
			
			
			if(rs.next()){
				user = new UserVO(
						rs.getString("ID"),rs.getString("PASSWORD"),rs.getString("NAME"),rs.getString("ROLE"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, stmt, rs);
		}
		return user;
	}
	
}
