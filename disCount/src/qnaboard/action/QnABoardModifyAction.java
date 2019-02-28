package qnaboard.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.db.BoardBean;
import board.db.QnABoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class QnABoardModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("QnABoardModifyAction 시작");
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		boolean result = false;
		HttpSession session =request.getSession();
		String num = (String) session.getAttribute("id");

		QnABoardDAO boarddao = new QnABoardDAO();
		BoardBean boarddata = new BoardBean();
		
		
		
		
		String realFolder="";
		String saveFolder="/qnaboardsrc";
		
		int fileSize=5*1024*1024;
		
		realFolder=request.getSession().getServletContext().getRealPath(saveFolder);
		
		MultipartRequest multi=null;
		
		multi=new MultipartRequest(request, 
				realFolder,
				fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
			boarddata.setFile(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			
			boarddata.setBoard_member_id((String) session.getAttribute("id"));
			boarddata.setBoardtype("main");
			boarddata.setBoard_member_name((String) session.getAttribute("name"));
			boarddata.setTitle(multi.getParameter("board_title"));
			boarddata.setContext(multi.getParameter("board_context"));
		
			boolean usercheck = boarddao.isBoardWriter(num, multi.getParameter("BOARD_ID"));
			
			System.out.println(num+":   세션 아이디값     "+multi.getParameter("BOARD_ID")+"게시판 아이디값");
			
		if (usercheck == false) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('유저 이름이 일치하지 않습니다.');");
			out.println("location.href='./BoardList.qna';");
			out.println("</script>");
			out.close();
			return null;
		}
		try {
			boarddata.setBoardid(Integer.valueOf(multi.getParameter("BOARD_ID")));
			boarddata.setContext(multi.getParameter("BOARD_CONTENT"));
			boarddata.setTitle(multi.getParameter("BOARD_TITLE"));
			
			result = boarddao.boardModify(boarddata);
			boarddao.setimagesrc(boarddata.getFile(), boarddata.getBoardid());
			if (result == false) {
				System.out.println("실패하였습니다.");
				return null;
			}
			System.out.println("실패하였습니다.");
			forward.setRedirect(true);
			forward.setPath("./QnABoardDetailAction.qna?main_page_id=" + boarddata.getBoardid());
			return forward;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return forward;
	}

}
