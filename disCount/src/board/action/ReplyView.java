package board.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.Action;
import member.action.ActionForward;
import reply.db.ReplyBean;
import reply.db.ReplyDAO;

public class ReplyView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("ReplyView 실행");
		ActionForward forward = new ActionForward();
		List resultList=new ArrayList();
		ReplyDAO replydao=new ReplyDAO();
		HttpSession session= request.getSession();
		String type=request.getParameter("reply_type");
		int board_id=Integer.valueOf(request.getParameter("board_id"));
		System.out.println("게시판 타입" +type+"게시판 아이디"+board_id);
		resultList=replydao.getReply(board_id, type);
		request.setAttribute("replylist", resultList);
		System.out.println("-----------------------------------------");
		forward.setPath("replyboard/replyboard.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
