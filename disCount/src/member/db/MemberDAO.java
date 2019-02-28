package member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import board.db.BoardBean;

public class MemberDAO {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	public MemberDAO(){
		try {
			Context init = new InitialContext();
			ds=(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 :" +ex);
			return;
		}
	}
	
	//로그인 
		public int isMember(MemberBean member){
			String sql="SELECT PASSWORD FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			int result=-1;
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getMember_id());
				rs=pstmt.executeQuery();
				if(rs.next()){
					if(rs.getString("PASSWORD").equals(member.getPassword())){
						result=1;//일치
					}else{
						result=0;//불일치
					}
				}else{
					result=-1;//아이디 없음
				}
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("isMember 에러"+e);
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return result;
		}
		
		//회원가입
		public boolean joinMember(MemberBean member) {
			String sql="INSERT INTO MEMBER_TABLE VALUES(?,0,1,?,?,?,?,?,?,?,?,sysdate)";
			int result=0;
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getMember_id());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getImagesrc());
				pstmt.setString(4, member.getEmail());
				pstmt.setString(5, member.getName());
				pstmt.setInt(6, member.getGender());
				pstmt.setString(7, member.getHobby());
				pstmt.setDate(8, member.getBirthday());
				pstmt.setString(9, member.getStart_ip());
				
				result=pstmt.executeUpdate();
				if(result!=0){
					return true;
				}
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("joinMember 에러"+e);
			}finally{
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return false;
		}
		//이름 구하기
		public String isName(MemberBean member) {
			// TODO Auto-generated method stub
			String sql="SELECT NAME FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			String resultname=null;
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getMember_id());
				rs=pstmt.executeQuery();
				if(rs.next()){
							resultname=rs.getString("NAME");
					}else{
				}
			}catch (Exception e) {
				// TODO: handle exception
				System.out.println("isName 에러"+e);
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return resultname;
		}
		//회원정보 수정
		public boolean changeMember(MemberBean member) throws Exception {
			String sql = "update member_table set password=?,";
			sql += "imagesrc = ? , email = ? , name = ? , gender = ? , hobby = ? , birthday = ?  where member_id=?";

			try {
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, member.getPassword());
				pstmt.setString(2, member.getImagesrc());
				pstmt.setString(3, member.getEmail());
				pstmt.setString(4, member.getName());
				pstmt.setInt(5, member.getGender());
				pstmt.setString(6, member.getHobby());
				pstmt.setDate(7, member.getBirthday());
				pstmt.setString(8, member.getMember_id());
				pstmt.executeUpdate();
				return true;
			} catch (Exception ex) {
				System.out.println("changeMember 에러 : " + ex);
			} finally {
				if(rs!=null)try{rs.close();}catch(SQLException ex){}
				if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
				if(con!=null)try{con.close();}catch(SQLException ex){}
			}
			return false;
		}
		//회원 이미지 구하기
		public String getMembersrc(String id){
			String src=null;
			String sql="SELECT IMAGESRC FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				rs.next();
				src=rs.getString(1);
			}catch (Exception e) {
				System.out.println("getMembersrc 에러 : " + e);
				// TODO: handle exception
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return src;
		}
		
		//회원 상세 내역 구하기
		public MemberBean getMemberState(String id){
			MemberBean getmember=new MemberBean();
			String sql="SELECT MEMBER_ID,ACTIVITYPOINT,AUTHORITY,PASSWORD,IMAGESRC,EMAIL,NAME,GENDER,HOBBY,BIRTHDAY,START_IP,START_DAY  FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				rs.next();
				getmember.setMember_id(rs.getString(1));
				getmember.setActivitypoint(rs.getInt(2));
				getmember.setAuthority(rs.getInt(3));
				getmember.setPassword(rs.getString(4));
				getmember.setImagesrc(rs.getString(5));
				getmember.setEmail(rs.getString(6));
				getmember.setName(rs.getString(7));
				getmember.setGender(rs.getInt(8));
				getmember.setHobby(rs.getString(9));
				getmember.setBirthday(rs.getDate(10));
				getmember.setStart_ip(rs.getString(11));
				getmember.setStart_day(rs.getDate(12));
			}catch (Exception e) {
				// TODO: handle exception
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return getmember;
		}
		//회원 삭제
		public boolean getMemberDelete(String id){
			String sql="DELETE FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
			}catch (Exception e) {
				// TODO: handle exception
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return true;
		}
		//회원 권한 획득
		public int getMemberAUTHORITY(String id){
			String sql="SELECT AUTHORITY  FROM MEMBER_TABLE WHERE MEMBER_ID=?";
			int result;
			try{
				con=ds.getConnection();
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				rs.next();
				result=rs.getInt(1);
				return result;
			}catch (Exception e) {
				// TODO: handle exception
			}finally {
				if(rs!=null) try{rs.close();}catch (Exception e2) {}
				if(pstmt!=null) try{pstmt.close();}catch (Exception e2) {}
				if(con!=null) try{con.close();}catch (Exception e2) {}
			}
			return 0;
		}
}
