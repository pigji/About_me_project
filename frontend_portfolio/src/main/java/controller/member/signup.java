package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dao.MemberDao;
import model.Dto.MemberDto;

@WebServlet("/member/signup")
public class signup extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");

		// 입력받은 데이터 요청
		String mid = request.getParameter("mid");
		String mpassword = request.getParameter("mpassword");
		String mpasswordconfirm = request.getParameter("mpasswordconfirm");
		String mname = request.getParameter("mname");
		String mphone = request.getParameter("mphone");
		String memail = request.getParameter("memail");

		// 주소 4개 요청
		String maddress1 = request.getParameter("maddress1");
		String maddress2 = request.getParameter("maddress2");
		String maddress3 = request.getParameter("maddress3");
		String maddress4 = request.getParameter("maddress4");

		
		// 주소 4개 --> 하나의 변수
		String maddress = maddress1+","+maddress2+","+maddress3+","+maddress4;
		// 2. 변수6개 ---> DTO 객체화 
		MemberDto dto = new MemberDto( 0, mid,mpassword, mname,mphone, memail, maddress, null , 0);
		// 3. 통신 확인 [ HTML ---> JAVA ]
		System.out.println( dto.toString() );
		boolean result = MemberDao.getInstance().signup(dto);
		// 5. 결과 제어
		if( result ) { response.sendRedirect("/frontend_portfolio/member/login.jsp");System.out.println("Dd");}
		else { }
		 
	}
	
	private static final long serialVersionUID = 1L;
    
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
