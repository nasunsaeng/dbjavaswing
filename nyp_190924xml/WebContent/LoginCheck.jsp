<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Date now = new Date();
	SimpleDateFormat rightNow = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
	%>	<p style="font-size: 30px; font-weight: bold;">
	<%
	out.print("["+id+"] 님 접속을 환영합니다.");
	out.println("</p>");
	%>	<p style="font-size: 20px; font-weight: bold;">
	<%
	out.print("접속하신 날짜 및 시간은 "+rightNow.format(now)+" 입니다.");

	out.println("</p>");
%>	
</body>
</html>