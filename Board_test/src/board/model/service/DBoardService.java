package board.model.service;

import static common.jdbcDriver.JDBCTemplate.close;
import static common.jdbcDriver.JDBCTemplate.commit;
import static common.jdbcDriver.JDBCTemplate.getConnection;
import static common.jdbcDriver.JDBCTemplate.rollback;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import board.model.dao.DBoardDao;
import board.model.vo.DBoardVO;

public class DBoardService {

	public int getBoardCount() {
		Connection con = getConnection();
		int result = new DBoardDao().getBoardCount(con);
		close(con);
		return result;
	}

	public List<DBoardVO> getBoardAll() {
		Connection con = getConnection();
		List<DBoardVO> result = new DBoardDao().getBoardAll(con);
		close(con);
		return result;
	}

	public List<DBoardVO> getBoardByPage(int start, int end) {
		Connection con = getConnection();
		List<DBoardVO> result = new DBoardDao().getBoardByPage(con, start, end);
		close(con);
		return result;
	}

	public List<DBoardVO> getBoard(int bno) {
		Connection con = getConnection();
		List<DBoardVO> result = new DBoardDao().getBoard(con, bno);
		close(con);
		return result;
	}

	public int writeBoard(DBoardVO vo) { // d_board 에 1행 추가
		Connection con = getConnection();
		int result = 0;
		try {
			con.setAutoCommit(false);
			result = new DBoardDao().writeBoard(con, vo);
			if (result > 0)
				commit(con);
			else
				rollback(con);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con);
		}
		return result;
	}

}
