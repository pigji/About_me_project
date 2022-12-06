package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import model.Dao.MemberDao;
import model.Dto.MemberDto;

/**
 * Servlet implementation class info
 */
@WebServlet("/member/info")
public class info extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 정보 요청
		String mid = (String)request.getSession().getAttribute("mid");
		
		// DB 처리
		MemberDto dto = MemberDao.getInstance().getinfo(mid);
		JSONObject object = new JSONObject();
			object.put( "mno", dto.getMno() );
			object.put( "mid", dto.getMid() );
			object.put( "mpassword", dto.getMpassword() );
			object.put( "mname", dto.getMname() );
			object.put( "mphone", dto.getMphone() );
			object.put( "paddress", dto.getMaddress() );
			object.put( "mdate", dto.getMdate() );
			object.put( "mpoint", dto.getMpoint() );
		
		// 응답
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print( object );
			
	}
	
	private static final long serialVersionUID = 1L;
       
    
    public info() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
