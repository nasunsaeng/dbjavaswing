<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String id = request.getParameter("id");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");

	out.println("이름 : "+name);
	out.println("<tr>");
	out.println("성별 : "+gender);
	out.println("<tr>");
	out.println("아이디 : "+id);
	out.println("<tr>");
	out.println("주소 "+addr);
	out.println("<tr>");
	out.println("전화번호 : "+tel);
	out.println("<tr>");
	out.println("이메일 : "+email);
	out.println("<tr>");
	out.println("취미 :");
	
	
%>
</body>
</html>