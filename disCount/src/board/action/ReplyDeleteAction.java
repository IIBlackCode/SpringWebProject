package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.Action;
import member.action.ActionForward;
import reply.db.ReplyBean;
import reply.db.ReplyDAO;

public class ReplyDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		System.out.println("ReplyDeleteAction 실행");
		System.out.println("삭제할 댓글 id="+(String)request.getParameter("write_reply_context"));
		System.out.println("글 번호="+(String) request.getParameter("Board_id")+"글 타입="+(String) request.getParameter("Board_type"));
		ActionForward forward=new ActionForward();
		ReplyBean replybean=new ReplyBean();
		HttpSession session=request.getSession();
		ReplyDAO replydao=new ReplyDAO();
		replydao.deleteReply(Integer.valueOf(request.getParameter("write_reply_context")));

//<iframe src="ReplyView.bo?reply_type=main&board_id=<%=request.getParameter("main_page_id") %>" 
		forward.setPath("ReplyView.bo?reply_type="+(String) request.getParameter("Board_type")+"&board_id="+(String) request.getParameter("Board_id"));
		forward.setRedirect(false);
		return forward;
		
	}

}
