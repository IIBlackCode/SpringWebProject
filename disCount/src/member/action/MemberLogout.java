package member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogout implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		System.out.println("MemberLogout 실행");
		HttpSession session=request.getSession();
		session.invalidate();
		forward.setPath("MemberNoLogin.me");
		forward.setRedirect(false);
		return forward;
	}

}
