<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%
 	session.invalidate();
 	out.println("<script>alert('로그아웃되었습니다'); history.back();</script>");
 	response.sendRedirect("main.jsp");
 %>


