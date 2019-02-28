package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.db.BoardBean;
import board.db.BoardDAO;
import member.action.Action;
import member.action.ActionForward;

public class MainBoardWriteAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
	throws Exception{
		System.out.println("MainBoardWriteAction 시작");
		BoardDAO boarddao=new BoardDAO();
		BoardBean boarddata=new BoardBean();
		HttpSession session = request.getSession();
		
		ActionForward forward=new ActionForward();
		
		String realFolder="";
		String saveFolder="/mainboardsrc";
		
		int fileSize=5*1024*1024;
		
		//realFolder=request.getRealPath(saveFolder);
		
		realFolder=request.getSession().getServletContext().getRealPath(saveFolder);
		
		boolean result = false;
		MultipartRequest multi=null;
		
		multi=new MultipartRequest(request, 
				realFolder,
				fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		
		
		try {
			boarddata.setFile(multi.getFilesystemName((String)multi.getFileNames().nextElement()));
			
			boarddata.setBoard_member_id((String) session.getAttribute("id"));
			boarddata.setBoardtype("main");
			boarddata.setBoard_member_name((String) session.getAttribute("name"));
			boarddata.setTitle(multi.getParameter("board_title"));
			boarddata.setContext(multi.getParameter("board_context"));
			
			
			result=boarddao.boardInsert(boarddata);
			System.out.println("게시판 파일 입력값은 "+boarddata.getFile());
			if(result==false){
				System.out.println("실패하였습니다");
				return null;
			}
			System.out.println("성공하였습니다.");
			
			forward.setRedirect(true);
			forward.setPath("./MainBoardAction.bo");
			return forward;
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		
		return null;
	}

}
