package freeboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.BoardBean;
import board.db.FreeBoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class FreeBoardModifyView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward=new ActionForward();
		request.setCharacterEncoding("utf-8");
		
			
				 FreeBoardDAO boarddao=new FreeBoardDAO();
				 BoardBean boarddata=new BoardBean();

				 int num=Integer.parseInt(request.getParameter("num"));
				 boarddata=boarddao.getDetail(num);
				 boarddata.setFile(boarddao.getimagesrc(num));
				 if(boarddata==null){
					 System.out.println("(수정) 상세 보기 실패");
					 return null;
				 }
				 System.out.println("(수정) 상세 보기 성공");
				 
				 request.setAttribute("boarddata", boarddata);
				 forward.setRedirect(false);
				 forward.setPath("./freeboard/boardmodify.jsp");
				 return forward;
	}
}
