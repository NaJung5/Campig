<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복체크</title>
</head>
<!-- 중복체크후 창을 닫아줌 -->
<script>
	function set(){
		opener.document.account.id.value="${id}";

		self.close();
	}
	function check(){
		confirmId = "/member/confirmId?id="+checkForm.id.value;
		window.location(confirmId, "confirm","width=300, height=200 ")

	}
</script>

<body>
	<c:if test="${result == 1}">
		<table >
			<tr>
				<td>
					<p>${id}이미 사용중인 ID 입니다.</p>
				</td>
			</tr>
		</table>
		<form name = "checkForm" method = "post" action = "confirmId" onSubmit= "return check()" >
			<table>
				<tr>
					<td align = "center">
						<p>다른 ID를 입력하세요.</p>
						<input type = "text" name = "id" />
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
					<p>입력하신 ${id}는 사용하실 수 있는 ID 입니다.</p>
					<input type = "button" value = "확인" onclick = "set()" />
				</td>
			</tr>
		</table>
	</c:if>

</body>
</html>
