<%@page import="member.db.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="board.db.*" %>
 <%
 		BoardBean board=(BoardBean)request.getAttribute("boarddata");
 		MemberDAO memberdao=new MemberDAO();
 %>   
<html>
<head>
<title>자유 게시판</title>
<script type="text/javascript">
function board_delete() {
	location.href="FreeBoardDeleteAction.fr?board_id=<%=board.getBoardid()%>";
	}
</script>
</head>

<body style="width: 100%">
<!-- 게시판 수정 -->
<table cellpadding="0" cellspacing="0" style="width: 100%">
		<tr align="center" valign="middle">
				<td colspan="5">자유 게시판</td>
		</tr>
		<tr>
				<td  style="font-family:돋음;font-size:12" height="16">
						<div align="center">제 목&nbsp;&nbsp;</div>
				</td>				
				<td  style="font-family:돋음;font-size:12">
				<%=board.getTitle()%>
				</td>
		</tr>
		<tr>
				<td>
				작성자 : <%=board.getBoard_member_name() %>
				</td>
				<td  style="font-family:돋음;font-size:12" height="16">
				</td>				
				<td  style="font-family:돋음;font-size:12">
				<%if(memberdao.getMembersrc(board.getBoard_member_id())!=null){ %>
				<img src="./userimgsrc/<%=memberdao.getMembersrc(board.getBoard_member_id())%>" style="height: 50px; height: 50px;"/>
				<%}else{ %>
				<img src="./use_image/defaultimage.png" style="height: 50px; height: 50px;"/>
				<%} %>
				</td>
		</tr>	
		
		<tr bgcolor="cccccc">
				<td colspan="10" style="height:1px;">
				</td>
		</tr>
		<tr align="center">
			<td align="center">
				
				
			</td>
		</tr>
		<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">내 용</div>
			</td>
			<td style="font-family:돋음; font-size:12">
				<table border=0 width=490 height=250 style="table-layout:fixed">
					<tr>
						<td valign=top style="font-family:돋음; font-size:12">
							<%=board.getContext()%>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
		<td colspan="2" align="center">
			<%if(board.getFile()!=null){ %>
				<img id="blah"  src="./freeboardsrc/<%=board.getFile()%>" style="width: 300px;"/>
				<%} %>
		</td>
		</tr>
		
		<tr bgcolor="cccccc">
				<td colspan="10" style="height:1px;"></td>
		</tr>
		<tr><td colspan="10">&nbsp;</td></tr>
		<tr align="center" valign="middle">
				<td colspan="5">
						<font size=2>
						<%-- <a href="./BoardReplyAction.bo?num=<%=board.getBOARD_NUM() %>">
						[답변]
						</a>&nbsp;&nbsp;	 --%>																							
						<%-- <a href="./BoardDeleteAction.bo?num=<%=board.getBoardid() %>">
						[삭제] --%>
						</a>&nbsp;&nbsp;																								
						<a href="./FreeBoardAction.fr">[목록]</a>&nbsp;&nbsp;
						<%if(board.getBoard_member_id().equals(session.getAttribute("id"))){ %>
						<a href="./FreeBoardModifyView.fr?num=<%=board.getBoardid() %>">
						[수정]
						</a>&nbsp;&nbsp;																								
						<a onclick="board_delete()">[삭제]</a>&nbsp;&nbsp;
						<%} %>
						</font>
				</td>
		</tr>
</table>
<iframe src="ReplyView.bo?reply_type=free&board_id=<%=request.getParameter("main_page_id") %>" 
style="width: 100% " frameborder="0" allowTransparency="true">

</body>
</html>