package board.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.Action;
import member.action.ActionForward;

public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

    private void startProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
    	System.out.println("Board startProcess 시작");
    	String RequestURI=request.getRequestURI();
    	String ContextPath=request.getContextPath();
    	String command=RequestURI.substring(ContextPath.length());
    	ActionForward forward=null;
    	Action action=null;
    	System.out.println(RequestURI +" : command : "+command);
    	
    	//공지 게시판 초기화면
    	if(command.equals("/MainBoardAction.bo")){
    		action=new MainBoardAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 글 검색 리스트
    	else if(command.equals("/MainBoardSearch.bo")){
    		action=new MainBoardSearchAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 글 작성 뷰
    	else if(command.equals("/MainBoardWrite.bo")){
    		forward=new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("./mainboard/boardwriteview.jsp");
    	}
    	//공지 게시판 글 작성 실행시
    	else if(command.equals("/MainBoardWriteAction.bo")){
    		action=new MainBoardWriteAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 뷰
    	else if(command.equals("/MainBoardDetailAction.bo")){
    		action= new MainBoardDetailAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 글 수정용 내용 보기
    	else if(command.equals("/MainBoardModifyView.bo")){
    		action=new MainBoardModifyView();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 글 내용 수정
    	else if(command.equals("/MainBoardModifyAction.bo")){
    		action=new MainBoardModifyAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//공지 게시판 글 삭제
    	else if(command.equals("/MainBoardDeleteAction.bo")){
    		action=new MainBoardDeleteAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	//댓글 가져오기
    	else if(command.equals("/ReplyView.bo")){
    		action=new ReplyView();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//댓글 작성
    	else if(command.equals("/ReplyWriteAction.bo")){
    		action=new ReplyWriteAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//댓글 삭제
    	else if(command.equals("/ReplyDeleteAction.bo")){
    		action=new ReplyDeleteAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//댓글 수정
    	else if(command.equals("/ReplyChangeAction.bo")){
    		action=new MainBoardDeleteAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	
    	
    	
    	
    	
    	
    	
    	
    	//---------처리--------
    	if(forward!=null){
    		System.out.println("forward값 : "+forward);
    		if(forward.isRedirect()){
    			//내용을 넘겨줄때
    			response.sendRedirect(forward.getPath());
    		}else{
    			//내용을 넘겨주지 않고 초기화 시킬때
    			RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
    			dispatcher.forward(request, response);
    		}
    	}
    	
	}
	
    
    
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet 전송");
		startProcess(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost 전송");
		startProcess(request,response);
	}


	

}
