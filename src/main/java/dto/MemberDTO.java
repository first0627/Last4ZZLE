package dto;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pw;
	private String nickname;
	private Date join_date;
	private String netflix;
	private String watcha;
	private String tving;
	private String disney;
	
	public MemberDTO() {}
	public MemberDTO(String id, String pw, String nickname, Date join_date, String netflix, String watcha, String tving,
			String disney) {
		super();
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.join_date = join_date;
		this.netflix = netflix;
		this.watcha = watcha;
		this.tving = tving;
		this.disney = disney;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public String getNetflix() {
		return netflix;
	}
	public void setNetflix(String netflix) {
		this.netflix = netflix;
	}
	public String getWatcha() {
		return watcha;
	}
	public void setWatcha(String watcha) {
		this.watcha = watcha;
	}
	public String getTving() {
		return tving;
	}
	public void setTving(String tving) {
		this.tving = tving;
	}
	public String getDisney() {
		return disney;
	}
	public void setDisney(String disney) {
		this.disney = disney;
	}
	
}
