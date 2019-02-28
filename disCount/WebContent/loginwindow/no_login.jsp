<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>

<style type="text/css">
.body {
	align: "right;" height: 100%;
	weight: 100%;
	background-color: #ffffff;
}
</style>

<script type="text/javascript">
	function loginstart() {
		document.login.action = "MemberLoginAction.me";
		document.login.submit();
	}

	function join() {
		window.open("/disCount/loginwindow/join_start.jsp", "회원가입창", "300px",
				"300px");
	}

	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}

	function changeType(obj) {
		//defaultValue 란 속성은 개체에 이미 기본으로 값을 넣어놨을때 그 값을 가리킨다.
		if (obj.value == obj.defaultValue) {
			obj.value = "";
			obj.type = "Password"; //input type을 password 로 변경
		} else {
			if (obj.value.split(" ").join("") == "") //space 까지 확인하여 공백인지를 확인
			{
				obj.value = obj.defaultValue;
				obj.type = "text";//input type을 text 로 변경
			} else {
				return;
			}
		}
	}
</script>
</head>
<body>
	<form id="login" name="login" method="post">
		<table style="margin-left: 47px;">
			<tr align="center">
				<td align="center">

					<table>
						<tr align="center">

							<td><input type="text" name="MEMBER_ID" size="5"
								onfocus="clearText(this)" onBlur="clearText(this)" value="아이디" /></td>
							<td align="center" colspan="2"></td>

							<td><input type="text"  name="MEMBER_PASSWORD" size="5"
								onfocus="changeType(this);" onblur="changeType(this);" value="비밀번호" /></td>

							<td align="center" colspan="2">
								<button
									style="width: 50; font-family: 돋움; background-color: #eff7f9; border: 1 solid #A0DBE4;"
									, onclick="loginstart()">Login</button>
								<button
									style="width: 50; font-family: 돋움; background-color: #eff7f9; border: 1 solid #A0DBE4;"
									, onclick="join()">Join</button>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
	</form>


</body>
</html>