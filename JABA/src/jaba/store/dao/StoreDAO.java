package jaba.store.dao;

import static jaba.common.jdbcdriver.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jaba.store.vo.StoreVO;

public class StoreDAO {
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public StoreVO selectLogin(Connection conn, String store_id, String store_pw) {
		StoreVO vo = null;
		String sql = "select * from store where store_id=? and store_pw=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			pstmt.setString(2, store_pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new StoreVO();
				vo.setStore_id(rs.getString("store_id"));
				vo.setStore_name(rs.getString("store_name"));
				
			}else { // store가 없으면 
				System.out.println("DB에 일치하는 Store 정보 없음");
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

	// store_id 와도 중복되면 안되기 때문에 중복체크
	public int selectIdCheck(Connection conn, String user_id) {
		String sql = "select * from store where store_id=?";
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