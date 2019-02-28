package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.BoardBean;
import board.db.BoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class MainBoardDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
request.setCharacterEncoding("UTF-8");
		System.out.println("MainBoardDetailAction 시작");
		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		
		int num=Integer.parseInt(request.getParameter("main_page_id"));
		//boarddao.setReadCountUpdate(num);
		boarddata=boarddao.getDetail(num);
		boarddata.setFile(boarddao.getimagesrc(num));
		if(boarddata==null){
			System.out.println("상세보기 실패");
			return null;
		}
		System.out.println("상세보기 성공");
		boarddao.addreadCount(boarddata.getBoardid());
		
		
		request.setAttribute("boarddata", boarddata);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("./mainboard/boardview.jsp");
		return forward;
	}

}
