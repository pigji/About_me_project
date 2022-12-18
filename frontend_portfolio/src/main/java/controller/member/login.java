package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Dao.MemberDao;

/**
 * Servlet implementation class login
 */
@WebServlet("/member/login")
public class login extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			// form input태그 변수 요청
			String mid = request.getParameter("mid");
			String mpassword = request.getParameter("mpassword");
			
			// DAO 호출
			int result = MemberDao.getInstance().login(mid, mpassword);
			
			// 로그인 세션 할당
			if( result == 1 ) {
				HttpSession se = request.getSession();	// 세션 객체 선언
				se.setAttribute( "mid", mid );	// 세션 생성
			}
			
			// 응답
			response.getWriter().print( result );
			
	}
	
	private static final long serialVersionUID = 1L;
       
  
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }





	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
