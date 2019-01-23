<%@page import="com.douzon.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzon.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new GuestBookDao().delete(vo);
	
	//insert 후 sendRedirect 필요함 화면전환
	response.sendRedirect("/guestbook1");
%>