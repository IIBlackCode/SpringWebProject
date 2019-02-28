<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
<script type="text/javascript">
time= setTimeout(function() {
	opener.parent.location="../index.jsp";
	window.close();
},3000); 
</script>
</head>
<body>
회원 가입에 성공하셨습니다.
이 창은 3초뒤에 닫힙니다.
</body>
</html>