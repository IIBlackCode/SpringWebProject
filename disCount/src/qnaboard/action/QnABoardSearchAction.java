package qnaboard.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.db.QnABoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class QnABoardSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("QnABoardSearchAction 시작");
		request.setCharacterEncoding("utf-8");
		QnABoardDAO boarddao=new QnABoardDAO();		
		ActionForward forward=new ActionForward();
		List boardlist=new ArrayList();
		String search_type=request.getParameter("board_search_type");
		String search_content=request.getParameter("board_search_content");
		int list_boardid;
		if(search_type.equals("name"))
		{
			if(request.getParameter("main_list_end_boardid")!=null)
			{
				list_boardid=Integer.valueOf(request.getParameter("main_list_end_boardid"));
				System.out.println(list_boardid+"QnABoardSearchAction의 시작 id값");
			}else{
				System.out.println("main_list_end_boardid의 값이 없는 초기화면 입니다.");
				list_boardid=boarddao.getlastwrite();
				System.out.println(list_boardid+"QnABoardSearchAction의 시작 id값(게시판 초기화면)");
			}
			boardlist=boarddao.getSearchNameList(list_boardid, search_content);
			
		}else if(search_type.equals("title"))
		{
			if(request.getParameter("main_list_end_boardid")!=null)
			{
				list_boardid=Integer.valueOf(request.getParameter("main_list_end_boardid"));
				System.out.println(list_boardid+"QnABoardSearchAction의 시작 id값");
			}else{
				System.out.println("main_list_end_boardid의 값이 없는 초기화면 입니다.");
				list_boardid=boarddao.getlastwrite();
				System.out.println(list_boardid+"QnABoardSearchAction의 시작 id값(게시판 초기화면)");
			}
			boardlist=boarddao.getSearchTitleList(list_boardid, search_content);
		}
		request.setAttribute("boardlist", boardlist);
		forward.setPath("qnaboard/boardlist.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
