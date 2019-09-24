<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>10, 3 오칙 연산 결과</h2>

<%
class Calcul{
	int add(int a, int b){
		return a+b;
	}
	int sub(int a, int b){
		return a-b;
	}
	int mul(int a, int b){
		return a*b;
	}
	int div(int a, int b){
		return a/b;
	}
}

 	Calcul cal = new Calcul();
 	int a = 10;
 	int b = 3;
 	out.println("10과 3의 덧셈 결과는 ["+cal.add(a,b)+"] 입니다.<br/>");
 	out.println("10과 3의 덧셈 결과는 ["+cal.sub(a,b)+"] 입니다.<br/>");
 	out.println("10과 3의 덧셈 결과는 ["+cal.mul(a,b)+"] 입니다.<br/>");
 	out.println("10과 3의 덧셈 결과는 ["+cal.div(a,b)+"] 입니다.<br/>");
 	
%>


</body>
</html>