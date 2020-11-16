package jaba.client.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import jaba.client.vo.ClientVO;

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
	

}
