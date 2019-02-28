package board.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class FreeBoardDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	public FreeBoardDAO(){
		try {
			Context init = new InitialContext();
			ds=(DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception ex) {
			System.out.println("DB 연결 실패 :" +ex);
			return;
		}
	}
	

	// 글 등록
		public boolean boardInsert(BoardBean board) {
			int num = 0;
			String sql = "";

			int result = 0;

			try {
				con = ds.getConnection();
				pstmt = con.prepareStatement("select max(boardid) from free_board_table");
				rs = pstmt.executeQuery();

				if (rs.next())
					num = rs.getInt(1) + 1;
				else
					num = 1;

				sql = "insert into free_board_table(board_member_id,boardtype,boardid,board_member_name,";
				sql += "board_title,board_context,writedate,readcount,board_file)"
						+ " values(?,?,FREE_BOARD_AUTOKEY.NEXTVAL,?,?,?,sysdate,?,?)";
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, board.getBoard_member_id());
				pstmt.setString(2, board.getBoardtype());
				pstmt.setString(3, board.getBoard_member_name());
				pstmt.setString(4, board.getTitle());
				pstmt.setString(5, board.getContext());
				pstmt.setInt(6, 0);
				pstmt.setString(7, board.getFile());
				result = pstmt.executeUpdate();
				if (result == 0)
					return false;

				return true;
			} catch (Exception ex) {
				System.out.println("boardInsert 에러 :" + ex);
			} finally {
				if (rs != null)
					try {
						rs.close();
					} catch (SQLException ex) {
					}
				if (pstmt != null)
					try {
						pstmt.close();
					} catch (SQLException ex) {
					}
				if (con != null)
					try {
						con.close();
					} catch (SQLException ex) {
					}
			}
			return false;
		}

	// 글 삭제

	public boolean boardDelete(int num) {
		String board_delete_sql = "delete from free_board_table where boardid=?";
		int result = 0;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("boardDelete 에러 : " + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
		return false;
	}

	// 글 수정
	public boolean boardModify(BoardBean modifyboard) throws Exception {
		String sql = "update free_board_table set board_title=?,";
		sql += "board_context=? where boardid=?";

		try {
			con=ds.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, modifyboard.getTitle());
			pstmt.setString(2, modifyboard.getContext());
			pstmt.setInt(3, modifyboard.getBoardid());
			pstmt.executeUpdate();
			return true;
		} catch (Exception ex) {
			System.out.println("boardModify 에러 : " + ex);
		} finally {
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null)try{pstmt.close();}catch(SQLException ex){}
			if(con!=null)try{con.close();}catch(SQLException ex){}
		}
		return false;
	}

	// 글 목록 보기
	public List getBoardList(int startid) {
		String board_list_sql = "SELECT * FROM (SELECT * FROM free_board_table where boardid<=? order by boardid desc) WHERE ROWNUM<=10";
		List list = new ArrayList();
		System.out.println(startid+"시작 id이름");
		try {
			con = ds.getConnection();
			startid++;
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBoard_member_id(rs.getString("board_member_id"));
				board.setBoardtype(rs.getString("boardtype"));
				board.setBoard_member_name(rs.getString("board_member_name"));
				board.setBoardid(rs.getInt("boardid"));
				board.setTitle(rs.getString("board_title"));
				board.setContext(rs.getString("board_context"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				list.add(board);
			}
			return list;

		} catch (Exception ex) {
			System.out.println("getBoardList 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}

	// 글쓴이인지 확인.

	public boolean isBoardWriter(String num, String id) {
		System.out.println("id=" + id);
		String board_sql = "select * from free_board_table where boardid=?";

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(board_sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			System.out.println("board_member_id+"+"글 작성자의 아이디");
			if (num.equals(rs.getString("board_member_id"))) {
				System.out.println("인증성공");
				return true;
			}
		} catch (SQLException ex) {
			System.out.println("isBoardWriter 에러 :" + ex);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}
		return false;
	}

	// 글 내용 보기
	public BoardBean getDetail(int num) throws Exception {
		BoardBean board = null;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("select * from free_board_table where boardid =?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardBean();
				board.setBoard_member_id(rs.getString("board_member_id"));
				board.setBoardtype(rs.getString("boardtype"));
				board.setBoardid(rs.getInt("boardid"));
				board.setBoard_member_name(rs.getString("board_member_name"));
				board.setTitle(rs.getString("board_title"));
				board.setContext(rs.getString("board_context"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
			}
			return board;
		} catch (Exception ex) {
			System.out.println("getDetail 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	//제일 최근의 글 구하기
	public int getlastwrite(){
		int x = 0;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("select boardid from free_board_table order by boardid desc");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}

		} catch (Exception ex) {
			System.out.println("getlastwrite 에러:" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return x;

	}
	
	
	// 글의 갯수 구하기

	public int getListCount() {
		int x = 0;

		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("select count(*) from free_board_table");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}

		} catch (Exception ex) {
			System.out.println("getListCount 에러:" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return x;

	}
	//조회수 증가
	public boolean addreadCount(int boardid) {
		int readcount;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("update free_board_table SET readcount=(SELECT readcount from free_board_table where boardid=?)+1 where boardid=?");
			pstmt.setInt(1, boardid);
			pstmt.setInt(2, boardid);
			pstmt.executeUpdate();
			System.out.println(boardid+"의 조회수 1증가");
		} catch (Exception ex) {
			System.out.println("getreadCount 에러:" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return true;

	}
//이미지 업로드
	public boolean setimagesrc(String board_file,int boardid) {
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("update free_board_table SET board_file=? where boardid=?");
			pstmt.setString(1, board_file);
			pstmt.setInt(2, boardid);
			pstmt.executeUpdate();
			System.out.println(boardid+"업로드 완료");
		} catch (Exception ex) {
			System.out.println("setimagesrc 에러:" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return true;
	}
//이미지 불러오기
	public String getimagesrc(int boardid) {
		String imagesrc;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement("select board_file from free_board_table where boardid=?");
			pstmt.setInt(1, boardid);
			rs=pstmt.executeQuery();
			rs.next();
			imagesrc=rs.getString("board_file");
			System.out.println(boardid+"업로드 완료");
			return imagesrc;
		} catch (Exception ex) {
			System.out.println("getimagesrc 에러:" + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	//이름 검색
	public List getSearchNameList(int startid,String searchname) {
		String board_list_sql = "SELECT * FROM (SELECT * FROM free_board_table where boardid<=? and board_member_name like ? order by boardid desc) WHERE ROWNUM<=10";
		List list = new ArrayList();
		System.out.println(startid+"시작 id이름");
		System.out.println(searchname+"검색 이름");
		try {
			con = ds.getConnection();
			startid++;
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startid);
			pstmt.setString(2, "%"+searchname+"%");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBoard_member_id(rs.getString("board_member_id"));
				board.setBoardtype(rs.getString("boardtype"));
				board.setBoard_member_name(rs.getString("board_member_name"));
				board.setBoardid(rs.getInt("boardid"));
				board.setTitle(rs.getString("board_title"));
				board.setContext(rs.getString("board_context"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				list.add(board);
			}
			return list;

		} catch (Exception ex) {
			System.out.println("getSearchNameList 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
			
	
	//제목 검색
	
	public List getSearchTitleList(int startid,String searchtitle) {
		String board_list_sql = "SELECT * FROM (SELECT * FROM free_board_table where boardid<=? and board_title like ? order by boardid desc) WHERE ROWNUM<=10";
		List list = new ArrayList();
		System.out.println(startid+"시작 id이름");
		System.out.println(searchtitle+"검색 내용");
		try {
			con = ds.getConnection();
			startid++;
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startid);
			pstmt.setString(2, "%"+searchtitle+"%");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setBoard_member_id(rs.getString("board_member_id"));
				board.setBoardtype(rs.getString("boardtype"));
				board.setBoard_member_name(rs.getString("board_member_name"));
				board.setBoardid(rs.getInt("boardid"));
				board.setTitle(rs.getString("board_title"));
				board.setContext(rs.getString("board_context"));
				board.setWritedate(rs.getDate("writedate"));
				board.setReadcount(rs.getInt("readcount"));
				list.add(board);
			}
			return list;

		} catch (Exception ex) {
			System.out.println("getSearchNameList 에러 : " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException ex) {
				}
		}
		return null;
	}
	
	

}
