<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>

	<h3>작성하신 내용은 아래와 같습니다.</h3>

	<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwck = request.getParameter("pwck");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String[] hobby = request.getParameterValues("hobby");

		out.println("이름 : " + name + "<br/> <hr>");
		out.println("성별 : " + gender + "<br/> <hr>");
		out.println("아이디 : " + id + "<br/> <hr>");
		out.println("주소 : " + addr + "<br/> <hr>");
		out.println("전화번호 : " + tel + "<br/> <hr>");
		out.println("이메일주소 : " + email + "<br/> <hr>");
		out.println("취미 : <br/>");
	%>
	<table border="1">
	<%
		try{
		if(hobby.length !=0){
		for (String temp : hobby) {
			out.println("<tr><td width=\"80\" align=\"center\"> " + temp + "</td></tr>");
			}
		}
		}catch(NullPointerException e){
			out.println("[선택한 취미가 없습니다.]");
		}
		
	%>
	</table>
</body>
</html>