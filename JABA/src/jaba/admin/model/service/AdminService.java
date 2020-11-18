package jaba.admin.model.service;

import java.sql.Connection;

import jaba.admin.dao.AdminDAO;
import jaba.admin.vo.AdminVO;

import static jaba.common.jdbcdriver.JDBCTemplate.*;
public class AdminService {
	
	public AdminService() {
		
	}
	
	public int selectLogin(String admin_id, String admin_pw) {
		try {
			Connection conn = getConnection();
			AdminDAO dao = new AdminDAO();
			AdminVO vo = dao.selectLogin(conn, admin_id, admin_pw);
			close(conn);
			if (vo != null) {
				System.out.println("Admin 데이터 있음 return 1");
				return 1;
			} else {
				System.out.println("Admin 데이터 없음 return 2");
				return 2;
			}
		} catch (Exception e) {
			System.out.println("Admin 오류발생 return 3");
			return 3;
		}
	}
	
	// 아이디만 중복체크 admin_id와 확인 (회원가입 할때 사용)
	public int selectIdCheck(String user_id) {
		int result = 0;
		try {
			Connection conn = getConnection();
			AdminDAO dao = new AdminDAO();
			result = dao.selectIdCheck(conn, user_id);
			close(conn);
		}catch(Exception e) {
			e.printStackTrace();
			return 3;	// 오류발생
		}
		return result;
	}

}
