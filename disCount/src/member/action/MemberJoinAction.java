package member.action;

import java.io.File;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.db.MemberBean;
import member.db.MemberDAO;


public class MemberJoinAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("멤버 가입 Action 시작");

		request.setCharacterEncoding("utf-8");
		ActionForward forward =new ActionForward();
		MemberDAO memberdao=new MemberDAO();
		MemberBean member=new MemberBean();
		
//		member.setMember_id(request.getParameter("MEMBER_ID"));
//		member.setPassward(request.getParameter("PASSWORD"));
//		//member.setImagesrc(request.getParameter("IMAGESRC"));
//		member.setEmail(request.getParameter("EMAIL"));
//		member.setName(request.getParameter("NAME"));
//		System.out.println(request.getParameter("MEMBER_GENDER"));
//		member.setGender(Integer.valueOf(request.getParameter("MEMBER_GENDER")));
//		member.setHobby(request.getParameter("HOBBY"));
//		member.setBirthdate(Date.valueOf(request.getParameter("BIRTHDAY")));
//		member.setStart_ip(request.getParameter("START_IP"));
		
		String realFolder="";
		String saveFolder="/userimgsrc";
		int fileSize=5*1024*1024;
		realFolder=request.getSession().getServletContext().getRealPath(saveFolder);
		System.out.println(realFolder);
		
		MultipartRequest multi=null;
		multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		member.setImagesrc(multi.getFilesystemName(
					(String)multi.getFileNames().nextElement()));
		//이미지 경로
		//C:/aajsp_17/jsp_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/disCount/userimgsrc
		member.setMember_id(multi.getParameter("MEMBER_ID"));
		member.setPassword(multi.getParameter("PASSWORD"));
		//member.setImagesrc(request.getParameter("IMAGESRC"));
		member.setEmail(multi.getParameter("EMAIL"));
		member.setName(multi.getParameter("NAME"));
		member.setGender(Integer.valueOf(multi.getParameter("MEMBER_GENDER")));
		member.setHobby(multi.getParameter("HOBBY"));
		member.setBirthday(Date.valueOf(multi.getParameter("BIRTHDAY")));
		member.setStart_ip(multi.getParameter("START_IP"));
		
		
		boolean result=memberdao.joinMember(member);
		if(result){
			forward.setRedirect(false);
			forward.setPath("loginwindow/succes_member.jsp");
		}
		else
		{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('회원가입에 문제가 발생하였습니다.');");
			out.println("window.close();");
			out.println("</script>");
			out.close();
			forward.setRedirect(false);
			forward.setPath("loginwindow/join_start.jsp");
		}
		forward.setRedirect(true);
		return forward;
	}
}
