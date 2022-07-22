<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
</head>

<script>
	
</script>
<body>
	<form action="reviewPro" method="post" onSubmit=>
		<input type="hidden" name="id" value="${memId}" />
		<input type="hidden" name="status" value="${st.status}" />
		<input type="hidden" name="category" value="1" />
		<table>
			<tr>
				<td>
					<button value="site">${site.name}후기 작성</button>
				</td>
				<td><input type=radio name="score" id="1" /> <label for="1">1점</label></td>
		</table>

	</form>
</body>
</html>