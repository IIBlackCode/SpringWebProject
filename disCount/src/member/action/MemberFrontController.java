package member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.action.Action;
import member.action.ActionForward;

/**
 * Servlet implementation class MemberFrontController
 */
@WebServlet("/MemberFrontController")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    private void startProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	System.out.println("startProcess 시작");
    	String RequestURI=request.getRequestURI();
    	String ContextPath=request.getContextPath();
    	String command=RequestURI.substring(ContextPath.length());
    	ActionForward forward=null;
    	Action action=null;
    	System.out.println(RequestURI +" : command : "+command);
    	
    	
    	
    	//회원 로그인 Action
    	if(command.equals("/MemberLoginAction.me")){
    		action=new MemberLoginAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//회원 가입 Action
    	else if(command.equals("/MemberJoinAction.me")){
    		action=new MemberJoinAction();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//로그인 초기 화면으로
    	else if(command.equals("/MemberNoLogin.me")){
    		forward=new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("./loginwindow/no_login.jsp");
    	}
    	//로그인 성공 화면으로
    	else if(command.equals("/MemberLogin.me")){
    		forward=new ActionForward();
    		forward.setRedirect(false);
    		forward.setPath("./loginwindow/login.jsp");
    	}
    	//회원 정보 수정창
    	else if(command.equals("/MemberChange.me")){
    		action=new MemberChangeView();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//로그아웃
    	else if(command.equals("/MemberLogout.me")){
    		action=new MemberLogout();
    		try{
    			forward=action.execute(request, response);
    		}catch (Exception e) {
				// TODO: handle exception
    			e.printStackTrace();
			}
    	}
    	//멤버 수정
    	else if(command.equals("/MemberChangeAction.me")){
    		action=new MemberChangeAction();
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
