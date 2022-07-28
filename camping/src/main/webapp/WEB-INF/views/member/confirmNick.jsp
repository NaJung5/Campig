<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>별명 중복 확인</title>
</head>
<script>
	function set(){
		opener.document.account.nickname.value="${nickname}";
		self.close();
	}
	function check(){
		confirmNick = "/member/confirmNick?nickname="+checkForm.nickname.value;
		window.location(confirmNick, "confirm","width=300, height=200 ");
	}
</script>
<body>
	<c:if test="${result >= 1}">
		<table >
			<tr>
				<td>
					<p>${nickname}이미 사용중인 별명 입니다.</p>
				</td>
			</tr>
		</table>
		<form name = "checkForm" method = "post" action = "confirmNick" onSubmit = "return check()">
			<table>
				<tr>
					<td align = "center">
						<p>다른 별명을 입력해주세요.</p>
						<input type = "text" name = "nickname" />
						<input type = "submit" value = "중복확인" />
					</td>
				</tr>
			</table>
		</form>
	</c:if>
	<c:if test = "${result == 0 }" >
		<table>
			<tr>
				<td align = "center">
					<p>입력하신 ${nickname}은(는) 사용하실 수 있는 별명 입니다.</p>
					<input type = "button" value = "확인" onclick = "set()" />
				</td>
			</tr>
		</table>
	</c:if>
</body>
</html>