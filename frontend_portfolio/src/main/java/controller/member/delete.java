package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dao.MemberDao;


@WebServlet("/member/delete")
public class delete extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 변수요청
		String massword = request.getParameter("mpassword");
		// 세션호출
		String mid = (String)request.getSession().getAttribute("mid");
		// DAO
		boolean result = MemberDao.getInstance().delete(mid, massword);
		// 반환
		response.getWriter().print(result);
		
	}

	private static final long serialVersionUID = 1L;
       

    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }


	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
