package user;

public class User {
  // 데이터베이스와 동일한 이름의 변수 생성
  // varChar->String
  // 회원 정보들이 데이터베이스와 동일하게 자바 내에 담김~
  private String userID;
  private String userPwd;
  
  // jsp 서버에서 만들 수 있도록 source->Generate Getters and Setters 사용하여 함수 만듦
  public String getUserID() {
	  return userID;
  }
  public void setUserID(String userID) {
	  this.userID = userID;
  }
  public String getUserPwd() {
  	return userPwd;
  }
  public void setUserPwd(String userPwd) {
  	this.userPwd = userPwd;
  }
}

// 자바 빈즈(하나의 데이터를 관리하고 처리하는 것을 jsp 내에서 구현하는 것) 구성
// -> 회원 데이터를 다루고 처리할 수 있음
