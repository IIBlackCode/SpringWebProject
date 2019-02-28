package reply.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import member.db.MemberBean;

public class ReplyDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	public ReplyDAO(){
		try {
			Context init = new InitialContext();
			ds=(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 :" +ex);
			return;
		}
	}
	
	//댓글 불러오기 
		public List getReply(int boardid,String type){
			System.out.println("getReply 시작");
			String sql="SELECT * FROM reply_table WHERE table_id=? and table_name=?";
			List listresult= new ArrayList();
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, boardid);
				pstmt.setString(2, type);
				rs=pstmt.executeQuery();
				while(rs.next()){
					ReplyBean replyresult = new ReplyBean();
					replyresult.setReply_id(rs.getInt("reply_id"));
					replyresult.setReply_member_id(rs.getString("reply_member_id"));
					replyresult.setTable_id(rs.getInt("table_id"));
					replyresult.setTable_name(rs.getString("table_name"));
					replyresult.setWrite_date(rs.getDate("write_date"));
					replyresult.setReply_context(rs.getString("reply_context"));
					replyresult.setReply_member_name(rs.getString("reply_member_name"));
					listresult.add(replyresult);
				}
				return listresult;
				
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("getReply 에러"+e);
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return null;
		}
			//댓글 작성 
			public void writeReply(ReplyBean replybean){
					String sql="INSERT INTO reply_table VALUES(REPLY_AUTOKEY.NEXTVAL,?,?,?,?,sysdate,?)";
					try{
						con=ds.getConnection();
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1, replybean.getReply_member_id());
						pstmt.setString(2, replybean.getReply_member_name());
						pstmt.setInt(3, replybean.getTable_id());
						pstmt.setString(4, replybean.getTable_name());
						pstmt.setString(5, replybean.getReply_context());
						pstmt.executeUpdate();
						
					}catch (Exception e) {
						// TODO: handle exception
						System.out.println("writeReply 에러"+e);
					}finally {
						if(rs!=null) try{rs.close();}catch (Exception e2) {}
						if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
						if(con!=null) try{con.close();}catch (Exception e2) {}
					}
				}
				//댓글 삭제
				public boolean deleteReply(int tableid){
					String sql="DELETE FROM reply_table WHERE reply_id=?";
					try{
						con=ds.getConnection();
						pstmt=con.prepareStatement(sql);
						pstmt.setInt(1, tableid);
						rs=pstmt.executeQuery();
						
					}catch (Exception e) {
						// TODO: handle exception
						System.out.println("deleteReply 에러"+e);
					}finally {
						if(rs!=null) try{rs.close();}catch (Exception e2) {}
						if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
						if(con!=null) try{con.close();}catch (Exception e2) {}
					}
					return true;
				}
				//권한 확인
				public boolean permission(int reply_id,String member_id){
					String sql="SELECT reply_member_id FROM MEMBER_TABLE WHERE  reply_id=?";
					boolean result=false;
					try{
						con=ds.getConnection();
						pstmt=con.prepareStatement(sql);
						pstmt.setInt(1, reply_id);
						rs=pstmt.executeQuery();
						if(rs.next()){
							result=true;
							if(rs.getString("reply_member_id").equals(member_id)){
								result=false;//일치
							}else{
								result=false;//불일치
							}
						}else{
							result=false;//아이디 없음
						}
					}catch (Exception e) {
						// TODO: handle exception
						System.out.println("permission 에러"+e);
					}finally {
						if(rs!=null) try{rs.close();}catch (Exception e2) {}
						if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
						if(con!=null) try{con.close();}catch (Exception e2) {}
					}
					return result;
				}
				//댓글 수정
				public boolean changeReply(ReplyBean reply){
					String sql="UPDATE reply_table SET REPLY_CONTEXT=? WHERE REPLY_ID=?";
		
					try{
						con=ds.getConnection();
						pstmt=con.prepareStatement(sql);
						pstmt.setString(1, reply.getReply_context());
						pstmt.setInt(2, reply.getReply_id());
						pstmt.executeUpdate();
					}catch (Exception e) {
						// TODO: handle exception
						System.out.println("changeReply 에러"+e);
					}finally {
						if(rs!=null) try{rs.close();}catch (Exception e2) {}
						if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
						if(con!=null) try{con.close();}catch (Exception e2) {}
					}
					return true;
				}
}
