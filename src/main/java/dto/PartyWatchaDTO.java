package dto;

public class PartyWatchaDTO {
	private int seq;
	private String boss;
	private String m1;
	private String m2;
	private String m3;
	
	public PartyWatchaDTO() {}
	public PartyWatchaDTO(int seq, String boss, String m1, String m2, String m3) {
		super();
		this.seq = seq;
		this.boss = boss;
		this.m1 = m1;
		this.m2 = m2;
		this.m3 = m3;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public String getM1() {
		return m1;
	}
	public void setM1(String m1) {
		this.m1 = m1;
	}
	public String getM2() {
		return m2;
	}
	public void setM2(String m2) {
		this.m2 = m2;
	}
	public String getM3() {
		return m3;
	}
	public void setM3(String m3) {
		this.m3 = m3;
	}
	
	

}
