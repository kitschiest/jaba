package jaba.store.model.service;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import jaba.store.dao.StoreDAO;
import jaba.store.vo.StoreVO;

import static jaba.common.jdbcdriver.JDBCTemplate.*;

public class StoreService {
	
	public StoreService() {
	}
	
	public int selectLogin(String store_id, String store_pw) {
		try {
			Connection conn = getConnection();
			StoreDAO dao = new StoreDAO();
			StoreVO vo = dao.selectLogin(conn, store_id, store_pw);
			close(conn);
			if (vo != null) {
				System.out.println("Store 데이터 있음 return 1");
				return 1;
			} else {
				System.out.println("Store 데이터 없음 return 2");
				return 2;
			}
		} catch (Exception e) {
			System.out.println("Store 오류발생 return 3");
			return 3;
		}
	}
	
	// store 정보를 긁어오는 메소드
	public StoreVO selectStore(String store_id, String store_pw) {
		StoreVO vo = null;
		Connection conn = getConnection();
		try {
			StoreDAO dao = new StoreDAO();
			vo = dao.selectLogin(conn, store_id, store_pw);
			close(conn);
		} catch (Exception e) {
			System.out.println("Store 오류발생 return 3");

		}
		return vo;
	}

}
