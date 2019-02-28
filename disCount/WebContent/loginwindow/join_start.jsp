<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입약관</title>

	<style type="text/css">
	textarea
	{
		width: 100%;
		height : 300px;	
	}
	
	body
	{
		width: 500px;
		height: 300px;
	}
	</style>

</head>
<body>

	  
	<!-- 회원가입약관 동의 시작 { -->
<div class="mbskin">
    <form  name="fregister" id="fregister" action="" onsubmit="return fregister_submit(this);" method="POST" autocomplete="off">

    <p>회원가입약관 및 개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.</p>

    <section id="fregister_term">
        <h2>회원가입약관</h2>
        <textarea readonly>회원 가입

		</textarea>
        <fieldset class="fregister_agree">
            <label for="agree11">회원가입약관의 내용에 동의합니다.</label>
            <input type="checkbox" name="agree" value="1" id="1agree">
        </fieldset>
    </section>

    <section id="fregister_private">
        
        <h2>개인정보처리방침안내</h2>
        
        <div class="tbl_head01 tbl_wrap">
        <textarea readonly style="width: 100%">- 개인정보취급방침

		</textarea>

            
        </div>
        <fieldset class="fregister_agree">
            <label for="agree21">개인정보처리방침안내의 내용에 동의합니다.</label>
            <input type="checkbox" name="agree2" value="1" id="2agree">
        </fieldset>
    </section>

    <div class="btn_confirm">
        <input type="submit" class="btn_submit" value="회원가입">
    </div>

    </form>

    <script>
    function fregister_submit(f)
    {
        if (!f.agree.checked) {
            alert("회원가입약관의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree.focus();
            return false;
        }

        else if (!f.agree2.checked) {
            alert("개인정보처리방침안내의 내용에 동의하셔야 회원가입 하실 수 있습니다.");
            f.agree2.focus();
            return false;
        }

        else{
        	document.fregister.action="../loginwindow/join_member.jsp";
        	document.fregister.submit();
        }
    }
    </script>
</div>
<!-- } 회원가입 약관 동의 끝 --></div>

      <div id="jb-sidebar-right">
<script type="text/javascript" language="javascript" src=""></script>
<br><br><br>

</body>
</html>