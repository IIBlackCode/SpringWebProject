<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유 게시판 작성</title>
<script type="text/javascript">

function writeAction() {
	document.main_write.action="FreeBoardWriteAction.fr";
	document.main_write.submit();
}
</script>
</head>
<body>
<h2>자유 작성</h2>
<form id= "main_write" name="main_write" action=".bo" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>
				<input type="text" name="board_title" id="board_title" value="제목을 적어주세요"/> &nbsp;&nbsp;&nbsp;작성자 이름: <%=session.getAttribute("name") %>
			<td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea name="board_context" id="board_context" rows="10" cols="70" ></textarea>
			</td>
		</tr>
		<tr>
			<td>
			이미지 첨부
				<input type="file" name="board_src" id="board_src">
			</td>
			<td>
				<button value="작성" onclick="writeAction()">작성</button>
				<button value="취소" onclick="javascript:main_write.reset()">취소</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>