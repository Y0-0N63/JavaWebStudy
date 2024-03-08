package user;

public class User {
  private String userID;
  private String userPwd;
  
  // jsp 서버에서 만들 수 있도록 함수 추가
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

// 자바 빈즈 (회원 데이터 구축 완료!)
