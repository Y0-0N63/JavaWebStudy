package user;

//외부 라이브러리 추가
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn; // 데이터베이스 접근-연결 객체 생성
	private PreparedStatement pstmt; //
	private ResultSet rs; // 정보 담을 수 있는 객체 생성

	// mySql에 접근
	public UserDAO() {
	  try {
		  // "jdbc:DBMS 이름://호스트 이름:포트/서비스 이름";
		  String dbURL = "jdbc:mysql://localhost:3306/BBS";
		  String dbID="root";
		  String dbPassword="0526";
		  // 1. 드라이버 로드 (메모리 상에 드라이버가 올라감)
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  // 2. 연결 (JDBC-JDBC 드라이버-MySQL)
		  conn=DriverManager.getConnection(dbURL, dbID, dbPassword);
	  } catch (Exception e) {
		  e.printStackTrace();
	  }
  }
	
	// 로그인
	public int login(String userID, String userPwd) {
		// 데이터베이스에 입력할 명령문 (SQL)
		// User 테이블에서 해당 사용자의 비밀번호를 가지고 옴
		String SQL="SELECT userPwd FROM USER WHERE userID=?";
		try {
			// 3. 문장(쿼리) 실행
			// pstmt에 미리 정해진 SQL 문장을 데이터베이스에 삽입하는 형식으로 인스턴스를 가지고 옴
			pstmt=conn.prepareStatement(SQL);
			// 미리 준비된 명령문의 '?'에 해당하는 내용으로 userID를 넣어줌
			// 매개변수로 넘어온 ID를 '?'에 넘겨줌->데이터베이스에 접속하고자 하는 ID가 존재하는지+ID의 비밀번호는 무엇인지 가지고 옴
			pstmt.setString(1, userID);
			// 4. 결과를 넣어줌
			// 한 줄씩 가져와서 ResultSet 객체에 담아줌
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPwd)) {
					return 1; // 로그인 성공 (비밀번호 일치)
				}
				else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
}
