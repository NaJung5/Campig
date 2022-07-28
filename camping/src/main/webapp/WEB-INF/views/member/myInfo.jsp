<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<script>
	function check(){
		if(account.pw.value != account.pw2.value){
			alert("PW를 동일하게 입력해주세요");
			return false;
		}
	}
	function nickCheck(){
		if(!account.nickname.value){
			alert("별명을 입력해주세요");
			return false;
		}
		else{
			confirmNick = "/member/confirmNick?nickname="+account.nickname.value;
			window.open(confirmNick, "confirm","width=300, height=200 ")
		}
	}
</script>
<body>
<%@include file="../headNavBar.jsp"%>

<form action = "/member/myInfoPro" method = "post" name  = "account" onSubmit = "return check()">
<input type="hidden" name="id" value="${memId}">

		<table align = "center" >
			<tr>
				<td>
					<font size = "+2">회원정보 수정</font>
				</td>
			</tr>
			<tr>
				<td>비밀번호 수정</td>
				<td>
					<input type = "password" name = "pw" required />
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td>
					<input type = "password" name = "pw2" required />					
				</td>
			</tr>
			<tr>
				<td>별명</td>
				<td>
					<input type = "text" name = "nickname" required />
					<input type = "button" name = "confirm_nick" value = "별명 중복확인" OnClick = "nickCheck();" />					
				</td>
			</tr>
			<tr>
				<td>email</td>
				<td>
					<input type = "text" name = "mail1" required/>@
					<select id = "mail2" name = "mail2">
						<option >naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>		
				    </select>
				</td>
			</tr>			
			<tr>
				<td>비밀번호 질문</td>
				<td>
					<select id = "question" name = "question">
						<option value = "1">보물1호</option>
						<option value = "2">부모님성함</option>
						<option value = "3">친한친구</option>		
				    </select>
				</td>
			</tr>
			<tr>
				<td>답변</td>
				<td>
					<input type = "text" name = "ans" required />
				</td>
			</tr>
			<tr>
				<td>차량유무</td>
				<td>
					<input type = "radio" name = "car" value = "0" id = "차보유"/>
					<label for = "차보유">보유</label>
					<input type = "radio" name = "car" value = "1" id = "차없음"/>
					<label for = "차없음">미보유</label>
				</td>
			</tr>
			<tr>
				<td>
					<input type = "submit"  value = "수정"/>
					<input type = "reset" name = "reset" value = "다시입력" />
					<input type = "button"  value = "수정안함" onclick="window.location='/member/myPage?id=${memId}'"/>
				</td>
			</tr>																									
		</table>							   
	</form>
</body>
</html>