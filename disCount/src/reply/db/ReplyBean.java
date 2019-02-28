package reply.db;

import java.sql.Date;

public class ReplyBean {
	private int reply_id;//자체적인 키값.
	private String reply_member_name;//작성자 이름
	public String getReply_member_name() {
		return reply_member_name;
	}
	public void setReply_member_name(String reply_member_name) {
		this.reply_member_name = reply_member_name;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	private String	reply_member_id;//작성자 id
	private int	table_id;//게시판의 속한 글id
	private String	table_name;//게시판의 이름
	private Date	write_date;//작성일
	private String	reply_context;//댓글 내용

	public String getReply_member_id() {
		return reply_member_id;
	}
	public void setReply_member_id(String reply_member_id) {
		this.reply_member_id = reply_member_id;
	}
	public int getTable_id() {
		return table_id;
	}
	public void setTable_id(int table_id) {
		this.table_id = table_id;
	}
	public String getTable_name() {
		return table_name;
	}
	public void setTable_name(String table_name) {
		this.table_name = table_name;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public String getReply_context() {
		return reply_context;
	}
	public void setReply_context(String reply_context) {
		this.reply_context = reply_context;
	}
}
