package member.db;

import java.sql.Date;

public class MemberBean {
	private String member_id;
	private int activitypoint;
	private int authority;
	private String password;
	private String imagesrc;
	private String email;
	private String name;
	private int gender;
	private String hobby;
	private Date birthday;
	private String start_ip;
	private Date start_day;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getActivitypoint() {
		return activitypoint;
	}
	public void setActivitypoint(int activitypoint) {
		this.activitypoint = activitypoint;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getImagesrc() {
		return imagesrc;
	}
	public void setImagesrc(String imagesrc) {
		this.imagesrc = imagesrc;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getStart_ip() {
		return start_ip;
	}
	public void setStart_ip(String start_ip) {
		this.start_ip = start_ip;
	}
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
}

