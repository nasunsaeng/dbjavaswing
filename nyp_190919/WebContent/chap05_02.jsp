<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>1~10 까지 홀수 짝수 여부 출력</h2>
	<table border="1">
<%

	for (int i=0; i<11; i++){
		out.print("<tr>");
		out.print("<td>");
		out.print(i);
		out.print("</td>");
		
		out.print("<td>");
			if(i%2==0) out.print("짝수 입니다");
			else out.print("홀수 입니다");
		out.print("</td>");
		out.print("</tr>");
	}
%>
	</table>
</body>
</html>