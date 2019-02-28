package member.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.db.MemberBean;
import member.db.MemberDAO;

public class MemberChangeView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MemberChangeView 실행");
		request.setCharacterEncoding("utf-8");
		ActionForward forward =new ActionForward();
		MemberDAO memberdao=new MemberDAO();
		MemberBean member=new MemberBean();
		HttpSession session=request.getSession();
		
		member=memberdao.getMemberState((String)session.getAttribute("id"));
		request.setAttribute("memberstate",member);
		forward.setPath("loginwindow/change_member.jsp");
		forward.setRedirect(false);
		return forward;
		
	}

}
