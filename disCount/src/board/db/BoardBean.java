package board.db;

import java.sql.Date;

public class BoardBean {
	private String board_member_id;
	private String boardtype;
	private int boardid;
	private String title;
	private String context;
	private Date writedate;
	private String board_member_name;
	private String file;
	
	public String getBoard_member_name() {
		return board_member_name;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public void setBoard_member_name(String board_member_name) {
		this.board_member_name = board_member_name;
	}
	private int readcount;
	private Date startdate;
	private Date enddate;
	
	public String getBoard_member_id() {
		return board_member_id;
	}
	public void setBoard_member_id(String board_member_id) {
		this.board_member_id = board_member_id;
	}
	public String getBoardtype() {
		return boardtype;
	}
	public void setBoardtype(String boardtype) {
		this.boardtype = boardtype;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
}
