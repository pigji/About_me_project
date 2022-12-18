package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dao.MemberDao;

/**
 * Servlet implementation class idcheck
 */
@WebServlet("/member/idcheck")
public class idcheck extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			// 변수 요청
			String mid = request.getParameter("mid");
			
			// DAO 처리
			boolean result = MemberDao.getInstance().idcheck( mid );
			
			// 응답
			response.getWriter().print( result );
	}
	private static final long serialVersionUID = 1L;
       
   
    public idcheck() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
