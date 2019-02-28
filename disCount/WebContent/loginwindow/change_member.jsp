<%@page import="member.db.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% MemberBean memberbean = (MemberBean)request.getAttribute("memberstate");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>join</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
function changememberstart() {
	document.join.action="./MemberChangeAction.me";
	document.join.submit();
}
$(function() {
	$("#imgInp").on('change', function() {
		readURL(this);
	});
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#blah').attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}
function gender1() {
	document.getElementById("MEMBER_GENDER").value=1;
}
function gender2() {
	document.getElementById("MEMBER_GENDER").value=2;
}
</script>
<style type="text/css">
img{
height: 150px;
background: purple;
width: 200px;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css"/> 

</head>
<body>
		<form id= "join" name="join" action=".me" method="post" enctype="multipart/form-data"> 
				<table>
					<tr>
						<td align="left"><font size=3><b>기본정보</b></font></td>
						<td width="550px" align="right"><font size=2>회원수정창입니다.</font></td>
					</tr>
					<tr>
						<td>id </td>
						<td><input type="text" name="MEMBER_ID" readonly="readonly" value="<%=memberbean.getMember_id()%>"/></td>
					</tr>
					<tr>
						<td>password </td>
						<td><input type="password" name="PASSWORD" value="<%=memberbean.getPassword()%>"/></td>
					</tr>
					<tr>
						<td>profile photo </td>
						<td>
						<%if(memberbean.getImagesrc()!=null){ %>
							<img id="blah" src="./userimgsrc/<%=memberbean.getImagesrc() %>" alt="이미지를 등록해주세요"/></br>
						<%}else{ %>
							<img id="blah" src="#" alt="이미지를 새로 등록해주세요"/></br>
							<%} %>
							<input type='file' name="IMAGESRC" id="imgInp" />
						</td>
					</tr>
					<tr>
						<td>email </td>
						<td><input type="text" name="EMAIL" 
							size=30 value="<%=memberbean.getEmail()%>"/></td>
					</tr>
					<tr>
						<td>name </td>
						<td><input type="text" name="NAME" size=20 value="<%=memberbean.getName()%>"/></td>
					</tr>
					<tr>
						<td>gender </td>
						<td>
						<%if(memberbean.getGender()==1){ %>
							<input type="radio" name="GENDER_SELECT" onclick="gender1()" value="1" checked="checked"/>male
							<input type="radio" name="GENDER_SELECT" onclick="gender2()" value="2" />female
							<input type="hidden" id="MEMBER_GENDER" name="MEMBER_GENDER" value="1">
						<%}else if(memberbean.getGender()==2){ %>
							<input type="radio" name="GENDER_SELECT" onclick="gender1()" value="1" />male
							<input type="radio" name="GENDER_SELECT" onclick="gender2()" value="2" checked="checked"/>female
							<input type="hidden" id="MEMBER_GENDER" name="MEMBER_GENDER" value="2">
						<%} %>
						</td>
					</tr>
					<tr>
						<td>hobby</td>
						<td>
						<SELECT name="HOBBY">
						<%String [] hobbystring= {"운동","독서","영화감상","요리","낚시","청소","여행","기타"}; 
						for(int i=0;hobbystring.length>i;i++)
						{
							String hobbystringresult=hobbystring[i];
							if(hobbystring[i].equals(memberbean.getHobby())){
							%>
								<OPTION value=<%="'"+hobbystring[i]+"'"+" selected"%>><%=hobbystring[i] %></OPTION>
							<% 	
							}else
							{
						%>
							<OPTION value=<%="'"+hobbystringresult+"'"%>><%=hobbystring[i] %></OPTION>
						<% }
						}%>
							<!-- <OPTION value="운동">운동</OPTION>
							<OPTION value="독서">독서</OPTION>
							<OPTION value="영화감상">영화감상</OPTION>
							<OPTION value="요리">요리</OPTION>
							<OPTION value="낚시">낚시</OPTION>
							<OPTION value="청소">청소</OPTION>
							<OPTION value="여행">여행</OPTION>
							<OPTION value="기타" selected>기타</OPTION> -->
 						</SELECT>
 						</td>
					</tr>

					<tr>
						<td>birthdate</td>
						<td><input type="date" name="BIRTHDAY" value="<%=memberbean.getBirthday()%>"/>
					</tr>
					
					<tr>
						<td colspan="2" align=center></br>
						<a onclick="changememberstart()">회원정보 수정</a>&nbsp;&nbsp;
						<a href="javascript:join.reset()">다시작성</a></td>
					</tr>
				</table>
		</form>
</body>
</html>
