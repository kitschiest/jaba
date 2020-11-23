package jaba.store.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jaba.store.model.service.StoreService;
import jaba.store.vo.StoreVO;

/**
 * Servlet implementation class StoreLocDistance
 */
@WebServlet("/store/storeLocDistance.do")
public class StoreLocDistance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StoreLocDistance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// ?뒤에 값을 받아와서 셋팅해준다. 
		String brand = request.getParameter("brand");
		String city = request.getParameter("city");
//		String path = request.getContextPath();
		
		//해당 req.para ~ 값이 없으면 null 이다. 
		if(brand != null) {	// brand가 not null이면 익스플로러에 brand?
			System.out.println(brand);
			System.out.println("storeList--explore 연결 서블릿 : brand명 검색");
			StoreService sService = new StoreService();	// StoreService 생성
			List<StoreVO> storeList = sService.selectList(brand);	// 와 같은 작업을 해줌 
			request.getSession().setAttribute("storeList", storeList);	// StoreList를 세션으로 넘김 
			 // 라고치고 해당 url로 forward로 이동~~~ 
			System.out.println("brand부분 작동");
			RequestDispatcher disp = request.getRequestDispatcher("/explore.jsp");
//			RequestDispatcher disp = request.getRequestDispatcher("./explore.jsp/?brand=" + brand);
			disp.forward(request, response);
		}
		if(city != null) {
			System.out.println(city);
			System.out.println("storeList--explore 연결 서블릿 : city명 검색");
			StoreService sService = new StoreService();	// StoreService 생성
			List<StoreVO> storeList = sService.selectList(city);	// 와 같은 작업을 해줌 
			request.getSession().setAttribute("storeList", storeList);	// StoreList를 세션으로 넘김 
			 // 라고치고 해당 url로 forward로 이동~~~ 
			System.out.println("city부분 작동");
			RequestDispatcher disp = request.getRequestDispatcher("/explore.jsp");
//			RequestDispatcher disp = request.getRequestDispatcher("./explore.jsp/?brand=" + brand);
			disp.forward(request, response);
		}
	
		out.flush();
		out.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
