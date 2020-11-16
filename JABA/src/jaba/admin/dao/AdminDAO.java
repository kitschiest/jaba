package jaba.admin.dao;

import static jaba.common.jdbcdriver.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jaba.admin.vo.AdminVO;


public class AdminDAO {
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public AdminVO selectLogin(Connection conn, String admin_id, String admin_pw) {
		AdminVO vo = null;
		String sql = "select * from admin where admin_id=? and admin_pw=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			pstmt.setString(2, admin_pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new AdminVO();
				vo.setAdmin_id(rs.getString("admin_id"));
				vo.setAdmin_pw(rs.getString("admin_pw"));
				
			}else { // store가 없으면 
				System.out.println("DB에 일치하는 admin 정보 없음");
				vo = null;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return vo;
	}

	// admin_id 와도 중복되면 안되기 때문에 중복체크
	public int selectIdCheck(Connection conn, String user_id) {
		String sql = "select * from admin where admin_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return 1;	// 1이면 중복된 아이디
			}else {
				return 2;	// 2이면 사용가능한 아이디
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return 0;
	}
	
	

}
