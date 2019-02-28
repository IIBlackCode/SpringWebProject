package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.action.Action;
import member.action.ActionForward;
import reply.db.ReplyBean;
import reply.db.ReplyDAO;

public class ReplyWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		System.out.println("ReplyWriteAction 실행");
		System.out.println("내용="+(String)request.getParameter("write_reply_context"));
		System.out.println("글 번호="+(String) request.getParameter("Board_id")+"글 타입="+(String) request.getParameter("Board_type"));
		ActionForward forward=new ActionForward();
		ReplyBean replybean=new ReplyBean();
		HttpSession session=request.getSession();
		replybean.setReply_member_id((String)session.getAttribute("id"));
		replybean.setReply_member_name((String)session.getAttribute("name"));
		replybean.setReply_context((String)request.getParameter("write_reply_context"));
		replybean.setTable_name((String) request.getParameter("Board_type"));
		replybean.setTable_id(Integer.valueOf((String) request.getParameter("Board_id")) );
		ReplyDAO replydao=new ReplyDAO();
		replydao.writeReply(replybean);

//<iframe src="ReplyView.bo?reply_type=main&board_id=<%=request.getParameter("main_page_id") %>" 
		forward.setPath("ReplyView.bo?reply_type="+(String) request.getParameter("Board_type")+"&board_id="+(String) request.getParameter("Board_id"));
		forward.setRedirect(false);
		return forward;
	}

}
