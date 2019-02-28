package qnaboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.QnABoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class QnABoardDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("QnABoardDeleteAction 시작");
		ActionForward forward=new ActionForward();
		QnABoardDAO boarddao=new QnABoardDAO();
		boarddao.boardDelete(Integer.valueOf(request.getParameter("board_id")));
		forward.setRedirect(true);
		forward.setPath("QnABoardAction.bo");
		return forward;
	}

}
