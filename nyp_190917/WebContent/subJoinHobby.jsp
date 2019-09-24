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
	String[] hobby = request.getParameterValues("hobby");
	if(hobby != null){
		out.println("<table border =\"1\">");
		for (String temp : hobby){
			out.println("<tr>");
			out.println("<td width=\"100\" text-align=\"center\">");
			out.println(temp);
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	}else { out.println("선택한 취미 없습니다."); }

%>

</body>
</html>