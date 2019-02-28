package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.db.MemberBean;
import member.db.MemberDAO;

public class MemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("멤버 로그인 Action 시작");
		ActionForward forward =new ActionForward();
		HttpSession session=request.getSession();
		MemberDAO memberdao=new MemberDAO();
		MemberBean member=new MemberBean();
		int result=-1;
		
		member.setMember_id(request.getParameter("MEMBER_ID"));
		member.setPassword(request.getParameter("MEMBER_PASSWORD"));
		System.out.println(member.getMember_id()+"님이 "+member.getPassword()+"의 비밀번호로 접속을 시도합니다.");
		result=memberdao.isMember(member);
		System.out.println(result+"번은 로그인 결과값입니다.");
		if(result==0){
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.');");
			out.println("location.href='./MemberNoLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		}
		else if(result==-1){
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다.');");
			out.println("location.href='./MemberNoLogin.me';");
			out.println("</script>");
			out.close();
			return null;
		}
		//로그인 성공
		session.setAttribute("id",member.getMember_id());
		
		String name =null;
		name=memberdao.isName(member);
		session.setAttribute("name",name);
			System.out.println("로그인 성공");
		forward.setRedirect(true);
		forward.setPath("./MemberLogin.me");
		return forward;
	}

}
