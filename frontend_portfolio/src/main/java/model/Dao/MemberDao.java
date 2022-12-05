package model.Dao;

import model.Dto.MemberDto;

public class MemberDao extends Dao{ // DB연동 Dao 상속시켜주기!!

	// 싱글톤 객체 선언[ 공유메모리 ]
	private static MemberDao mdao = new MemberDao();
	public static MemberDao getInstance() { return mdao;}
	 
	//1. 회원가입 메소드 
	public boolean signup( MemberDto dto ) {
		String sql = "insert into "
					+ " member( mid ,mpassword, "
					+ " mname,mphone, "
					+ " memail,maddress) "
					+ " values( ?, ?, ?, ?, ?, ?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , dto.getMid() );
			ps.setString( 2 , dto.getMpassword() );
			ps.setString( 3 , dto.getMname() );
			ps.setString( 4 , dto.getMphone() );
			ps.setString( 5 , dto.getMemail() );
			ps.setString( 6 , dto.getMaddress() );
			ps.executeUpdate(); return true;
		}catch (Exception e) {System.out.println( "회원가입 오류 : " + e ); }
		return false; 	
		
	} // 회원가입 end 
		
	// 2. 로그인

	// 3. 아이디찾기

	// 4. 비밀번호 찾기[ 임시 비밀번호 발급 ]

	// 5. 임시 비밀번호 업데이트

	// 6. 회원정보 호출

	// 7. 모든 회원정보 호출

	// 8. 회원탈퇴

	// 9. 아이디 중복체크
	public boolean incheck( String mid ) {
		String sql = "select * from member where mid = ?";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if( rs.next() ) { return true; }
		}catch( Exception e ) { System.out.println("아이디 중복체크 오류 : " +e ); }
		return false;
	}
	// 10. 이메일 중복체크
	public boolean emailcheck( String memail ) {
		String sql = "select * from member where memail = ? ";
		try{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if( rs.next() ) return true;
		}catch( Exception e ) { System.out.println("이메일 중복체크 오류 : " + e); }
		return false;
	}

	// 11. 회원정보 수정

	// 12 회원아이디 --> 회원번호로 구분

} // class end
