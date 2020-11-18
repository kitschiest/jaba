package jaba.client.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jaba.client.vo.ClientVO;
import static jaba.common.jdbcdriver.JDBCTemplate.*;

public class ClientDAO {
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ClientVO selectLogin(Connection conn, String user_id, String user_pw) {
		ClientVO vo = null;
		String sql = "select * from client where user_id=? and user_pw=?";	// 

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			rs = pstmt.executeQuery();
			
			if (rs.next()) { // ���̵� ������ vo�� ������ ��Ƽ� �Ѱ���
				vo = new ClientVO();
				vo.setUser_id(rs.getString("user_id"));
				vo.setUser_pw(rs.getString("user_pw"));
			} else { // ���̵� ������� vo�� null�� �ְ� ��ȯ
				System.out.println("DB에 일치하는 Client 정보 없음");
				vo = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("sql 오류");
		}finally{
			close(rs);
			close(pstmt);
		}
		return vo;
	}
	
	
	public int selectIdCheck(Connection conn, String user_id) {
		String sql = "select * from client where user_id=?";
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
	
	public int insertClient(Connection conn, String user_id, String user_pw, String user_name, String user_phone) {
		String sql ="insert into client(user_id,user_pw,user_name,user_phone) values(?,?,?,?)";
		int result = 0;	// insert가 제대로 작동했는지 확인
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			pstmt.setString(3, user_name);
			pstmt.setString(4, user_phone);
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("sql insert 오류");
		}finally {
			close(pstmt);
		}
		return result;
	}


}
