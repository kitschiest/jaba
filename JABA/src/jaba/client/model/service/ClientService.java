package jaba.client.model.service;

import java.sql.Connection;

import jaba.client.dao.ClientDAO;
import jaba.client.vo.ClientVO;

import static jaba.common.jdbcdriver.JDBCTemplate.*;

public class ClientService {


	public ClientService() {

	}
	
	// client 로그인 메소드
	public int selectLogin(String user_id, String user_pw) {
		try {
			Connection conn = getConnection();
			ClientDAO dao = new ClientDAO();
			ClientVO vo = dao.selectLogin(conn, user_id, user_pw);
			close(conn);
			if (vo != null) {
				System.out.println("client 데이터 있음 return 1");
				return 1;
			} else {
				System.out.println("client 데이터 없음 return 2");
				return 2;
			}
		} catch (Exception e) {
			System.out.println("오류발생 return 3");
			return 3;
		}
	}
	
	// 아이디만 중복체크 (회원가입 할때 사용)
	public int selectIdCheck(String user_id) {
		int result = 0;
		try {
			Connection conn = getConnection();
			ClientDAO dao = new ClientDAO();
			result = dao.selectIdCheck(conn, user_id);
			close(conn);
		}catch(Exception e) {
			e.printStackTrace();
			return 3;	// 오류발생
		}
		return result;
	}
	
	

}
