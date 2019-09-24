<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mytable {
	border: 1;
	border-radius: 10px;
	padding: 20px;
}

hr {
	height: 10px;
	background-color: pink;
}
input[type=submit]{
padding: 10px;
font-size: 10px;	
}
</style>
<script type="text/javascript">
// 유효성 검사
function doSubmit(){
	var name = document.getElementById('name').value; //경고창출력
	if(name == null){alert("이름 입력 하세요");}
	else{ document.getElementById('myform').value;}
	
	
}
</script>
</head>
<body>

	<form action=newJoin " method="get" id="myform">
		<div>
			<table class="mytable">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="text" id="name" name="gender" /></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" /></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" /></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="ckpw" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="addr" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="tel" /></td>
				</tr>
				<tr>
					<td>이메일주소</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>취미</td>
					<td><input type="checkbox" name="hobby" value="축구" />축구 <input
						type="checkbox" name="hobby" value="야구" />야구 <input
						type="checkbox" name="hobby" value="농구" />농구<br /> <input
						type="checkbox" name="hobby" value="수영" />수영 <input
						type="checkbox" name="hobby" value="등산" />등산 <input
						type="checkbox" name="hobby" value="게임" />게임</td>
				</tr>
			</table>

			<hr>
			<input type="submit" onclick="doSubmit();" value="회원가입">
		</div>
	</form>
</body>
</html>