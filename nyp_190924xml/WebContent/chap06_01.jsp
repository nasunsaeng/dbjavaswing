<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>get 방식 요청</title>

<style type="text/css">
div{
width: 100%;
height: 400px;
}
.list{
width : 20%;
float : left;
}
.content{
width : 80%;
float : right;
}
#txt{
width : 230px;
}
</style>

</head>
<body>
	<form action="Join.jsp">
	<div>
		<div class="list">
			<p>이름</p>
			<p>성별</p>
			<p>아이디</p>
			<p>비밀번호</p>
			<p>비밀번호 확인</p>
			<p>주소</p>
			<p>전화번호</p>
			<p>이메일주소</p>
			<p><br/><br/> 취미<br/><br/></p>
		</div>
		
		<div class="content">
			<p><input id="txt" type="text" name="name" /> </p>
			<p><select name="gender">
				<option>남자</option>
				<option>여자</option>
			</select></p>
			<p><input id="txt" type="text" name="id" /> </p>
			<p><input id="txt"  type="password" name="pw" /></p>
			<p><input id="txt"  type="password" name="pwck" /></p>
			<p><input id="txt"  type="text" name="addr" /></p>
			<p><input id="txt"  type="text" name="tel" /></p>
			<p><input id="txt"  type="text" name="email" /></p>
			<p><input type="checkbox" name="hobby" value="축구" />축구 
			<input type="checkbox" name="hobby" value="야구" />야구  
			<input type="checkbox" name="hobby" value="농구" />농구 <br/> 
			<input type="checkbox" name="hobby" value="수영" />수영 
			<input type="checkbox" name="hobby"	value="게임" />게임  
			<input type="checkbox" name="hobby" value="독서" />독서 <br/>
			<input type="checkbox" name="hobby" value="음악" />음악 
			<input type="checkbox" name="hobby" value="TV" />T V  
			<input type="checkbox" name="hobby" value="영화" />영화 <br/> 
			<input type="checkbox" name="hobby" value="연극" />연극 
			<input type="checkbox" name="hobby" value="뮤지컬" />뮤지컬  
			<input type="checkbox" name="hobby"	value="전시" />전시 </p>
				
		</div>
	</div>	
	
	<hr/>
	
	<input type="submit" style="width:80px" value="회원가입" />
	</form>
</body>
</html>