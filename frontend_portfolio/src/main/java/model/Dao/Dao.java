package model.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {

	Connection con;			// DB연동 인터페이스
	PreparedStatement ps;	// sql조작 인터페이스
	ResultSet rs;			// 쿼리조작 인터페이스
	
	public Dao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shop" ,	// db접속 코드 주소
					"root" ,
					"1234" );
			System.out.println("DB연동 성공");
		}catch (Exception e) { System.out.println( e ); }
	}
	
} // class end
