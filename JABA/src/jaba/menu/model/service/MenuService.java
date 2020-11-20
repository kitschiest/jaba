package jaba.menu.model.service;

import static jaba.common.jdbcdriver.JDBCTemplate.close;
import static jaba.common.jdbcdriver.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jaba.menu.dao.MenuDAO;
import jaba.menu.vo.CustomVO;
import jaba.menu.vo.MenuVO;

public class MenuService {
   public MenuService() {

   }

   // menu 리스트 정보를 긁어오는 메소드
   public List<MenuVO> selectList(String store_id) {
      List<MenuVO> list = null;
      Connection conn = getConnection();
      try {
         MenuDAO dao = new MenuDAO();
         list = dao.selectList(conn, store_id);
         close(conn);
      } catch (Exception e) {
         e.printStackTrace();
      }
      return list;
   }
   
	// distinct 메뉴 카테고리 해서 카테고리 갯수와 카테고리 이름을 가져오는 메소드 - 서비스
   public List<String> selectCategoryList(String store_id){
	   List<String> categoryList = null;
	   Connection conn = getConnection();
	   try {
		   MenuDAO dao = new MenuDAO();
		   categoryList = dao.selectCategoryList(conn, store_id);
		   System.out.println("서비스파일부분 test");
		   System.out.println(categoryList.get(0));
		   System.out.println(categoryList.get(1));
		   close(conn);
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   
	   return categoryList;
   }
   
   // store_id 와 메뉴 카테고리 이름으로 menu_ListVo를 불러오는 메소드 - 서비스
   public List<MenuVO> selectListByCategory(String store_id, String menu_category){
	   List<MenuVO> list = null;
	   Connection conn = getConnection();
	   try {
		   MenuDAO dao = new MenuDAO();
		   list = dao.selectListByCategory(conn, store_id, menu_category);
		   close(conn);
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return list;
   }
   
   
   // store_id를 받아와서 메뉴카테고리 별로 List<menu_ListVo>를 만들어주는 메소드
   public List<List<MenuVO>> selectmenuListList(String store_id){
	   List<List<MenuVO>> sortList = null;
	   // 매장 id를 통해서 카테고리 리스트를 불러옴
	   List<String> categoryList = selectCategoryList(store_id);
	   // sortList 객체 생성
	   sortList = new ArrayList<List<MenuVO>>();
	   // 사이즈 categoryList 만큼 반복
	   for(int i=0; i<categoryList.size(); i++) {
		   List<MenuVO> list = selectListByCategory(store_id, categoryList.get(i));
		   sortList.add(list);
	   }
	   return sortList;
   }
   
   //=======================================CUSTOM=======================================//
   // 
   // 
   
}