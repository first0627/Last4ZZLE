package dto;

public class PartyBossDTO {
	
	private String id;
	private String ott;
	private String ottid;
	private String ottpw;
	
	public PartyBossDTO() {}
	
	public PartyBossDTO(String id, String ott, String ottid, String ottpw) {
		super();
		this.id = id;
		this.ott = ott;
		this.ottid = ottid;
		this.ottpw = ottpw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOtt() {
		return ott;
	}
	public void setOtt(String ott) {
		this.ott = ott;
	}
	public String getOttid() {
		return ottid;
	}
	public void setOttid(String ottid) {
		this.ottid = ottid;
	}
	public String getOttpw() {
		return ottpw;
	}
	public void setOttpw(String ottpw) {
		this.ottpw = ottpw;
	}
	
	

}
