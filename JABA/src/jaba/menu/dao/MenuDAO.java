package jaba.menu.dao;

import static jaba.common.jdbcdriver.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jaba.menu.vo.CustomVO;
import jaba.menu.vo.MenuVO;
import jaba.store.vo.StoreVO;

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
	
	// store_name 과 menu_name을 가지고 menuVO 한개를 return 
	public MenuVO selectMenu(Connection conn, String store_id, String menu_name) {
		MenuVO selectMenu = null;
		String sql = "select * from menu where store_id=? and menu_name=?";
		// 메뉴이름 중복되면 안된다. 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			pstmt.setString(2, menu_name);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				selectMenu = new MenuVO();
				selectMenu.setMenu_id(rs.getString("menu_id"));
				selectMenu.setStore_id(rs.getString("store_id"));
				selectMenu.setMenu_name(rs.getString("menu_name"));
				selectMenu.setMenu_price(rs.getInt("menu_price"));
				selectMenu.setMenu_img(rs.getString("menu_img"));
				selectMenu.setMenu_description(rs.getString("menu_description"));
				selectMenu.setMenu_category(rs.getString("menu_category"));
				selectMenu.setMenu_available(rs.getInt("menu_available"));
			} else { // store가 없으면
				System.out.println("DB에 일치하는 Menu 정보 없음");
				selectMenu = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return selectMenu;
	}

	// *************************************** CUSTOM ***************************************
	
	   // 해당 메뉴의 id를 참고하여 해당메뉴의 커스텀을 불러오고 List<customVO> 를 return 하는 메소드
	   public List<CustomVO> selectCustomList(Connection conn, String menu_id){
	      List<CustomVO> list = null;
	      String sql = "select * from custom where menu_id=?";
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, menu_id);
	         rs = pstmt.executeQuery();
	         if (rs.next()) {
	            list = new ArrayList<CustomVO>();
	            do {
	               CustomVO vo = new CustomVO();

	               vo.setCustom_id(rs.getString("custom_id"));
	               vo.setMenu_id(rs.getString("menu_id"));
	               vo.setCustom_name(rs.getString("custom_name"));
	               vo.setCustom_price(rs.getInt("custom_price"));
	               vo.setCustom_category(rs.getString("custom_category"));

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

	
	// 해당 메뉴의 커스텀 목록 이름을 List<String> 형태로 가져오는 메소드 
	public List<String> selectCustomCategoryList(Connection conn, String menu_id) {
		List<String> customList = null;
		String sql = "SELECT DISTINCT CUSTOM_CATEGORY FROM CUSTOM WHERE menu_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, menu_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				customList = new ArrayList<String>();
				do {
				String custom_category = rs.getString("custom_category");
				customList.add(custom_category);
				}while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 테스트
		String a = customList.get(0);
		String b = customList.get(1);
		System.out.println(a + "           " + b);
		// 
		close(rs);
		close(pstmt);
		return customList;
	}
	
	
	   // menu_id 와 커스텀 카테고리 이름으로 category_ListVo를 불러오는 메소드
	   public List<CustomVO> selectListByCustomCategory(Connection conn, String menu_id, String custom_category) {
	      List<CustomVO> list = null;
	      String sql = "select * from custom where menu_id=? and CUSTOM_CATEGORY=?"; // 외래키로 가져와야 한다!
	      try {
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, menu_id);
	         pstmt.setString(2, custom_category);
	         rs = pstmt.executeQuery();
	         if (rs.next()) {
	            list = new ArrayList<CustomVO>();
	            do {
	               CustomVO vo = new CustomVO();

	               vo.setCustom_id(rs.getString("custom_id"));
	               vo.setMenu_id(rs.getString("menu_id"));
	               vo.setCustom_name(rs.getString("custom_name"));
	               vo.setCustom_price(rs.getInt("custom_price"));
	               vo.setCustom_category(rs.getString("custom_category")); 

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

	   // *************************************** CUSTOM_CHECK ***************************************
		
	   // 선택된 List<String> 으로 구성된 check_id값들을 가져와서 CUSTOM_CHECK에 INSERT하는 dao 
	   
}