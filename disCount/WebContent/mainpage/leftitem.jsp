<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

nav {
	margin-bottom: 0;
}

ul {
	font-family: 'Hanna' ,  sans-serif;
	background: #ffffff;
	color: #000000;
	margin-right: 10px;
	text-decoration: none;
	text-align:right;
	border-radius: 5px;
	font-size: 15px;
	left: 0;
	list-style-type: none;
	margin-left: 10px;
	-webkit-overflow-scrolling: touch;
	overflow-y: none;
	padding: 16px 0;
	position: absolute !important;
	right: 0;
	top: 0 !important;
}

li {
	margin-top: 20px;
	margin-bottom: 20px;
	cursor: pointer;
}

/* li{text-align: right;} */
</style>
<script type="text/javascript">
	function notice() {
		parent.maincontent.location.href = "../MainBoardAction.bo";
		onclick = "clickcr(this,'prf.write','','',event);"
	}

	function freeBulletinBoard() {
		parent.maincontent.location.href = "../FreeBoardAction.fr";
		onclick = "clickcr(this,'prf.write','','',event);"
	}

	function questionBoard() {
		parent.maincontent.location.href = "../QnABoardAction.qna";
		onclick = "clickcr(this,'prf.write','','',event);"

	}

	function foreignDirect() {
		parent.maincontent.location.href = "aaa.jsp";
		alert("해외직구");
	}

	function groupDiscount() {
		parent.maincontent.location.href = "aaa.jsp";
		alert("단체할인");
	}

	function discountBug() {
		parent.maincontent.location.href = "aaa.jsp";
		alert("할인충");
	}
	function howTo() {
		parent.maincontent.location.href = "aaa.jsp";
		alert("해외직구하는법");
	}
	function foreign() {
		parent.maincontent.location.href = "aaa.jsp";
		alert("해외");
	}
	
	var watchId = navigator.geolocation.watchPosition(function(position){
		console.log('latitude: ', position.coords.latitude);
		console.log('longitude: ', position.coords.longitude);
		var newSrc = "https://www.google.com/maps/embed/v1/place?key=AIzaSyCCbUT_fkBb2nA7wjSDocCUPk0VZqZGWyU&q="+position.coords.latitude+"."+position.coords.longitude;
	    document.getElementById("mapiframe").src = newSrc;
		});
</script>
</head>
<body style="background: transparent;">

	
	<nav>
		<ul class="board" >
		<div  style=" background:#feb; background-color: #24FCFF; ">　</div>
			<li onclick="notice()">공지사항</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="freeBulletinBoard()">자유게시판</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="questionBoard()">질문게시판</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="foreignDirect()">해외 직구</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="groupDiscount()">단체 할인(사람모집)</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="howTo()">해외 직구하는법</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
			<li onclick="foreign()">해외</li>
			<hr  style="border:1px dashed #D5D5D5; border-bottom: thin;"/>
		</ul>
	</nav>
	<br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br>
	<br>
	<br><br><br><br>

	<br><br><br><br>
<div align="right">
	<!-- Google Map aip -->
	<iframe
	name="mapiframe"
	id="mapiframe"
  width="150px"
  height="150px"
  frameborder="0" style="border:0"
  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCCbUT_fkBb2nA7wjSDocCUPk0VZqZGWyU
    &q=37.57282, 126.9768" allowfullscreen>
</iframe>
</div>

</body>
</html>