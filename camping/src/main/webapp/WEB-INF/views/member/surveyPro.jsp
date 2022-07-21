<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 결과 저장</title>
</head>
<body>
<input type = "hidden" name = "tent" value = "${fil['1']}" />
<input type = "hidden" name = "taf" value = "${fil['2']}" />
<input type = "hidden" name = "waterjug" value = "${fil['3']}" />
<input type = "hidden" name = "stove" value = "${fil['4']}" />
<input type = "hidden" name = "light" value = "${fil['5']}" />
<input type = "hidden" name = "mat" value = "${fil['6']}" />
<input type = "hidden" name = "sb" value = "${fil['7']}" />
<input type = "hidden" name = "chair" value = "${fil['8']}" />
<input type = "hidden" name = "desk" value = "${fil['9']}" />
<input type = "hidden" name = "gas" value = "${fil['10']}" />

<script>
	alert("설문조사 참여가 완료되었습니다.");
	window.close();
</script>
</body>
</html>