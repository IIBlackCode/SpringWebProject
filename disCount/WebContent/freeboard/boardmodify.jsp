<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="board.db.*"%>
<%
	String id = (String) session.getAttribute("id");
	BoardBean board = (BoardBean) request.getAttribute("boarddata");
%>
<html>
<head>
<title>자유 게시판</title>

<script type="text/javascript">

	function modifyboard() {
		modifyform.submit();
	}
</script>
</head>
<body>
	<!--게시판 수정  -->
	<form action="FreeBoardModifyAction.fr" method="post" name="modifyform" enctype="multipart/form-data">
		<input type="hidden" name="member_id" value="<%=id%>">
		<input type="hidden" name="BOARD_ID" value="<%=board.getBoardid()%>">

		<table cellpadding="0" cellspacing="0">
			<tr align="center" valign="middle">
				<td colspan="5">자유 게시판</td>
			</tr>
			<tr>
				<td height="16" style="font-family: 돋음; font-size: 12">
					<div align="center">제 목</div>
				</td>
				<td><input name="BOARD_TITLE" size="50" maxlength="100"
					value="<%=board.getTitle()%>"></td>
			</tr>
			<tr>
			<%
				if (board.getFile()!=null) {
			%>
			<img id="blah"  src="./freeboardsrc/<%=board.getFile()%>"/>
			<%} %>
			</tr>
			<tr>
				<td style="font-family: 돋음; font-size: 12">
					<div align="center">내 용</div>
				</td>
				<td><textarea name="BOARD_CONTENT" cols="67" rows="15"><%=board.getContext()%></textarea>
				</td>
			</tr>
			
			<tr>
				<td style="font-family: 돋음; font-size: 12">
					<div align="center">파일 첨부</div>
				<input type="file" name="board_src" id="board_src">
				</td>
				<td>&nbsp;&nbsp;
				</td>
			</tr>
			

			<tr bgcolor="#cccccc">
				<td colspan="2" style="height: 1px;"></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>

			<tr align="center" valign="middle">
				<td colspan="5"><font size=2> 
				<a href="javascript:history.go(-1)">[뒤로]</a>&nbsp;&nbsp;
				<a href="javascript:modifyboard()">[수정]</a>&nbsp;&nbsp; 
				
				</font></td>
			</tr>
		</table>
	</form>
</body>
</html>

