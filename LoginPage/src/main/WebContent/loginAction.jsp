<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<%-- 한 명의 회원 클래스를 담는 user를 자바 빈즈로 활용 --%>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPwd"/>

<!DOCTYPE html>
<html>			
<head>
<meta charset="UTF-8">
<title>JSP 로그인 페이지</title>
</head>
<body>
  <%
    UserDAO userDAO=new UserDAO();
  
    // 로그인 시도
    int result=userDAO.login(user.getUserID(), user.getUserPwd());
    
    if(result==1){ // 로그인 성공
    	PrintWriter script=response.getWriter();
    	script.println("<script>");
    	script.println("alert('로그인에 성공하였습니다.');");
    	script.println("location.href='main.jsp'");
    	script.println("</script>");
    }
    else if(result==0){ // 비밀번호 불일치
    	PrintWriter script=response.getWriter();
    	script.println("<script>");
    	script.println("alert('비밀번호가 다릅니다.')");
    	// 이전 페이지(로그인 페이지)로 돌려보내기
    	script.println("history.back()");
    	script.println("</script>");
    }
    else if(result==-1){ // 아이디 없음
    	PrintWriter script=response.getWriter();
    	script.println("<script>");
    	script.println("alert('존재하지 않는 아이디입니다.')");
    	script.println("history.back()");
    	script.println("</script>");
    }
    else if(result==-2){ // 데이터베이스 오류
    	PrintWriter script=response.getWriter();
    	script.println("<script>");
    	script.println("alert('데이터베이스 오류가 발생했습니다.')");
    	script.println("history.back()");
    	script.println("</script>");
    }
  %>
</body>
</html>
