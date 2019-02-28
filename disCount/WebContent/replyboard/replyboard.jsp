
<%@page import="member.db.MemberDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="reply.db.ReplyBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
ReplyBean replybean =new ReplyBean();
List replylist= new ArrayList();
replylist=(List)request.getAttribute("replylist");
System.out.print("replyboard.jsp 실행");
MemberDAO replymember = new MemberDAO();
%>
<!-- 새로운 게시판 타입마다 스크립트의 deleteaction과 form부분에 if문을 삽입하여 바꿀것.  -->
<html>
<head>
<meta charset="UTF-8">
<title>댓글창</title>
<script type="text/javascript">
function deleteaction(deleteboardid) {
	reply_board.write_reply_context.value=deleteboardid;
	alert(reply_board.write_reply_context.value+"댓글을 삭제합니다");
	<%if(((String)request.getParameter("reply_type")).equals("main")){%>
	var url="ReplyDeleteAction.bo";
	<%}%>
	reply_board.action=url;
	reply_board.submit();
}
</script>
<!-- 

 -->
</head>
<body style="background-image:use_image/replybackgroundimage.jpg ">
<form action="ReplyWriteAction.bo" name="reply_board" id="reply_board" method="post">
<hr size="3">

<!-- 게시판 글 순서 -->
<input type="hidden" name="Board_id" id="Board_id" value="<%=request.getParameter("board_id")%>">
<!-- 게시판 소속 -->
<input type="hidden" name="Board_type" id="Board_type" value="<%=request.getParameter("reply_type")%>">

<table style="width: 100%">
<%
for(int i=0;i<replylist.size();i++){
replybean=(ReplyBean)replylist.get(i);%>
<tr>
<td>작성자 : <%=replybean.getReply_member_name() %></td>
<td align="right">
<%if(replymember.getMembersrc(replybean.getReply_member_id())!=null){ %>
<img src="./userimgsrc/<%=replymember.getMembersrc(replybean.getReply_member_id())%>" style="height: 50px; height: 50px;"/>
<%}else if(replymember.getMembersrc(replybean.getReply_member_id())==null||replymember.getMembersrc(replybean.getReply_member_id()).equals("")){ %>
<img src="./use_image/defaultimage.png" style="height: 50px; height: 50px;"/>
<%} %>
</td>
</tr>
<tr>
<td>내용 : <%=replybean.getReply_context() %></td>
<td align="right">작성시간 : <%=replybean.getWrite_date() %></td>
<%if(replybean.getReply_member_id().equals((String)session.getAttribute("id"))){ %>
<td><font style="color: red"><a onclick="deleteaction('<%=replybean.getReply_id()%>')">삭제</a></font></td>
<%} %>
</tr>
<%}
%>
<%
if(session.getAttribute("id")!=null){%>
<tr>
<td width="100%">
<input type="text" name="write_reply_context" id="write_reply_context" formenctype="application/x-www-form-urlencoded" width="100%">
</td>
<td>
<input type="submit" value="작성">
</td>
</tr>
<%} %>
</table>
</form>
</body>
</html>