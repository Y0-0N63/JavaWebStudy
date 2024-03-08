<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 로그인 페이지</title>
</head>

<body>
  <nav class="navbar navbar-default">
    <div class="navbar-header">
      <a class="navbar-brand">로그인 페이지</a>
    </div>
  </nav>
  <div class=container>
    <div class="col-lg-4">
      <div class="jumbotron" style="padding-top: 20px;">
      
        <%-- 로그인 액션 페이지에 아이디와 비밀번호 전달해줌! --%>
        <form method="post" action="loginAction.jsp">
          <h3 style="text-align: center;">로그인 화면</h3>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" placeholder="비밀번호" name="userPwd" maxlength="20">
          </div>
          <input type="submit" class="btn btn-primary form-control" value="로그인">
        </form>
        
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
</body>
</html>
