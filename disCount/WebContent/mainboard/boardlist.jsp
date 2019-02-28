<%@page import="member.db.MemberDAO"%>
<%@page import="board.db.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberDAO memberdao=new MemberDAO();
	List boardList = (List) request.getAttribute("boardlist");
	int boardsize = boardList.size();
	int endnum = 0;
	int startnum = 0;
	if (boardList != null && boardsize != 0) {
		BoardBean boardbean = (BoardBean) boardList.get(0);
		endnum = boardbean.getBoardid();
	}
	request.setAttribute("main_list_end_boardid", endnum);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8 ">
<title>공지사항 게시판</title>

<link href="style.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	function main_write() {
		location.href = "MainBoardWrite.bo";
	}
	function board_search_list(){
		board_type=$('#boardlist_search_item_select').val();
		board_content=$('#boardlist_search_item_content').val();
		
		/* alert(board_content+": 내용 + 타입 :"+board_type); */
		location.href = "MainBoardSearch.bo?board_search_type="+board_type+"&board_search_content="+board_content;
	}
</script>


<style type="text/css">

a:link{color:black;}
a:hover{color:red;}
a:visited {color: gray;}

.table1 table {
	width:100%;
	margin:15px 0;
	border:0;
}
.table1 th {
	font-weight:bold;
	background-color:#ffffff;
	color:#202020
}
.table1,.table1 th,.table1 td {
	font-size:0.95em;
	text-align:center;
	padding:4px;
	border-collapse:collapse;
}
.table1 th,.table14_1 td {
	border: 1px solid #ffffff;
	border-width:1px
}
.table1 th {
	border: 1px solid #c6c6c6;
	border-width:1px 0 1px 0
}
.table1 td {
	border: 1px solid #eeeeee;
	border-width:1px 0 1px 0
}
.table1 tr {
	border: 1px solid #ffffff;
}
.table1 tr:nth-child(odd){
	background-color:#f7f7f7;
	
}
.table1 tr:nth-child(even){
	background-color:#ffffff;
}
</style>

</head>
<body>
	<form action="" id="main_board_view" name="main_board_view"
		method="get">
		<input type="text" style="width 0px; visibility: hidden;">
		<input type="text" style="width 0px; visibility: hidden;">

		<table class=table1  width="100%" cellpadding="0" cellspacing="0" border="0"  >
		    
			<thead>
        		<tr>
            	<td colspan="7" bgcolor="#FFFFFF" >
            	<font size=5 , style="font-family:fantasy;">공지사항</font>
            	 </td>
       	 		</tr>
    		</thead>
    	
			<tr  style="background: url repeat-x; text-align: center; background-color: #00D8FF ; font-weight:bolder; " >
				<td width="5"></td>
				<td width="73">No</td>
				<td width="379">Title</td>
				<td width="73">Writer</td>
				<td width="164">Date</td>
				<td width="58">Read</td>
				<td width="7"></td>
			</tr>
			<tr height="2" bgcolor="#000000"> <td colspan="6"></td></tr>
			<%
				if (boardsize != 0) {
					for (int i = 0; i < boardsize; i++) {
						BoardBean boardbean = (BoardBean) boardList.get(i);
						startnum = boardbean.getBoardid();
			%>
			<tr onmouseover="this.style.background='#C4FDFF'" onmouseout="this.style.background='white'" style="background: url repeat-x; text-align: center;">
				<td width="5"></td>
				<td width="73"><%=boardbean.getBoardid()%></td>
				<td width="379"  style="text-align: left"><a
					href="MainBoardDetailAction.bo?main_page_id=<%=boardbean.getBoardid()%>">
						<%=boardbean.getTitle()%>
				</a></td>
				<td width="73"><%=boardbean.getBoard_member_name()%></td>
				<td width="164"><%=boardbean.getWritedate()%></td>
				<td width="58"><%=boardbean.getReadcount()%></td>
				<td width="7"></td>
			</tr>
			<%
					}
				}
			%>
			<tr height="25" align="center">
			</tr>
			<tr height="1" bgcolor="#D2D2D2">
				<td colspan="6"></td>
			</tr>

			<tr height="1" bgcolor="#000000">
				<td colspan="6" width="752"></td>
			</tr>

		</table>
		

		
		<table  width="100%" cellpadding="0" cellspacing="0" border="0">
			<tr align="center">
			
			<!-- 검색부분 boardlist_item_select에서 선택된 값과 boardlist_search_item_select에 선택된 값을
			board_search_list()에서 alert로 결과값을 띄우게 해주세요
			  -->
				<td width="33.3%" >
				
				<%if(request.getParameter("board_search_type")==null){ %>
				<select id="boardlist_search_item_select" name="boardlist_search_item_select">
					<option value="title" selected="selected">title</option>
					<option value="name" >name</option>
				</select>
				<input id="boardlist_search_item_content" name="boardlist_search_item_content">
				
				<%}else if(request.getParameter("board_search_type").equals("name")){ %>
				<select id="boardlist_search_item_select" name="boardlist_search_item_select">
					<option value="title" >title</option>
					<option value="name" selected="selected">name</option>
				</select>
				<input id="boardlist_search_item_content" name="boardlist_search_item_content" value="<%=request.getParameter("board_search_content")%>">
				
				<%}else if(request.getParameter("board_search_type").equals("title")){ %>
				<select id="boardlist_search_item_select" name="boardlist_search_item_select">
					<option value="title" selected="selected">title</option>
					<option value="name" >name</option>
				</select>
				<input id="boardlist_search_item_content" name="boardlist_search_item_content" value="<%=request.getParameter("board_search_content")%>">
				<%} %>
				
				
				<!-- 검색 전송버튼 -->
				<a onclick="board_search_list()">검색</a>
				</td>
				
				
				<td width="33.3%"  style='text-align: center'>
				<!-- 검색옵션이 없을때 -->
				<%if(request.getParameter("board_search_type")==null){ %>
						<%
							if (!(boardsize < 10)) {
							%>
						<a href="MainBoardAction.bo?main_list_end_boardid=<%=startnum - 1%>">Prev</a>
						<%
							}
						%>
						&nbsp;&nbsp;
						<a href="MainBoardAction.bo?main_list_end_boardid=<%=endnum + 10%>">Next</a>
						</td>
						<%
							if (session.getAttribute("id") != null) {
								if(memberdao.getMemberAUTHORITY((String)session.getAttribute("id"))==2){
						%>
						<td style='text-align: right'><input type="button" value="Write"  onclick="main_write()"/></td>
						<%
								}
							}
						%>
						<!--이름 검색옵션이 있을때 -->
				<%}else if(request.getParameter("board_search_type").equals("name")){ %>
						<%
							if (!(boardsize < 10)) {
							%>
						<a href="MainBoardSearch.bo?main_list_end_boardid=<%=startnum - 1%>&board_search_type=name&board_search_content=<%=request.getParameter("board_search_content")%>">Prev</a>
						<%
							}
						%>
						&nbsp;&nbsp;
						<a href="MainBoardSearch.bo?main_list_end_boardid=<%=endnum + 10%>&board_search_type=name&board_search_content=<%=request.getParameter("board_search_content")%>">Next</a>
						</td>
						<%
							if (session.getAttribute("id") != null) {
								if(memberdao.getMemberAUTHORITY((String)session.getAttribute("id"))==2){
						%>
						<td style='text-align: right'><input type="button" value="Write"  onclick="main_write()"/></td>
						<%
								}
							}
						%>
						<!-- 검색옵션이 있을때 -->
					<%}else if(request.getParameter("board_search_type").equals("title")){ %>
						<%
							if (!(boardsize < 10)) {
							%>
						<a href="MainBoardSearch.bo?main_list_end_boardid=<%=startnum - 1%>&board_search_type=title&board_search_content=<%=request.getParameter("board_search_content")%>">Prev</a>
						<%
							}
						%>
						&nbsp;&nbsp;
						<a href="MainBoardSearch.bo?main_list_end_boardid=<%=endnum + 10%>&board_search_type=title&board_search_content=<%=request.getParameter("board_search_content")%>">Next</a>
						</td>
						<%} %>
						
						
			</tr>
		</table>


	</form>

	</iframe>
</body>
</html>