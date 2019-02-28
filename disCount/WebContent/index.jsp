<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js""></script>            
<script type="text/javascript">
$(function() {
	   $('#maincontent').load(function() {
	    $(this).css("height", ($(this).contents().find("body").height()+100) + "px");
	   });
});

/* var back_position=100;
var position_x_side=0;
var postion_go=1;
playbackground = setInterval(function() {
	
	if(position_x_side>100)
		{
		postion_go=2;
		}
	else if(position_x_side<0)
			{
		postion_go=1;
			}
	if(postion_go==1)
		{
		position_x_side=position_x_side+2;
		back_position=back_position+1;
		var result_postition=back_position+"px";
		  $("#index_body").css("background-position",position_x_side+"px "+result_postition);
		  console.log(result_postition);
		}
	else{
		position_x_side=position_x_side-2;
		back_position=back_position+1;
		var result_postition=back_position+"px";
		  $("#index_body").css("background-position",position_x_side+"px "+result_postition);
		  console.log(result_postition);
		}
	}, 30);  */
	
	
	
	
</script>
<style type="text/css">
div{width: 100%; text-align: center; margin:0%;}
.top_icon_div{width: 25%; height: 120pt; float: left; }
.top_title_div{width: 50%; height: 100pt; float: left; margin-top: 25px;}
.top_login_div{width: 25%; height: 100pt; float: left; margin-top: 85px;}
.left_item_div{width: 15%; height: 585pt;  float: left;}
.main_div{width: 63%;height: 585pt; float: left;}
.ad_div{width: 22%; height:585pt; float: left;}
iframe {	width: 100%;height: 100%;}
</style>
<%
%>
</head>
<!-- background-image:url('use_image/backgroundimage.jpg'); -->
<body name="index_body" id="index_body" style=" background-position: 100px; margin-left: 10%; margin-right: 10%;"  >

	<div>
	 
		<div class="top_icon_div" >
			<!-- <iframe scrolling="no" frameborder="0" > -->
				<a href="./index.jsp"><img src="images/side3.png" width="70%" height="130%" style="background-color: rgba( 255, 255, 255, 0.0 )"></a> 
			<!-- </iframe> -->
		</div>
		
		<div class="top_title_div">
			<a href="./index.jsp"><img  src="./images/mainlogo5.png"  width="100%" height="100%" style="background-color: rgba( 255, 255, 255, 0.0 )"></a>
		</div>
		
		<div class="top_login_div"  style="padding-bottom: 0px;">
		
			<iframe name="mainlogin" scrolling="no" frameborder="0" allowTransparency="true" 
			<%if(session.getAttribute("id")!=null){
				//로그인 값이 있을시
			%>
				src="MemberLogin.me"
				<%
			}else{ 
				//로그인 값이 없을시
				%>
				src="MemberNoLogin.me"
				<% }%>
			>
			
			</iframe>
			
		</div>
	</div>
	<div>
	
		<div class="left_item_div">
			<iframe name="leftitem" src="mainpage/leftitem.jsp" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
		</div>
		<div class="main_div">
			<iframe name="maincontent" id="maincontent"  scrolling="No"  frameborder="0" allowTransparency="true" src="./mainpage/start_mainpage.jsp" style="height: 100%"></iframe>
		</div>
		<div class="ad_div" allowTransparency="true">
					<iframe name="ad_content" id="ad_content" scrolling="No"  frameborder="0" allowTransparency="true" src="./mainpage/rightpage.jsp"></iframe>
		<!-- 		<div  style=" align:center; font-size:100px; color:red; MARQUEE:( BGCOLOR=YELLOW SCROLLAMOUNT=2)";>광고모집 -->
		</div>	
			
			
	
</body>
</html>