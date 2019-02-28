package member.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.db.MemberBean;
import member.db.MemberDAO;

public class MemberChangeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MemberChangeAction 시작");
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		boolean result = false;
		HttpSession session =request.getSession();
		String id = (String) session.getAttribute("id");
		MemberDAO memberdao = new MemberDAO();
		MemberBean member= new MemberBean();

		String realFolder="";
		String saveFolder="/mainboardsrc";
		
		int fileSize=5*1024*1024;
		
		realFolder=request.getSession().getServletContext().getRealPath(saveFolder);
		
		MultipartRequest multi=null;
		
		multi=new MultipartRequest(request, 
				realFolder,
				fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
			member.setImagesrc(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			member.setMember_id(id);
			member.setPassword(multi.getParameter("PASSWORD"));
			member.setEmail(multi.getParameter("EMAIL"));
			member.setName(multi.getParameter("NAME"));
			member.setGender(Integer.valueOf(multi.getParameter("MEMBER_GENDER")));
			member.setHobby(multi.getParameter("HOBBY"));
			member.setBirthday(Date.valueOf(multi.getParameter("BIRTHDAY")));
			
			memberdao.changeMember(member);
		
			forward.setRedirect(true);
			forward.setPath("loginwindow/succes_member.jsp");
		return forward;
	}

}
