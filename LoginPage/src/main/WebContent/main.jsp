<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 로그인 페이지</title>
</head>

<body>
  <%
    // null 값 할당 -> 사용자가 로그인되어 있지 않은 초기 상태를 나타냄
    String userID=null;
    //세션에서 userID 속성 가져와서 null 값인지 여부 확인
    if(session.getAttribute("userID")!=null){
    	userID=(String)session.getAttribute("userID");
    }
  %>
  <nav class="navbar navbar-default">
    <div class="navbar-header">
      <a class="navbar-brand">메인 페이지</a>
    </div>
  </nav>
</body>
</html>
