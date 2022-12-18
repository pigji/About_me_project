package model.Dao;

import java.util.ArrayList;

import model.Dto.MemberDto;

public class MemberDao extends Dao{ // DB연동 Dao 상속시켜주기!!

	// 싱글톤 객체 선언[ 공유메모리 ]
	private static MemberDao mdao = new MemberDao();
	public static MemberDao getInstance() { return mdao;}
	 
	// 1. 회원가입 메소드 
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
	public int login( String id, String password ) {
		String sql = "select * from member where mid = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1, id );
			rs = ps.executeQuery();
			if( rs.next() ) {
				sql = "select * from member where mid = ? and mpassword = ?";
				ps = con.prepareStatement(sql);
				ps.setString( 1, rs.getString(2) );
				ps.setString( 2, password );
				rs = ps.executeQuery();
				
				// 로그인 성공 : 1
				if( rs.next() ) {
					System.out.println("로그인 성공!!");
					return 1;
				}
				// 비밀번호 틀렸을때 : 2
				System.out.println("로그인 실패..[비밀번호 오류 ]");
				return 2;
			}
			//  데이터베이스 오류일때 : 3
		}catch( Exception e ) { System.out.println("로그인 DB오류 : " + e); return 3; }
		// 회원가입 정보가 없을때 = 아이디가 없을때 : 0
		return 0;	
	} // end

	
	// 3. 아이디찾기
	public String findid( String mname, String memail ) {
		String sql = "select * from member whrer mname = ? and memail = ? ";
		try{
			ps = con.prepareStatement(sql);
			ps.setString( 1 , mname );
			ps.setString( 2 , memail );
			rs = ps.executeQuery();
			// 만일 동일한 정보가 있으면 찾은 레도트의 아이디를 반환
			if( rs.next() ) return rs.getString( 2 );
		}catch( Exception e ) { System.out.println("아이디찾기 오류 : " + e ); }
		return null;	// 동일한 정보가 없으면 null
	} // end
	
	
	// 4. 비밀번호 찾기[ 임시 비밀번호 발급 ]
	public boolean findpassword( String mid, String memail ) {
		String sql = "select * from member where mid = ? and memail = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , mid );
			ps.setString( 2 , memail );
			rs = ps.executeQuery();
			return true;
		}catch( Exception e ) { System.out.println("비밀번호찾기 오류 : " + e ); }
		return false;
	} // end
	
	
	// 5. 임시 비밀번호 업데이트
	public boolean passwordchange( String mid, String randstr ) {
		String sql = "update member set mpassword = ? and where mid = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , randstr );
			ps.setString( 2 , mid );
			ps.executeUpdate();
			return true;
		}catch( Exception e ) { System.out.println("임시비밀번호 오류 : " + e ); }
		return false;
	}// end
	
	
	// 6. 회원정보 호출
	public MemberDto getinfo( String mid ) {
		MemberDto dto = null;
		String sql = "select * from member where mid = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , mid );
			rs = ps.executeQuery();
			if( rs.next() ) {
				// 풀 생성자
				dto = new MemberDto(
						rs.getInt( 1 ) , rs.getString( 2 ), null,
						rs.getString( 4 ), rs.getString( 5 ),
						rs.getString( 6 ), rs.getString( 7 ),
						rs.getString( 8 ), rs.getInt( 9 ) );
				return dto;
			}
		}catch( Exception e ) { System.out.println("회원정보호출 오류 : " + e ); }
		return dto;
	} // end
	
	
	// 7. 모든 회원정보 호출
	public ArrayList<MemberDto> getinfolist(){
		ArrayList<MemberDto> list = new ArrayList<>();
		String sql = "select * from member ";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while( rs.next() ) {
				MemberDto dto = new MemberDto(
						rs.getInt( 1 ) , rs.getString( 2 ), null,
						rs.getString( 4 ), rs.getString( 5 ),
						rs.getString( 6 ), rs.getString( 7 ),
						rs.getString( 8 ), rs.getInt( 9 ) );
				list.add(dto);
			}
			return list;
		}catch( Exception e ) { System.out.println("모든회원정보출력 오류 : " + e ); }
		return list;
	} // end
	
	
	// 8. 회원탈퇴
	public boolean delete( String mid, String mpassword ) {
		String sql = "delete from member where mid = ? and mpassword = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , mid );
			ps.setString( 2 , mpassword );
			int count = ps.executeUpdate();
			// 삭제된 레코드가 1개이면 성공
			if( count == 1 ) { return true; }
		}catch( Exception e ) { System.out.println("회원탈퇴 오류 : " + e ); }
		return false;
	} // end
	
	
	// 9. 아이디 중복체크
	public boolean idcheck( String mid ) {
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
	} // end

	// 11. 회원정보 수정
	public boolean update( String mid, String mname ) {
		String sql = "update member set mname = ? where mid = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1, mname );
			ps.executeUpdate();
			return true;
		}catch( Exception e ) { System.out.println("회원정보수정 오류 : " + e ); }
		return false;
	} // end
	
	// 12 회원아이디 --> 회원번호로 구분
	public int getMno( String mid ) {
		String sql = "select mno from member where mid = ? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , mid );
			rs = ps.executeQuery();
			if( rs.next() ) return rs.getInt(1);
		}catch( Exception e ) { System.out.println("회원번호출력 오류 : " +e ); }
		return 0;
	}

} // class end
