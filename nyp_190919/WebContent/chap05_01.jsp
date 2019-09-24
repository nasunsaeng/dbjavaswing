<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	width: 90px;
	text-align: center;
}
</style>
</head>
<body>
	<h4>구구단 출력</h4>

	<table border="1">
	<%
		for (int i = 1; i < 10; i++) {
				out.println("<tr>");
				if( i==1){
					for (int j = 2; j < 10; j++) {
						out.println("<td>"+j+"단 </td>");
					}
					out.println("</tr> <tr>");
				}
				for (int j = 2; j < 10; j++) {
					out.println("<td>" + j + " X " + i + " = " + j * i + "</td>");
				}
				out.println("</tr>");
		}
	%>
	</table>
</body>
</html>