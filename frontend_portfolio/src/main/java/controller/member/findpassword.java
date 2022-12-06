package controller.member;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dao.MemberDao;

/**
 * Servlet implementation class findpassword
 */
@WebServlet("/member/findpssword")
public class findpassword extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ajax 변수 요청
		String mid = request.getParameter("mid");
		String memail = request.getParameter("memail");
		
		// DB메소드 호출
		boolean result = MemberDao.getInstance().findpassword(mid, memail);
		String randstr = "";	// 랜덤문자 [ 임시 비밀번호 ]
		
		// 아이디와 이메일이 동일할 경우 임시 비밀번호 생성
		if( result ) {
			Random random = new Random();
			for( int i=0; i<15; i++ ) {
				randstr += (char)(random.nextInt(26)+97 );	// 아스키코드
			}
			// 기존 비밀번호와 임시비밀번호 교체
			MemberDao.getInstance().passwordchange(mid, randstr);
		}
		// 반환
		response.getWriter().print( randstr ); 	// ajax에 임시 비밀번호 전송

	}
	private static final long serialVersionUID = 1L;
       
    
    public findpassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
