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
<form action = "reviewPro" method = "post" onSubmit = >
	<input type = "hidden" name = "id" value = "${memId}" />
	<input type = "hidden" name = "status" value = "${st.status}" />
	<table>
		<tr>
			<td>
				<button value = "site">캠핑장 후기 작성</button>
			</td>
			<td>
				<input type = "button" value = "텐트 리뷰" name = "${equip.tent}" />
			</td>
			<td>
				<button value = "3">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "4">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "5">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "6">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "7">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "8">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "9">캠핑장 후기 작성</button>
			</td>
			<td>
				<button value = "10">캠핑장 후기 작성</button>
			</td>
	
		</tr>
	</table>

</form>
</body>
</html>