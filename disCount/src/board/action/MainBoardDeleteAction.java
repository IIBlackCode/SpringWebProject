package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.BoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class MainBoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("MainBoardDeleteAction 시작");
		ActionForward forward=new ActionForward();
		BoardDAO boarddao=new BoardDAO();
		boarddao.boardDelete(Integer.valueOf(request.getParameter("board_id")));
		forward.setRedirect(true);
		forward.setPath("MainBoardAction.bo");
		return forward;
	}

}
