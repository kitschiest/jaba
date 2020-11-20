package jaba.menu.dao;

import static jaba.common.jdbcdriver.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jaba.menu.vo.MenuVO;

public class MenuDAO {

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// 해당 매장의 모든 메뉴를 List로 불러오는 메소드작성
	public List<MenuVO> selectList(Connection conn, String store_id) {
		List<MenuVO> list = null;
		String sql = "select * from menu where store_id=?"; // 외래키로 가져와야 한다!
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<MenuVO>();
				do {
					MenuVO vo = new MenuVO();

					vo.setMenu_id(rs.getString("menu_id"));
					vo.setStore_id(rs.getString("store_id"));
					vo.setMenu_name(rs.getString("menu_name"));
					vo.setMenu_price(rs.getInt("menu_price"));
					vo.setMenu_img(rs.getString("menu_img"));
					vo.setMenu_description(rs.getString("menu_description"));
					vo.setMenu_category(rs.getString("menu_category"));
					vo.setMenu_available(rs.getInt("menu_available"));

					list.add(vo);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return list;
	}

	// 카테고리별로 뽑아올 MENU List

	// distinct 메뉴 카테고리 해서 카테고리 갯수와 카테고리 이름을 가져오는 메소드
	public List<String> selectCategoryList(Connection conn, String store_id) {
		List<String> categoryList = null;
		String sql = "SELECT DISTINCT MENU_CATEGORY from menu where store_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				categoryList = new ArrayList<String>();
				do {
				String menu_category = rs.getString("MENU_CATEGORY");
				categoryList.add(menu_category);
				}while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 테스트
		String a = categoryList.get(0);
		String b = categoryList.get(1);
		System.out.println(a + "           " + b);
		// 
		close(rs);
		close(pstmt);
		return categoryList;
	}
	

	// store_id 와 메뉴 카테고리 이름으로 menu_ListVo를 불러오는 메소드 
	public List<MenuVO> selectListByCategory(Connection conn, String store_id, String menu_category) {
		List<MenuVO> list = null;
		String sql = "select * from menu where store_id=? and MENU_CATEGORY=?"; // 외래키로 가져와야 한다!
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			pstmt.setString(2, menu_category);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<MenuVO>();
				do {
					MenuVO vo = new MenuVO();

					vo.setMenu_id(rs.getString("menu_id"));
					vo.setStore_id(rs.getString("store_id"));
					vo.setMenu_name(rs.getString("menu_name"));
					vo.setMenu_price(rs.getInt("menu_price"));
					vo.setMenu_img(rs.getString("menu_img"));
					vo.setMenu_description(rs.getString("menu_description"));
					vo.setMenu_category(rs.getString("menu_category"));
					vo.setMenu_available(rs.getInt("menu_available"));

					list.add(vo);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close(rs);
		close(pstmt);
		return list;
	}

	//

	//

	//

}