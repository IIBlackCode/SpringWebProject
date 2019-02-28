package freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.FreeBoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class FreeBoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("FreeBoardDeleteAction 시작");
		ActionForward forward=new ActionForward();
		FreeBoardDAO boarddao=new FreeBoardDAO();
		boarddao.boardDelete(Integer.valueOf(request.getParameter("board_id")));
		forward.setRedirect(true);
		forward.setPath("FreeBoardAction.fr");
		return forward;
	}

}
