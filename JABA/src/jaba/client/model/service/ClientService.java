package jaba.client.model.service;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import jaba.client.dao.ClientDAO;
import jaba.client.vo.ClientVO;

import static jaba.common.jdbcdriver.JDBCTemplate.*;

public class ClientService {


	public ClientService() {

	}

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

}
