<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String id= (String)session.getAttribute("id");
    String name=(String)session.getAttribute("name");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>

<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
</style>

<script type="text/javascript">
function membercontent() {
	window.open("/disCount/MemberChange.me","회원정보 수정창","300px","300px");
}
function loginout() {
	document.loginform.action="./MemberLogout.me";
	document.loginform.submit();
}
</script>
</head>
<body style="width: 60%; float: right;" >
	<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
	<center>
	<%=name %><font size="2" style="font-family: 'Hanna' ,  sans-serif;">님 로그인을 환영합니다.</font>
	<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
	<form id="loginform" name="loginform" method="post" action="*.me">
	
	<button style="width: 30; font-family: 돋움; background-color: #eff7f9; border: 1 solid #A0DBE4;", onclick="membercontent()" size="5">회원 정보 수정</button>	
	<button style="width: 30; font-family: 돋움; background-color: #eff7f9; border: 1 solid #A0DBE4;", onclick="loginout()" size="5">로그아웃</button>
	<br>
	<font size="2"  style="font-family: 'Hanna' ,  sans-serif;"><B>www.discount.com</B></font>
	<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
	</center>
</form>
</body>
</html>