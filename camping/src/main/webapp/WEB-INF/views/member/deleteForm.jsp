<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
<script>
	function begin(){
		document.myform.passwd.focus();
	}
	function checkIt(){
		if(!document.myform.passwd.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.myform.passwd.focus();
			return false;
		}
	}   
</script>
<form name="myform" action="/member/deletePro?id=${memId}" method="post" onSubmit="return checkIt()">
	<table >
		<tr >
	    	<td>
			  	<font size="+1" >
			  		<b>회원 탈퇴</b>
			  	</font>
		 	</td>
		</tr>
		<tr>
	    	<td>비밀번호</td>
	 	   <td>
				<INPUT type=password name="pw"  size="15" maxlength="12">
			</td>
		</tr>
		<tr>
			<td>
				<input type=submit value="회원탈퇴"> 
				<input type="button" value="취  소" onclick="window.location='/member/myPage'">
			</td>
		</tr>
	</TABLE>
</form>
</body>
</html>