<%@page import="board.db.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.db.BoardDAO"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	BoardDAO boarddao=new BoardDAO();
    List hotboard=new ArrayList();
    List mainboard_list=new ArrayList();
    List freeboard_list=new ArrayList();
    List qnaboard_list=new ArrayList();
    hotboard=boarddao.getHotboard();
    mainboard_list=boarddao.getnewMain();
    freeboard_list=boarddao.getnewFree();
    qnaboard_list=boarddao.getnewQna();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	background-color:#ffffff;
	
}
.table1 tr:nth-child(even){
	background-color:#ffffff;
}
</style>
</head>
<body style="width: 100%;height: 100%; background-color: #FFFFFF;">
<iframe src="mainpage_ad_content.jsp" width="100%" height="400px" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
<center>
<table class=table1  border="0";>
<tr>
<td style="text-align: left;" colspan="3">

<div style=" float: left; width: 380px; height: 230px; background-color: #ffffff ;">
<div style=" background:#feb; background-color: #BDFF12; font-weight: bold;" ><b style="color: #FF0000;">New !</b> 인기글</div>
<table style="width: 100%; " >
<tr style="background-color: #F6F6F6;">
<td style="word-break:break-all; width: 40%; text-align: center;">
제목
</td>
<td style="word-break:break-all; width: 25%;text-align: center;">
작성자
</td>
<td style="word-break:break-all; width: 20%;text-align: center;">
조회수
</td>
</tr>
<%
	for(int i=0;i<hotboard.size();i++){
		BoardBean boardbean=(BoardBean)hotboard.get(i);
%>
<tr style="background-color:#EAEAEA;">
<td style="word-break:break-all; width: 40%; text-align: left;">
 <%=boardbean.getTitle() %> 
</td>
<td style="word-break:break-all; width: 25%; text-align: center;">
<%=boardbean.getBoard_member_name() %>
</td>
<td style="word-break:break-all; width: 20%; text-align: center;">
<%=boardbean.getReadcount() %> 
</td>
</tr>
<%
	}
%>
</table>
</div>
</td>

<td colspan="1" style="width:50px; background-color: #FFFFFF;">
</td>

<td style="text-align: left;" colspan="3">
<div style=" float: left; width: 380px; height: 230px">
<div style="background:#feb; background-color:#BDFF12; font-weight: bold;" ><b style="color: #FF0000;">New !</b> 공지글</div>
<table style="width: 100%; ">
<tr style="background-color: #F6F6F6;">
<td style="word-break:break-all; width: 40%; text-align: center;">
제목
</td>
<td style="word-break:break-all; width: 25%;text-align: center;">
작성자
</td>
<td style="word-break:break-all; width: 20%;text-align: center;">
조회수
</td>
</tr>
<%
	for(int i=0;i<mainboard_list.size();i++){
		BoardBean boardbean=(BoardBean)mainboard_list.get(i);
%>
<tr style="background-color:#EAEAEA">
<td style="word-break:break-all; width: 40%; text-align: left;">
 <%=boardbean.getTitle() %> 
</td>
<td style="word-break:break-all; width: 25%; text-align: center;">
<%=boardbean.getBoard_member_name() %>
</td>
<td style="word-break:break-all; width: 20%; text-align: center;">
<%=boardbean.getReadcount() %> 
</td>
</tr>
<%
	}
%>
</table>
</div>
</td>
</tr>


<tr>
<td style="text-align: left;" colspan="3">
<div style="float: left; width: 380px; height: 230px">
<div style="background:#feb; background-color:#BDFF12; font-weight: bold;" ><b style="color: #FF0000;">New !</b> 자유글</div>
<table style="width: 100%; ">
<tr style="background-color: #F6F6F6;">
<td style="word-break:break-all; width: 40%; text-align: center;">
제목
</td>
<td style="word-break:break-all; width: 25%;text-align: center;">
작성자
</td>
<td style="word-break:break-all; width: 20%;text-align: center;">
조회수
</td>
</tr>
<%
	for(int i=0;i<freeboard_list.size();i++){
		BoardBean boardbean=(BoardBean)freeboard_list.get(i);
%>
<tr style="background-color:#EAEAEA">
<td style="word-break:break-all; width: 40%; text-align: left;">
 <%=boardbean.getTitle() %> 
</td>
<td style="word-break:break-all; width: 25%; text-align: center;">
<%=boardbean.getBoard_member_name() %>
</td>
<td style="word-break:break-all; width: 20%; text-align: center;">
<%=boardbean.getReadcount() %> 
</td>
</tr>
<%
	}
%>
</table>
</div>
</td>

<td colspan="1">
</td>

<td style="text-align: left;"colspan="3">
<div style="float: left; width: 380px; height: 230px">
<div style="background:#feb; background-color:#BDFF12; font-weight: bold;" ><b style="color: #FF0000;">New !</b> QnA</div>
<table style="width: 100%; ">
<tr style="background-color: #F6F6F6;">
<td style="word-break:break-all; width: 40%; text-align: center;">
제목
</td>
<td style="word-break:break-all; width: 25%;text-align: center;">
작성자
</td>
<td style="word-break:break-all; width: 20%;text-align: center;">
조회수
</td>
</tr>
<%
	for(int i=0;i<qnaboard_list.size();i++){
		BoardBean boardbean=(BoardBean)qnaboard_list.get(i);
%>
<tr style="background-color:#EAEAEA">
<td style="word-break:break-all; width: 40%; text-align: left;">
 <%=boardbean.getTitle() %> 
</td>
<td style="word-break:break-all; width: 25%; text-align: center;">
<%=boardbean.getBoard_member_name() %>
</td>
<td style="word-break:break-all; width: 20%; text-align: center;">
<%=boardbean.getReadcount() %> 
</td>
</tr>
<%
	}
%>
</table>
</div>
</td>

</tr>

</table>
</center>
</body>
</html>