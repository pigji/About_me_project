package controller.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.Dao.MemberDao;
import model.Dto.MemberDto;

/**
 * Servlet implementation class infolist
 */
@WebServlet("/member/infolist")
public class infolist extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<MemberDto> list = MemberDao.getInstance().getinfolist();
		
		// Dto --> JSON
			// JSONObject 여러개를 담을 수 있는 JSON 리스트 선언
		JSONArray array = new JSONArray();
		for( MemberDto dto : list ) {
			// JSONObject 객체 생성
			JSONObject object = new JSONObject();
			// JSONObject 정보 담기
			object.put( "mno", dto.getMno() );
			object.put( "mid", dto.getMid() );
			object.put( "mpname", dto.getMphone() );
			object.put( "mphone", dto.getMphone() );
			object.put( "memail", dto.getMemail() );
			System.out.println( "확인 : " + dto.getMemail() );
			
			object.put( "maddress", dto.getMaddress() );
			object.put( "mdate", dto.getMdate() );
			object.put( "mpoint", dto.getMpoint() );
			array.add( object );
		}
		response.setCharacterEncoding("UTF-8"); // 한글인코딩
		response.getWriter().print( array );
		
		
	}
	
	private static final long serialVersionUID = 1L;
       
  
    public infolist() {
        super();
        // TODO Auto-generated constructor stub
    }


	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
